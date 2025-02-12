set ABS_TOP                         /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5
set TOP                            z1top
set FPGA_PART                      xc7z020clg400-1
set_param general.maxThreads       4
set_param general.maxBackupLogs    0
set RTL { /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/button_parser.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/debouncer.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/edge_detector.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/fifo.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/fixed_length_piano.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/mem_controller.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/memory.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/piano_scale_rom.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/synchronizer.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/uart.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/uart_receiver.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/uart_transmitter.v /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/z1top.v }
set CONSTRAINTS { /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab5/src/z1top.xdc }
