CC := riscv32-unknown-elf-gcc
OBJCOPY := riscv32-unknown-elf-objcopy
OBJDUMP := riscv32-unknown-elf-objdump
PYTHON := python

CFLAGS := -O2 -static -std=gnu99 -fno-common -fno-builtin-printf -I. -I../yardimci
LDFLAGS := -nostartfiles -T ../yardimci/env/terra_linker.ld
ARCH_FLAGS := -march=rv32imaf_zicsr_zba_zbb_zbc_zbs -mabi=ilp32f -mcmodel=medany
DEFINES := -DPREALLOCATE=1 -DSTACK_SIZE=32768
START_SCRIPT := ../yardimci/env/crt.S
SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)

demo := demo

.PHONY: all clean

all: $(demo) $(demo).bin $(demo).hex $(demo).asm $(demo)-clean


$(demo): $(OBJS)
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(ARCH_FLAGS) $(DEFINES) $(LDFLAGS) $(EXTRA_LDFLAGS) $(START_SCRIPT) $^ -o $@.riscv -lgcc -lm

%.o: %.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(ARCH_FLAGS) $(DEFINES) -c $< -o $@

$(demo).bin: $(demo)
	$(OBJCOPY) -O binary $<.riscv $@

$(demo).hex: $(demo).bin
	$(PYTHON) ../yardimci/bin_to_hex.py --binfile=$<

$(demo).asm: $(demo).riscv
	$(OBJDUMP) -D $< > $@

$(demo)-clean:
	rm -f $(demo).bin

clean:
	rm -f $(demo) $(OBJS) $(demo).bin $(demo).hex $(demo).hexgroup $(demo).riscv $(demo).asm
