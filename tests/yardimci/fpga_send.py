# kasirga gok reposundan alinmistir
import serial
import argparse
import os
import time
 
parser = argparse.ArgumentParser(description='Toprak FPGA Programlayici')

parser.add_argument('hex', help='buyruk belleginin doldurulacagi veriyi iceren dosya')
parser.add_argument('--port' , '-p', default='/dev/ttyUSB1' , help='serial port\'un ismi')

args = parser.parse_args()

serial_port = args.port 
hex = args.hex

ser = serial.Serial(serial_port, 57600)

hex_f = open(hex)

hex_arr = hex_f.readlines()

rem = len(hex_arr) % 4
if rem != 0:
    for _ in range(4-rem):
        hex_arr.append("00000000")


hex_bytes = (len(hex_arr))

hex_data = hex_bytes.to_bytes(4, 'big')

ser.write(bytes("TEKNOFEST", encoding="ASCII"))

for i in range(4):
    ser.write(bytes([hex_data[i]]))

print("Buyruk bellegini gonderiyorum... [" + str(hex_bytes) + " bayt]")

adim = 0
for line in hex_arr:
    hex_str = line[:8]
    hex_data = bytearray.fromhex(hex_str)
    for i in range(4):
        ser.write(bytes([hex_data[i]]))
    adim += 1
    print("%" + "{:.2f}".format((adim/hex_bytes) * 100) + " bitti", end = "\r", flush = True)

print("Programladim")
