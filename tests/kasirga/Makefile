RISCVTYPE = riscv32-unknown-elf
CC = $(RISCVTYPE)-gcc

LINKER_SCRIPT ?= ../yardimci/env/terra_linker.ld
CFLAGS ?= -O2 -static -I. -std=gnu99 -fno-common -fno-builtin-printf  -nostartfiles -lm -lgcc -T $(LINKER_SCRIPT) -march=rv32imafd_zicsr_zba_zbb_zbc_zbs -mabi=ilp32d -mcmodel=medany -DPREALLOCATE=1

demo_patterns=$(shell find *.c -maxdepth 0 -type f)
demo-targets=$(demo_patterns:%=%)
$(demo-targets):
	$(CC) $(CFLAGS) *.c -o $*.riscv
	$(RISCVTYPE)-objdump -D $*.riscv > $*_assembly.txt
	$(RISCVTYPE)-objcopy -O binary $*.riscv $*.bin
	python ../yardimci/bin_to_hex.py --binfile=$*.bin
	rm *.bin
	
.PHONY: clean
clean:
	rm -f $(OUTFILE) $(OBJS) $(OPATH)*.log *.info $(OPATH)index.html $(PORT_CLEAN) *.o *.s *.riscv *.bin *.hex *.vh *.coe *.txt *.hex
