#!/bin/bash

> tcpTahoe.txt
> tcpReno.txt
> tcpNewreno.txt
> tcpSack.txt
> tcpVegas.txt
echo "Iniciando Simulacao..."
#============================================================
# 1 Salto
ns tcp-adhoc-sim.tcl -nn 2 
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "1 $(awk -v x=_1_ -f throughput.awk info.txt)" >> tcpTahoe.txt
#============================================================
# 2 Saltos
ns tcp-adhoc-sim.tcl -nn 3 
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "2 $(awk -v x=_2_ -f throughput.awk info.txt)" >> tcpTahoe.txt
#============================================================
# 3 Salto
ns tcp-adhoc-sim.tcl -nn 4 
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "3 $(awk -v x=_3_ -f throughput.awk info.txt)" >> tcpTahoe.txt
#============================================================
# 4 Salto
ns tcp-adhoc-sim.tcl -nn 5 
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "4 $(awk -v x=_4_ -f throughput.awk info.txt)" >> tcpTahoe.txt
#============================================================
# 5 Salto
ns tcp-adhoc-sim.tcl -nn 6 
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "5 $(awk -v x=_5_ -f throughput.awk info.txt)" >> tcpTahoe.txt
#============================================================
# 6 Salto
ns tcp-adhoc-sim.tcl -nn 7 
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "6 $(awk -v x=_6_ -f throughput.awk info.txt)" >> tcpTahoe.txt
#============================================================

#============================================================
# 1 Salto
ns tcp-adhoc-sim.tcl -nn 2 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "1 $(awk -v x=_1_ -f throughput.awk info.txt)" >> tcpReno.txt
#============================================================
# 2 Saltos
ns tcp-adhoc-sim.tcl -nn 3 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "2 $(awk -v x=_2_ -f throughput.awk info.txt)" >> tcpReno.txt
#============================================================
# 3 Salto
ns tcp-adhoc-sim.tcl -nn 4 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "3 $(awk -v x=_3_ -f throughput.awk info.txt)" >> tcpReno.txt
#============================================================
# 4 Salto
ns tcp-adhoc-sim.tcl -nn 5 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "4 $(awk -v x=_4_ -f throughput.awk info.txt)" >> tcpReno.txt
#============================================================
# 5 Salto
ns tcp-adhoc-sim.tcl -nn 6 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "5 $(awk -v x=_5_ -f throughput.awk info.txt)" >> tcpReno.txt
#============================================================
# 6 Salto
ns tcp-adhoc-sim.tcl -nn 7 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "6 $(awk -v x=_6_ -f throughput.awk info.txt)" >> tcpReno.txt
#============================================================

#============================================================
# 1 Salto
ns tcp-adhoc-sim.tcl -nn 2 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "1 $(awk -v x=_1_ -f throughput.awk info.txt)" >> tcpNewreno.txt
#============================================================
# 2 Saltos
ns tcp-adhoc-sim.tcl -nn 3 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "2 $(awk -v x=_2_ -f throughput.awk info.txt)" >> tcpNewreno.txt
#============================================================
# 3 Salto
ns tcp-adhoc-sim.tcl -nn 4 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "3 $(awk -v x=_3_ -f throughput.awk info.txt)" >> tcpNewreno.txt
#============================================================
# 4 Salto
ns tcp-adhoc-sim.tcl -nn 5 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "4 $(awk -v x=_4_ -f throughput.awk info.txt)" >> tcpNewreno.txt
#============================================================
# 5 Salto
ns tcp-adhoc-sim.tcl -nn 6 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "5 $(awk -v x=_5_ -f throughput.awk info.txt)" >> tcpNewreno.txt
#============================================================
# 6 Salto
ns tcp-adhoc-sim.tcl -nn 7 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "6 $(awk -v x=_6_ -f throughput.awk info.txt)" >> tcpNewreno.txt
#============================================================

#============================================================
# 1 Salto
ns tcp-adhoc-sim.tcl -nn 2 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "1 $(awk -v x=_1_ -f throughput.awk info.txt)" >> tcpSack.txt
#============================================================
# 2 Saltos
ns tcp-adhoc-sim.tcl -nn 3 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "2 $(awk -v x=_2_ -f throughput.awk info.txt)" >> tcpSack.txt
#============================================================
# 3 Salto
ns tcp-adhoc-sim.tcl -nn 4 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "3 $(awk -v x=_3_ -f throughput.awk info.txt)" >> tcpSack.txt
#============================================================
# 4 Salto
ns tcp-adhoc-sim.tcl -nn 5 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "4 $(awk -v x=_4_ -f throughput.awk info.txt)" >> tcpSack.txt
#============================================================
# 5 Salto
ns tcp-adhoc-sim.tcl -nn 6 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "5 $(awk -v x=_5_ -f throughput.awk info.txt)" >> tcpSack.txt
#============================================================
# 6 Salto
ns tcp-adhoc-sim.tcl -nn 7 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "6 $(awk -v x=_6_ -f throughput.awk info.txt)" >> tcpSack.txt
#============================================================

#============================================================
# 1 Salto
ns tcp-adhoc-sim.tcl -nn 2 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "1 $(awk -v x=_1_ -f throughput.awk info.txt)" >> tcpVegas.txt
#============================================================
# 2 Saltos
ns tcp-adhoc-sim.tcl -nn 3 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "2 $(awk -v x=_2_ -f throughput.awk info.txt)" >> tcpVegas.txt
#============================================================
# 3 Salto
ns tcp-adhoc-sim.tcl -nn 4 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "3 $(awk -v x=_3_ -f throughput.awk info.txt)" >> tcpVegas.txt
#============================================================
# 4 Salto
ns tcp-adhoc-sim.tcl -nn 5 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "4 $(awk -v x=_4_ -f throughput.awk info.txt)" >> tcpVegas.txt
#============================================================
# 5 Salto
ns tcp-adhoc-sim.tcl -nn 6 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "5 $(awk -v x=_5_ -f throughput.awk info.txt)" >> tcpVegas.txt
#============================================================
# 6 Salto
ns tcp-adhoc-sim.tcl -nn 7 -tcp TCP/Vegas
cat tcp-adhoc-sim.tr | grep " tcp " | grep " MAC " > info.txt
echo "6 $(awk -v x=_6_ -f throughput.awk info.txt)" >> tcpVegas.txt
#============================================================

echo "Simulacoes finalizadas!"
echo "Gerando grafico..."
gnuplot -persist <<PLOT
reset
set grid
set xtics 1
set xrange[1:]
set title "TCP throughput"
set xlabel "Número de Saltos"
set ylabel "throughput(Kpbs)"
plot 'tcpTahoe.txt' with linespoints 1 10 t"TCP Tahoe"
rep 'tcpReno.txt' with linespoints 2 11 t"TCP Reno"
rep 'tcpNewreno.txt' with linespoints 3 12 t"TCP NewReno"
rep 'tcpSack.txt' with linespoints 4 13 t"TCP Sack"
rep 'tcpVegas.txt' with linespoints 5 14 t"TCP Vegas"
set terminal png
set output 'graphic.png'
replot
