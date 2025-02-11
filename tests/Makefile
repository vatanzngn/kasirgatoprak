SRC_DIR := .
XLEN := 32

YARDIMCI_DIR := $(SRC_DIR)/yardimci
TERRA_DIR := $(YARDIMCI_DIR)

# RISC-V tests
RISCV_TESTS_DIR := riscv-tests
ISA_DIR := $(RISCV_TESTS_DIR)/isa
ISA_MAKE_KONUM := $(ISA_DIR)/Makefile
ISA_MAKEFILE := riscv-tests.mk

# Coremark
COREMARK_DIR := $(SRC_DIR)/coremark
CMARK_MAKE_KONUM := $(COREMARK_DIR)/Makefile
COREMARK_MAKEFILE := c.mk

DHRY_DIR := $(SRC_DIR)/dhrystone
DHRY_MAKE_KONUM := $(DHRY_DIR)/Makefile
DHRY_MAKEFILE := c.mk

WHET_DIR := $(SRC_DIR)/whetstone
WHET_MAKE_KONUM := $(WHET_DIR)/Makefile
WHET_MAKEFILE := c.mk

# Kasirga
KASIRGA_DIR := $(SRC_DIR)/kasirga
KASIRGA_MAKE_KONUM := $(KASIRGA_DIR)/Makefile
KASIRGA_MAKEFILE := c.mk

#rx test
RX_DIR := $(SRC_DIR)/rx_test
RX_MAKE_KONUM := $(RX_DIR)/Makefile
RX_MAKEFILE := c.mk

# Terra
TERRA_H := $(TERRA_DIR)/terra.h
TERRA_C := $(TERRA_DIR)/terra.c
# EE_Printf
EE_PRINTF_H := $(TERRA_DIR)/ee_printf.h
EE_PRINTF_C := $(TERRA_DIR)/ee_printf.c
# Printf
PRINTF_H := $(TERRA_DIR)/printf.h
PRINTF_C := $(TERRA_DIR)/printf.c

all: coremark_compile kasirga dhrystone_compile isa_run_makefile 

isa_init_submodule:
	git submodule update --init --recursive $(RISCV_TESTS_DIR)

isa_replace_makefile: isa_init_submodule
	cp $(YARDIMCI_DIR)/$(ISA_MAKEFILE) $(ISA_MAKE_KONUM)

isa_run_makefile: isa_replace_makefile
	$(MAKE) -C $(ISA_DIR) -f ../$(YARDIMCI_DIR)/$(ISA_MAKEFILE) XLEN=$(XLEN) EXTRA_LDFLAGS="../$(TERRA_C) ../$(EE_PRINTF_C) ../$(PRINTF_C)"

kasirga:
	$(MAKE) -C $(KASIRGA_DIR) -f ../$(YARDIMCI_DIR)/$(KASIRGA_MAKEFILE) -B EXTRA_LDFLAGS="../$(TERRA_C)" demo="kasirga"

coremark_compile: 
	$(MAKE) -C $(COREMARK_DIR) -f ../$(YARDIMCI_DIR)/$(COREMARK_MAKEFILE) -B EXTRA_LDFLAGS="../$(TERRA_C) ../$(PRINTF_C)" demo="coremark"

dhrystone_compile:
	$(MAKE) -C $(DHRY_DIR) -f ../$(YARDIMCI_DIR)/$(DHRY_MAKEFILE) -B EXTRA_LDFLAGS="../$(TERRA_C) ../$(PRINTF_C)" demo="dhrystone"
  
whetstone_compile:
	$(MAKE) -C $(WHET_DIR) -f ../$(YARDIMCI_DIR)/$(WHET_MAKEFILE) -B EXTRA_LDFLAGS="../$(TERRA_C) ../$(PRINTF_C)" demo="whetstone"

rx_compile:
	$(MAKE) -C $(RX_DIR) -f ../$(YARDIMCI_DIR)/$(RX_MAKEFILE) -B EXTRA_LDFLAGS="../$(TERRA_C) ../$(PRINTF_C)" demo="rx_test"

clean:
	$(MAKE) -C $(KASIRGA_DIR) -f ../$(YARDIMCI_DIR)/$(KASIRGA_MAKEFILE) clean
	$(MAKE) -C $(COREMARK_DIR) -f ../$(YARDIMCI_DIR)/$(COREMARK_MAKEFILE) clean
	$(MAKE) -C $(DHRY_DIR) -f ../$(YARDIMCI_DIR)/$(DHRY_MAKEFILE) clean
	$(MAKE) -C $(WHET_DIR) -f ../$(YARDIMCI_DIR)/$(WHET_MAKEFILE) clean
	$(MAKE) -C $(ISA_DIR) -f ../$(YARDIMCI_DIR)/$(ISA_MAKEFILE) clean

.PHONY: all isa_init_submodule isa_replace_makefile isa_run_makefile kasirga coremark_compile dhrystone_compile clean

