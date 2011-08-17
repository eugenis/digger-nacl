#!/bin/bash

set -e

rm -f app/digger-x86_32.nexe app/digger-x86_64.nexe

make -f Makefile.sdl clean
NACL_BITS=   make -f Makefile.sdl && mv digger app/digger_x86-32.nexe

make -f Makefile.sdl clean
NACL_BITS=64 make -f Makefile.sdl && mv digger app/digger_x86-64.nexe
