#include "terra.h"
#include "printf.h"

void main()
{
    uart_aktiflestir();
    printf("bir seyler yaz! (stackte calisiyor 100 karakter)\n");

    char str[100];
    int i = 0;
    char c = ' ';
    do {
        c = uart_char_oku();
        if (c >= 97 && c <= 122)
            str[i] = (c - 32);
        else
            str[i] = c;
        // uart_char_yolla(str[i]);
       // printf("%d\n", str[i]);
        i++;
    }while (c != 13);
    str[i] = '\0';

    printf("buyuk harfli hali: %s\n", str);
    return;
}