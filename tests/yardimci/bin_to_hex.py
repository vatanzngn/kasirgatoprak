import argparse
import os
from itertools import islice

def pad_data(data):
    padding = len(data) % 4
    if padding != 0:
        return data + b'\x00' * (4 - padding)
    return data

def convert_bin_to_hex(binfile, maxlimit=1000000):
    with open(binfile, "rb") as f:
        binData = pad_data(f.read())
    
    assert len(binData) < 4*maxlimit, f"Binary file too large. Max size: {4*maxlimit} bytes"
    print(f"Binary data size: {len(binData)} bytes")

    hexFileName = os.path.splitext(binfile)[0] + ".hex"
    
    with open(hexFileName, 'w') as hexFile:
        for i in islice(range(len(binData) // 4), maxlimit):
            w = binData[4*i : 4*i+4]
            hexFile.write(f"{w[3]:02x}{w[2]:02x}{w[1]:02x}{w[0]:02x}\n")

    with open(hexFileName, 'r') as hexFile:
        hexData = hexFile.readlines()
        with open(hexFileName + "group", 'w') as hexFileGroup:
            for i in range(len(hexData) // 4):
                hexFileGroup.write(hexData[4*i+3].strip())
                hexFileGroup.write(hexData[4*i+2].strip())
                hexFileGroup.write(hexData[4*i+1].strip())
                hexFileGroup.write(hexData[4*i].strip())
                hexFileGroup.write('\n')

def main():
    parser = argparse.ArgumentParser(description='Get static hex code from riscv binary file.')
    parser.add_argument('--binfile', '-bf', default='coremark_baremetal.bin', 
                        help='specify riscv binary file that is obtained by gcc objcopy')
    
    args = parser.parse_args()
    
    try:
        convert_bin_to_hex(args.binfile)
        print(f"Conversion complete. Output file: {os.path.splitext(args.binfile)[0]}.hex")
    except FileNotFoundError:
        print(f"Error: File {args.binfile} not found.")
    except AssertionError as e:
        print(f"Error: {str(e)}")
    except Exception as e:
        print(f"An unexpected error occurred: {str(e)}")

if __name__ == "__main__":
    main()