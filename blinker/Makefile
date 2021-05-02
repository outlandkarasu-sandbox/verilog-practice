# Makefile for blinker

OUT_DIR=.
OUT=$(OUT_DIR)/blinker.exe
SRCS=blinker.v
TEST_SRCS=blinker_tb.v
WAVE_FILE=blinker.vcd

IVERILOG=iverilog
VVP=vvp
APIO=apio

$(WAVE_FILE): $(OUT)
	$(VVP) $(OUT)

$(OUT): $(SRCS) $(TEST_SRCS)
	$(IVERILOG) -o $@ $^

.PHONY: synth
synth: $(SRCS)
	$(APIO) build -v

.PHONY: clean
clean:
	- $(APIO) clean
	- rm -rf $(OUT) $(WAVE_FILE)

