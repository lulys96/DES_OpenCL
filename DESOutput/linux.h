#ifndef NATIVE_INCLUDE_1_INCLUDED
#define NATIVE_INCLUDE_1_INCLUDED

// Native functions to be used with the Zigbee transmitter

#include <stdio.h>
#include <stdlib.h>
#include "ORCC_Header.h"

// opt is defined in util.c
extern options_t *opt;

void close_input() ;

void close_output() ;

void close_all() ;

void source_init() ;

int source_sizeOfFile() ;

unsigned char source_readByte() ;

void throw_away(int value) ;

void print_cyclecount() ;


#endif
