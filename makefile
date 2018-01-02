com:
	iverilog-vpi hello.c
	iverilog -o hello.vpp hello_pli.v
	vvp -M. -m hello hello.vpp
sim:
	gtkwave hello.vcd
clean:
	@rm -rf *.vpi *.vcd *.vpp *.o
