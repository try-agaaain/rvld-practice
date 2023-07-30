#!/bin/bash
mkdir  -p out
cat <<EOF | riscv64-linux-gnu-gcc -o out/testelf.out -c -xc -
#include <stdio.h>

int main(void) {
    printf("Hello, World\n");
    return 0;
}
EOF

./rvld out/testelf.out