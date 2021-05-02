# Makefile for blinker

OUT_DIR=.
OUT=$(OUT_DIR)/blinker.exe
SRCS=blinker.sv
TEST_SRCS=blinker_test.sv
WAVE_FILE=blinker.vcd

IVERILOG=iverilog
VVP=vvp

$(WAVE_FILE): $(OUT)
	$(VVP) $(OUT)

$(OUT): $(SRCS) $(TEST_SRCS)
	$(IVERILOG) -o $@ $^

.PHONY: clean
clean:
	- rm -rf $(OUT) $(WAVE_FILE)

