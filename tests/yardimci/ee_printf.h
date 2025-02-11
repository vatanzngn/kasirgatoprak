/*
Copyright 2018 Embedded Microprocessor Benchmark Consortium (EEMBC)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
#pragma once
#include <stdarg.h>
#include <stdint.h>
#include "terra.h"

#define ZEROPAD   (1 << 0) /* Pad with zero */
#define SIGN      (1 << 1) /* Unsigned/signed long */
#define PLUS      (1 << 2) /* Show plus */
#define SPACE     (1 << 3) /* Spacer */
#define LEFT      (1 << 4) /* Left justified */
#define HEX_PREP  (1 << 5) /* 0x */
#define UPPERCASE (1 << 6) /* 'ABCDEF' */

#define is_digit(c) ((c) >= '0' && (c) <= '9')

static char *    digits       = "0123456789abcdefghijklmnopqrstuvwxyz";
static char *    upper_digits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
static uint32_t strnlen(const char *s, uint32_t count);

char* buff = (char*) 0x80010000;

int ee_printf(const char *fmt, ...);
