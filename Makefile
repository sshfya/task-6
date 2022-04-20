#------------------------------ Project Configuration -----------------------------
# C compiler

C_C    = gcc

# compiler options

C_FLAGS   = -Wall -Wextra -Werror -g -m32

# source C files

C_SOURCES   = integral.c root.c test.c 

# assembly compiler

ASM_C    = nasm

# compiler options

ASM_FLAGS   = -f elf

# source assembly files

ASM_SOURCES  = function1.asm function2.asm function3.asm

# Program Name

EXECUTABLE   = project

#------------------------------ Project Configuration -----------------------------

C_OBJECTS  = $(C_SOURCES:.c=.o)
ASM_OBJECTS  = $(ASM_SOURCES:.asm=.o)
.PHONY: all clean
all: $(EXECUTABLE)
$(EXECUTABLE): $(ASM_OBJECTS) $(C_OBJECTS)
	@$(C_C) $(C_FLAGS)  -o $@  $(ASM_OBJECTS) $(C_OBJECTS) -lm
	@echo "\n\nThe program is compiled and ready to install using the command \"sudo make install\" or run with the command ./$(EXECUTABLE) [options].\n"
%.o: %.c
	@$(C_C) $(C_FLAGS) -c $< -o $@
%.o: %.asm
	@$(ASM_C) $(ASM_FLAGS)  $< -o $@
clean:
	@rm -rf *.o
