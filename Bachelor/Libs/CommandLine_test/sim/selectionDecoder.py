#! /usr/bin/python3
import sys
import os
import math
                                                                   # definitions
COMMAND_BIT_NB = 8
COMMAND_LENGTH = 20  # together with parameter
COMMANDS = [
    'version',
    'sampling',
    'relays',
    "memRead",
    "memWrite"
]
INDENT = '  '
                                                             # choose file names
binary_filespec = sys.argv[0]
(base_file_spec, extension) = os.path.splitext(binary_filespec)
binary_filespec = base_file_spec + '.txt'
hex_filespec = base_file_spec + '.hex'
print('Writing commands to :')
print(INDENT + binary_filespec)
print(INDENT + hex_filespec)
print('Commands :')
                                                            # write file content
BIANRY_ROM_LINE_FORMAT = "{0:0"+"{0:d}".format(COMMAND_BIT_NB)+"b}"
HEX_BYTE_COUNT = format(COMMAND_LENGTH, "02X")
HEX_RECORD_TYPE = '00'
binary_file = open(binary_filespec, 'w')
hex_file = open(hex_filespec, 'w')
for commandIndex in range(len(COMMANDS)):
    command = COMMANDS[commandIndex]
    sys.stdout.write(INDENT + command + "\n")
    command_address = commandIndex*COMMAND_LENGTH
    hex_address = format(command_address, "04X")
    hex_line = ':' + HEX_BYTE_COUNT + hex_address + HEX_RECORD_TYPE
    hex_checksum = COMMAND_LENGTH + \
        command_address // 2**8   + \
        command_address % 2**8
                                                             # build ROM content
    for index in range(COMMAND_LENGTH):
        if index < len(command):
            character = command[index]
        elif index == len(command):
            # if index == 0:
            #     character = chr(2**COMMAND_BIT_NB-1)
            # else:
            character = "\r"
        else:
            character = chr(0)
                                                     # write binary text command
        binary_file.write(BIANRY_ROM_LINE_FORMAT.format(ord(character)) + "\n")
                                                          # build intel hex line
        hex_line = hex_line + format(ord(character), "02X")
        hex_checksum = hex_checksum + ord(character)
                                                       # write intel hex command
    hex_line = hex_line + format(2**8-(hex_checksum % 2**8), "02X")
#    hex_line = hex_line + format(hex_checksum % 2**8, "02X")
    hex_file.write(hex_line + "\n")
                                                          # pad binary text file
line_nb = COMMAND_LENGTH * len(COMMANDS)
print("Wrote {} lines for binary file".format(line_nb))
rom_address_bit_nb = int(math.ceil(math.log(line_nb, 2)))
file_line_nb = 2**rom_address_bit_nb
print(INDENT + "Padding to {} lines ({} address bits)"\
    .format(file_line_nb, rom_address_bit_nb))
for index in range(file_line_nb - line_nb):
    binary_file.write(BIANRY_ROM_LINE_FORMAT.format(2**COMMAND_BIT_NB-1) + "\n")
binary_file.close()
                                                            # end intel hex file
hex_file.write(':' + '00' + '0000' + '01' + 'FF' "\n")
hex_file.close()
                                                              # display generics
print('')
print('Generic parameters:')
print(INDENT + "commandNb = {}".format(len(COMMANDS)))
print(INDENT + "commandLength = {}".format(COMMAND_LENGTH))
