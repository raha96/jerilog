
input_nets = {'BUF': ['Y'],
              'NOT': ['A'],
              'NAND': ['A', 'B'],
              'NOR': ['A', 'B'],
              'DFF': ['C', 'D']}
def list_replace(list_name, first, second):
    for i in range(len(list_name)):
        if list_name[i] == first:
            list_name[i] = second
    return list_name

def insert_fanout (json, fanout_name):
    for module in json:
        fanout_dict = {}
        net_used = {}
        for cell in json[module]['cells']:
            for conn in json[module]['cells'][cell]['connections']:
                if (conn in input_nets[json[module]['cells'][cell]['type']]):
                    for bit in json[module]['cells'][cell]['connections'][conn]:
                        if bit in fanout_dict:
                            fanout_dict[bit] += 1
                            #print(bit)
                            net_used[bit].append((cell, conn))      # assuming each net is used only once in a cell
                        else:
                            fanout_dict[bit] = 1
                            net_used[bit] = [(cell, conn)]
        max_net = 0
        for net in json[module]['netnames']:
            bits = json[module]['netnames'][net]['bits']
            for bit in bits:
                max_net = max(max_net, bit)

        fanout_num = 0
        #print(f'max: {max_net}')
        #print (f'{len(fanout_dict)}')

        defined_nets = []
        for definition in json[module]['netnames']:
            for bit in json[module]['netnames'][definition]['bits']:
                defined_nets.append(bit)
        
        for net in fanout_dict:
            #print(net)
            if not (net in defined_nets):
                #print (f'fanout: {net}')
                json[module]['netnames'][f'__ADDED_{net}_'] = {'hide_name': 1,
                                                               'bits': [net]}
            if fanout_dict[net] > 1:
                wires = []
                #print(f'fan: {net}')
                for i in range(fanout_dict[net]):
                    max_net += 1
                    #wires.append(max_net)
                    cfan = net_used[net][i]
                    #print(f'{cfan}: {max_net}')
                    bits = json[module]['cells'][cfan[0]]['connections'][cfan[1]]
                    json[module]['cells'][cfan[0]]['connections'][cfan[1]] = list_replace(bits, net, max_net)
                    json[module]['netnames'][f'_FAN_{max_net}_'] = {'hide_name': 1,
                                                                    'bits': [max_net]}
                    wires.append(max_net)
                json[module]['cells'][f'_{fanout_name}_{fanout_num}_'] = {'hide_name': 1, 
                                                                          'type': fanout_name,
                                                                          'connections':
                                                                              {'in': [net],
                                                                               'out': wires}}
    
