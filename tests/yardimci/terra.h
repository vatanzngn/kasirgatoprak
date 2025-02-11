#pragma once
#include <stdint.h>
#include "encoding.h"

#define UART_CTRL   ((volatile uint32_t*)0x20000000)
#define UART_STATUS ((volatile uint32_t*)0x20000004)
#define UART_RDATA  ((volatile uint32_t*)0x20000008)
#define UART_WDATA  ((volatile uint32_t*)0x2000000C)

#define TX_AKTIF       (1 << 0)
#define RX_AKTIF       (1 << 1)

#define SAAT_FREKANSI  35000000  // 30 MHz
#define BAUD_RATE   1200000
#define BAUD_DIV    ((SAAT_FREKANSI / BAUD_RATE)-1)

#define TX_DOLU     (1 << 0)
#define RX_BOS      (1 << 3)
typedef enum
{
    HPM_EXECUTE_STALL = 0,
    HPM_L1V_STALL = 1,
    HPM_L1B_STALL = 2,
    HPM_GS_MPRED = 3
} hpm_type;

void uart_aktiflestir();

void uart_char_yolla(char c);

char uart_char_oku();

void uart_str_yolla(const char* str);

uint64_t hpm_oku(hpm_type tur);
int retired_oku();
void handle_trap();

void _putchar(char character);
