import json
from fanout import insert_fanout

def define_length (bits):
    output = ''
    if (bits > 1):
        output = f'[{bits-1}:0] '
    return output

def duplicates (lst):
    buf = list(dict.fromkeys(lst))
    #print(lst)
    return buf

def split_cell (wire_name):
    # split w[i] to ('w', i)
    tokens = wire_name.split('[')
    return (strip(tokens[0]), strip(tokens[1].replace(']', '')))

def escape_name (wire_name):
    wire_name = wire_name.replace('.', '_')
    return wire_name

def arbite (name1, name2):
    #choose between two names for a bit with aliases
    if name1.find(name2) != -1:
        return name2
    if name2.find(name1) != -1:
        return name1
    _1 = 0
    _2 = 0
    for char in name1:
        if char == '_':
            _1 += 1
    for char in name2:
        if char == '_':
            _2 += 1
    if (_1 > _2):
        return name2
    return name1

raw_json_file = open('synth6.json', 'r')
raw_json = raw_json_file.read()
raw_json_file.close()

tree = json.loads(raw_json)

tree = tree['modules']

insert_fanout(tree, 'FANOUT')

debug_output = open('out.json', 'w')
debug_output.write(json.dumps(tree, indent=1))
debug_output.close()

file_string = ''

for module in tree:
    port_string = ''
    for port in tree[module]['ports']:
        port_string += f', {port}'
    port_string = port_string[2:]
    module_string = f'module {module} ({port_string});\n'
    module_string += '  // jerilog internal declarations\n'
    module_string += '  supply0 _jerilog_0_;\n'
    module_string += '  supply1 _jerilog_1_;\n\n'

    # first pass: define ports
    # what happens to output regs ??? -> seems like there isn't any
    #TODO: implement pio buffers
    ports_list = []
    ports_list_reg = []
    module_string_ports = ''
    module_string_port_buffers = ''
    for port in tree[module]['ports']:
        cport = tree[module]['ports'][port]
        port = escape_name(port)
        ports_list.append(port)

        buffered_port = f'_{cport["direction"]}_{port}_'
        
        port_string = f'  {cport["direction"]} '
        port_string += define_length(len(cport['bits']))
        port_string += f'{port};'
        
        module_string_ports += f'{port_string}\n'
    module_string_ports += '\n'

    # first path: declare wires
    #TODO: fix names
    #NOTE: all i/os are redefined as wires
    module_string_wires = ''
    net_dict = {0 : ('_jerilog_0_', -1), 1 : ('_jerilog_1_', -1)}
    wire_bits = {}
    internal_wire = 0
    for wire in tree[module]['netnames']:
        cwire = tree[module]['netnames'][wire]['bits']
        wire_string = '  wire '
        num_bits = len(cwire)
        wire_string += define_length(num_bits)
        if (wire[0] == '$'):
            # internal wire; fix name
            wire = f'_w{internal_wire}_'
            internal_wire += 1

        wire = escape_name(wire)
        is_duplicate = False
        wire_bits[wire] = num_bits
            
        if (num_bits > 1):
            for i in range(num_bits):       # assuming MSB first. TODO: validate
                new_name = (wire, num_bits - i - 1)
                if not (cwire[i] in net_dict):
                    #new_name = arbite(new_name[0], net_dict[cwire["bits"][i]][0]) #choose between new and old name
                    #new_name = (new_name, i)
                    net_dict[cwire[i]] = new_name
                else:
                    is_duplicate = True
        else:
            new_name = (wire, -1)
            if not (cwire[0] in net_dict):
                #new_name = arbite(new_name[0], net_dict[cwire["bits"][0]][0])
                #new_name = (new_name, -1)
                net_dict[cwire[0]] = new_name
            else:
                is_duplicate = True

        wire_string += f'{wire} ;\n'
        if not(is_duplicate):
            module_string_wires += wire_string
    module_string_wires += '\n'

    # first pass: declare gates
    module_string_cells = ''
    internal_cell = {}
    for cell in tree[module]['cells']:
        ccell = tree[module]['cells'][cell]
        cell_name = cell
        cell_type = ccell['type']
        
        if ('hide_name' in ccell):
            if (ccell['hide_name'] == 1):
                if not (cell_type in internal_cell):
                    internal_cell[cell_type] = 0
                cell_name = f'_{ccell["type"]}_{internal_cell[cell_type]}_'
                internal_cell[cell_type] += 1

        cell_string = f'  {cell_type} {cell_name} (\n'

        fff = open('dump', 'w')
        fff.write(json.dumps(net_dict, indent=1))
        fff.close()
        
        for conn in ccell['connections']:
            net_list = [('', [])]     # stores list of nets. ex: ['w[0]', 'w[1]', x] -> [('w', [0, 1]), ('x', -1)]
            current_conn_inds = []
            current_conn_name = ''
            direction = 0           # 1 denotes incrementing indices, -1 denotes decrementing
            nets = ccell['connections'][conn]
            #print (f'{cell}/{conn}\n')
            #print(nets)
            nets.append(0)
            for item in nets:
                #if (item == 271):
                #    print (item)
                current_conn = net_dict[item]
                if (len(current_conn_inds) == 1):           # special cases of _jerilog_0_ and _jerilog_1_
                    if current_conn_inds[0] == -1:
                        net_list.append((current_conn_name, [-1]))
                        current_conn_inds = []
                if (len(current_conn_inds) == 0):           # initialize
                    current_conn_name = current_conn[0]
                    current_conn_inds = [current_conn[1]]
                elif current_conn_name == current_conn[0]:
                    if (len(current_conn_inds) == 1):       # append and set direction for the ones to come (i.e. 3, 4, [5...] or 4, 3, [2...])
                        index = current_conn_ind[0]
                        if (current_conn[1] == index + 1) or (current_conn[1] == index - 1):
                            current_conn_inds.append(current_conn[1])
                            direction = current_conn[1] - index
                        else:                               # changed indices; reset
                            net_list.append((current_conn_name, current_conn_inds))
                            current_conn_name = current_conn[0]
                            current_conn_inds = [current_conn[1]]
                    else:
                        last_conn = current_conn_ind[len(current_conn_ind) - 1]
                        if (current_conn[1] == last_conn + direction):      # append
                            current_conn_inds.append(current_conn[1])
                        else:                                               # changed indices; reset
                            net_list.append((current_conn_name, current_conn_inds))
                            current_conn_name = current_conn[0]
                            current_conn_inds = [current_conn[1]]
                else:                                                       # changed wire name; reset
                    net_list.append((current_conn_name, current_conn_inds))
                    current_conn_name = current_conn[0]
                    current_conn_inds = [current_conn[1]]

            # now that we have compacted list of wires, we can generate the corresponding string

            wire_string = ''
            num_its = 0         # keep track of loop iterations to see whether we need to concat
            #print(net_list)
            for item in net_list:
                #print (item)
                if (item[0] != ''):
                    if len(item[1]) == 1:
                        if item[1][0] == -1:
                            wire_string += ', ' + item[0]
                        else:
                            wire_string += f', {item[0]}[{item[1][0]}]'
                    else:
                        if len(item[1]) == wire_bits[item[0]]:      #assign all bits of a multi-bit wire
                            wire_string += ', ' + item[0]
                        else:
                            wire_string += f', {item[0]}[{item[1][0]}:{item[1][len(item[1])-1]}]'
                    num_its += 1
            if num_its == 1:
                wire_string = wire_string[2:]
            else:
                wire_string = '{' + wire_string[2:0] + '}'
            
            # add connection to cell string
            cell_string += f'    .{conn}({wire_string}), \n'
        cell_string  = cell_string[:len(cell_string) - 3] + '\n  );\n'
        module_string_cells += cell_string
        #print (f'{cell_name}: {wire_string}')
    
    #print(module_string)

    #TODO: fix output regs
    #TODO: remove repetitive output definitions
    #fix assign statements -> done - based on bit-numbers

    attributes = tree[module]['attributes']
    if 'cells_not_processed' in attributes:
        print(f'Note: {module}.cells_not_processed={attributes["cells_not_processed"]})')

        
    #print (f'\nBegin module {module}')
    #print(' Attributes:')
    #print(' Ports:')
    #for port in tree[module]['ports']:
    #    print(port)
    #    print(tree[module]['ports'][port])
    #print(' Cells:')
    #for cell in tree[module]['cells']:
    #    print(cell)
    #print(' Net names:')
    #for net in tree[module]['netnames']:
    #    print(net)

    module_string += module_string_ports + module_string_wires + module_string_cells
    module_string += 'endmodule\n\n\n'

    file_string += module_string

output_verilog = open('synth6.1.v', 'w')
output_verilog.write(file_string)
output_verilog.close()

#print(tree)

