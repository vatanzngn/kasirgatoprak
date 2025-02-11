import random
def rastgele_32_bit_hex_doldur(n, cikacak_dosya_adi):
    with open(cikacak_dosya_adi, "w") as f:
        for i in range(n):
            f.write(format(random.getrandbits(32), '08x') + "\n")

rastgele_32_bit_hex_doldur(8192, "test_ram.hex")