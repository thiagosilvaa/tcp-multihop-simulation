#====================================================================
#
# Estudo TCP sobre redes multi-hop (ADHOC)
# Authors:
# 
#
#====================================================================

#Variaveis da simulacao
global opt
set opt(chan)       	Channel/WirelessChannel
set opt(prop)       	Propagation/TwoRayGround
set opt(netif)      	Phy/WirelessPhy
set opt(mac)        	Mac/802_11
set opt(ifq)        	Queue/DropTail/PriQueue
set opt(ll)         	LL
set opt(ant)        	Antenna/OmniAntenna
set opt(x)             	670   
set opt(y)              670   
set opt(ifqlen)         50   
set opt(tr)          	tcp-adhoc-sim.tr
set opt(namtr)       	tcp-adhoc-sim.nam
set opt(nn)             2                       
set opt(rp)   		AODV                        
set opt(stop)           130
set opt(tcp)		TCP                           

#Captura parametros de entrada da simulacao
proc getopt {argc argv} {
        global opt
        lappend optlist 
        for {set i 0} {$i < $argc} {incr i} {
                set arg [lindex $argv $i]
                if {[string range $arg 0 0] != "-"} continue
                set name [string range $arg 1 end]
                set opt($name) [lindex $argv [expr $i+1]] 
        }         
}
getopt $argc $argv

#Cria instancia do objeto simulador
set ns   [new Simulator]

#Configuracao e criacao dos arquivos de saida
set tracefd  [open $opt(tr) w]
$ns trace-all $tracefd
set namtracefd [open $opt(namtr) w]
$ns namtrace-all-wireless $namtracefd $opt(x) $opt(y)

#Cria e configura topografia
set topo  [new Topography]
$topo load_flatgrid $opt(x) $opt(y)

#Cria instancia do objeto GOD(General Operations Director)
create-god $opt(nn)

#Configuracao do node 
$ns node-config -adhocRouting $opt(rp) \
                 -llType $opt(ll) \
                 -macType $opt(mac) \
                 -ifqType $opt(ifq) \
                 -ifqLen $opt(ifqlen) \
                 -antType $opt(ant) \
                 -propInstance [new $opt(prop)] \
                 -phyType $opt(netif) \
                 -channel [new $opt(chan)] \
                 -topoInstance $topo \
                 -agentTrace ON \
                 -routerTrace OFF \
                 -macTrace ON \
		 -movementTrace OFF

for {set i 0} {$i < $opt(nn) } { incr i } {
	set node_($i) [$ns node]
	$node_($i) random-motion 0
}

#Configurando posicao dos nos 
for {set i 0} {$i < $opt(nn) } { incr i } {
	$node_($i) set X_ [expr $i*200.0]
	$node_($i) set Y_ 250.0
	$node_($i) set Z_ 0.0
}

#Configura uma conexao tcp entre node_(0) e node_([nn-1])
set tcp [new Agent/$opt(tcp)]
$tcp set class_ 2
set sink [new Agent/TCPSink]
$ns attach-agent $node_(0) $tcp
$ns attach-agent $node_([expr $opt(nn) - 1]) $sink
$ns connect $tcp $sink
$tcp set window_ 32
$tcp set packetSize_ 512
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ns at 5.0 "$ftp start"
$ns at 125.0 "$ftp stop"

#Define tamanho dos nos no nam
for {set i 0} {$i < $opt(nn)} {incr i} {
	$ns initial_node_pos $node_($i) 20
}

#Chamando nos quando a simulacao termina
for {set i } {$i < $opt(nn) } {incr i} {
	$ns at $opt(stop) "$node_($i) reset";
}

#Procedures
proc finish {} {
    	global ns namtracefd tracefd
    	$ns flush-trace
   	close $namtracefd
    	close $tracefd
    	#exec nam tcp-adhoc-sim.nam &
    	exit 0
}

$ns at $opt(stop).1 "puts \"NS EXITING...\" ; $ns halt"
$ns at $opt(stop).0000010 "finish";

puts "Starting Simulation..."
$ns run
