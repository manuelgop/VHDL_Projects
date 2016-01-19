
I
 Attempting to get a license: %s
78*common2
ImplementationZ17-78
?
Feature available: %s
81*common2
ImplementationZ17-81
D
 Attempting to get a license: %s
78*common2
	SynthesisZ17-78
:
Feature available: %s
81*common2
	SynthesisZ17-81
q
+Loading parts and site information from %s
36*device2-
+C:/Xilinx/Vivado/2013.2/data/parts/arch.xmlZ21-36
~
!Parsing RTL primitives file [%s]
14*netlist2C
AC:/Xilinx/Vivado/2013.2/data/parts/xilinx/rtl/prims/rtl_prims.xmlZ29-14
á
*Finished parsing RTL primitives file [%s]
11*netlist2C
AC:/Xilinx/Vivado/2013.2/data/parts/xilinx/rtl/prims/rtl_prims.xmlZ29-11
l
$Using Tcl App repository from '%s'.
323*common2-
+C:/Xilinx/Vivado/2013.2/data/XilinxTclStoreZ17-362
à
)Updating Tcl app persistent manifest '%s'325*common2D
BC:/Users/Qalypso/AppData/Roaming/Xilinx/Vivado/tclapp/manifest.tclZ17-364
X
Command: %s
53*	vivadotcl20
.synth_design -top Top -part xc7vx485tffg1157-1Z4-113
/

Starting synthesis...

3*	vivadotclZ4-3
s
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2
	xc7vx485tZ17-347
c
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2
	xc7vx485tZ17-349
É
%s*synth2t
rstarting synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 171.992 ; gain = 83.648

ò
synthesizing module '%s'638*oasys2
Top2T
PD:/Projects_SisDigAva/P01_Vivado_Test/P01_Vivado_Test.srcs/sources_1/new/Top.vhd2
428@Z8-638
Ø
%done synthesizing module '%s' (%s#%s)256*oasys2
Top2
12
12T
PD:/Projects_SisDigAva/P01_Vivado_Test/P01_Vivado_Test.srcs/sources_1/new/Top.vhd2
428@Z8-256
Ñ
%s*synth2u
sfinished synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 204.355 ; gain = 116.012

á
%s*synth2x
vStart RTL Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 204.355 ; gain = 116.012

Ö
%s*synth2v
tFinished Compilation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 204.355 ; gain = 116.012

)
%s*synth2
Report RTL Partitions: 

;
%s*synth2,
*-----+-------------+-----------+---------

;
%s*synth2,
*     |RTL Partition|Replication|Instances

;
%s*synth2,
*-----+-------------+-----------+---------

;
%s*synth2,
*-----+-------------+-----------+---------

å
Loading clock regions from %s
13*device2U
SC:/Xilinx/Vivado/2013.2/data\parts/xilinx/virtex7/virtex7/xc7vx485t/ClockRegion.xmlZ21-13
ç
Loading clock buffers from %s
11*device2V
TC:/Xilinx/Vivado/2013.2/data\parts/xilinx/virtex7/virtex7/xc7vx485t/ClockBuffers.xmlZ21-11
à
&Loading clock placement rules from %s
318*place2H
FC:/Xilinx/Vivado/2013.2/data/parts/xilinx/virtex7/ClockPlacerRules.xmlZ30-318
Ü
)Loading package pin functions from %s...
17*device2D
BC:/Xilinx/Vivado/2013.2/data\parts/xilinx/virtex7/PinFunctions.xmlZ21-17
ä
Loading package from %s
16*device2Y
WC:/Xilinx/Vivado/2013.2/data\parts/xilinx/virtex7/virtex7/xc7vx485t/ffg1157/Package.xmlZ21-16
{
Loading io standards from %s
15*device2E
CC:/Xilinx/Vivado/2013.2/data\./parts/xilinx/virtex7/IOStandards.xmlZ21-15
á
+Loading device configuration modes from %s
14*device2C
AC:/Xilinx/Vivado/2013.2/data\parts/xilinx/virtex7/ConfigModes.xmlZ21-14
}
%s*synth2n
lPart Resources:
DSPs: 2800 (col length:140)
BRAMs: 2060 (col length: RAMB8 0 RAMB16 0 RAMB18 140 RAMB36 70)

ü
%s*synth2è
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 608.207 ; gain = 519.863

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      4 Bit       Adders := 1     

4
%s*synth2%
#Hierarchical RTL Component report 


%s*synth2
Module Top 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      4 Bit       Adders := 1     

ó
%s*synth2á
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 608.461 ; gain = 520.117

ê
%s*synth2Ä
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting

c
%s*synth2T
R---------------------------------------------------------------------------------

î
%s*synth2Ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting

c
%s*synth2T
R---------------------------------------------------------------------------------

ã
%s*synth2|
zFinished Area Optimization : Time (s): cpu = 00:00:33 ; elapsed = 00:00:39 . Memory (MB): peak = 637.051 ; gain = 548.707

ç
%s*synth2~
|Finished Timing Optimization : Time (s): cpu = 00:00:33 ; elapsed = 00:00:39 . Memory (MB): peak = 637.051 ; gain = 548.707

1
%s*synth2"
 Start control sets optimization

r
%s*synth2c
aFinished control sets optimization. Modified 0 flops. Number of control sets: before: 0 after: 0

å
%s*synth2}
{Finished Technology Mapping : Time (s): cpu = 00:00:33 ; elapsed = 00:00:39 . Memory (MB): peak = 637.051 ; gain = 548.707

Ü
%s*synth2w
uFinished IO Insertion : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 637.051 ; gain = 548.707

(
%s*synth2
Report Check Netlist: 

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A     |Item             |Errors|Warnings|Status|Description      

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A1    |multi_driven_nets|     0|       0|Passed|Multi driven nets

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

ò
%s*synth2à
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 637.051 ; gain = 548.707

ï
%s*synth2Ö
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 637.051 ; gain = 548.707

ê
%s*synth2Ä
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting

c
%s*synth2T
R---------------------------------------------------------------------------------

î
%s*synth2Ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting

c
%s*synth2T
R---------------------------------------------------------------------------------

%
%s*synth2
Report BlackBoxes: 

/
%s*synth2 
-----+-------------+---------

/
%s*synth2 
     |BlackBox name|Instances

/
%s*synth2 
-----+-------------+---------

/
%s*synth2 
-----+-------------+---------

%
%s*synth2
Report Cell Usage: 

"
%s*synth2
-----+----+-----

"
%s*synth2
     |Cell|Count

"
%s*synth2
-----+----+-----

"
%s*synth2
1    |LUT2|    1

"
%s*synth2
2    |LUT4|    2

"
%s*synth2
3    |LUT5|    1

"
%s*synth2
4    |LUT6|    1

"
%s*synth2
5    |IBUF|    8

"
%s*synth2
6    |OBUF|    4

"
%s*synth2
-----+----+-----

)
%s*synth2
Report Instance Areas: 

-
%s*synth2
-----+--------+------+-----

-
%s*synth2
     |Instance|Module|Cells

-
%s*synth2
-----+--------+------+-----

-
%s*synth2
1    |top     |      |   17

-
%s*synth2
-----+--------+------+-----

î
%s*synth2Ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 637.051 ; gain = 548.707

W
%s*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.

ë
%s*synth2Å
Synthesis Optimization Complete : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 637.051 ; gain = 548.707

J
-Analyzing %s Unisim elements for replacement
17*netlist2
8Z29-17
O
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28
1
Pushed %s inverter(s).
98*opt2
0Z31-138
M
 Attempting to get a license: %s
78*common2
Internal_bitstreamZ17-78
K
Failed to get a license: %s
295*common2
Internal_bitstreamZ17-301
c
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111
1
%Phase 0 | Netlist Checksum: 990d136f
*common
t
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
92
12
02
0Z4-41
C
%s completed successfully
29*	vivadotcl2
synth_designZ4-42
£
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:412

00:00:512

1007.5352	
867.156Z17-268
Ä
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.201 . Memory (MB): peak = 1009.215 ; gain = 1.230
*common
S
Exiting %s at %s...
206*common2
Vivado2
Mon Sep 02 17:47:21 2013Z17-206