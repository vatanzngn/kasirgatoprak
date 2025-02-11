#include "terra.h"

void _putchar(char character)
{
    uart_char_yolla(character);
}

void uart_aktiflestir()
{
    *UART_CTRL = TX_AKTIF | RX_AKTIF | ((BAUD_DIV) << 16);
    while (uart_char_oku() != 'a');
}

char uart_char_oku()
{
    while (*UART_STATUS & RX_BOS);
    return *UART_RDATA;
}

void uart_char_yolla(char c)
{
    while (*UART_STATUS & TX_DOLU)
        ;
    *UART_WDATA = c;
}

void uart_str_yolla(const char *str)
{
    while (*str)
    {
        uart_char_yolla(*str);
        str++;
    }
}

void handle_trap()
{
    static char error_msg[7] = "Hata!\n";
    uart_str_yolla(error_msg);
}

uint64_t hpm_oku(hpm_type tur)
{
    switch (tur)
    {
    case HPM_EXECUTE_STALL:
        return ((uint64_t)read_csr(0xC83)) << 32 | ((uint64_t)read_csr(0xC03));
    case HPM_L1V_STALL:
        return ((uint64_t)read_csr(0xC84)) << 32 | ((uint64_t)read_csr(0xC04));
    case HPM_L1B_STALL:
        return ((uint64_t)read_csr(0xC85)) << 32 | ((uint64_t)read_csr(0xC05));
    case HPM_GS_MPRED:
        return ((uint64_t)read_csr(0xC86)) << 32 | ((uint64_t)read_csr(0xC06));
    default:
        return 0;
    }
}

int retired_oku()
{
    return rdinstret();
}