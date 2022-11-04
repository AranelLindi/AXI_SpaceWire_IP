#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Nov 04 15:41:41 CET 2022
# SW Build 3526262 on Mon Apr 18 15:47:01 MDT 2022
#
# IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L work -L simprims_ver -L secureip --snapshot fifointerface_rx_tb_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 work.fifointerface_rx_tb work.glbl -log elaborate.log"
xelab --incr --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L work -L simprims_ver -L secureip --snapshot fifointerface_rx_tb_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 work.fifointerface_rx_tb work.glbl -log elaborate.log

