<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="A">
            <attr value="T10" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="B">
            <attr value="T9" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="C">
            <attr value="V9" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="Y">
            <attr value="U16" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="Y" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_4">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_5">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_6">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_7">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_8">
            <blockpin signalname="XLXN_13" name="I" />
            <blockpin signalname="Y" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1392" y="1168" name="XLXI_1" orien="R0" />
        <instance x="1392" y="1344" name="XLXI_2" orien="R0" />
        <instance x="1392" y="1520" name="XLXI_3" orien="R0" />
        <instance x="1888" y="1376" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1664" y1="1248" y2="1248" x1="1648" />
            <wire x2="1888" y1="1248" y2="1248" x1="1664" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1792" y1="1072" y2="1072" x1="1648" />
            <wire x2="1792" y1="1072" y2="1184" x1="1792" />
            <wire x2="1888" y1="1184" y2="1184" x1="1792" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1792" y1="1424" y2="1424" x1="1648" />
            <wire x2="1792" y1="1312" y2="1424" x1="1792" />
            <wire x2="1888" y1="1312" y2="1312" x1="1792" />
        </branch>
        <instance x="960" y="1136" name="XLXI_5" orien="R0" />
        <instance x="960" y="1072" name="XLXI_6" orien="R0" />
        <instance x="960" y="1312" name="XLXI_7" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1344" y1="1040" y2="1040" x1="1184" />
            <wire x2="1392" y1="1040" y2="1040" x1="1344" />
            <wire x2="1344" y1="1040" y2="1216" x1="1344" />
            <wire x2="1392" y1="1216" y2="1216" x1="1344" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1328" y1="1104" y2="1104" x1="1184" />
            <wire x2="1392" y1="1104" y2="1104" x1="1328" />
            <wire x2="1328" y1="1104" y2="1392" x1="1328" />
            <wire x2="1392" y1="1392" y2="1392" x1="1328" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1312" y1="1280" y2="1280" x1="1184" />
            <wire x2="1392" y1="1280" y2="1280" x1="1312" />
            <wire x2="1312" y1="1280" y2="1456" x1="1312" />
            <wire x2="1392" y1="1456" y2="1456" x1="1312" />
        </branch>
        <instance x="2256" y="1280" name="XLXI_8" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="2256" y1="1248" y2="1248" x1="2144" />
        </branch>
        <branch name="A">
            <wire x2="960" y1="1040" y2="1040" x1="880" />
        </branch>
        <branch name="B">
            <wire x2="960" y1="1104" y2="1104" x1="880" />
        </branch>
        <branch name="C">
            <wire x2="960" y1="1280" y2="1280" x1="880" />
        </branch>
        <branch name="Y">
            <wire x2="2560" y1="1248" y2="1248" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="880" y="1040" name="A" orien="R180" />
        <iomarker fontsize="28" x="880" y="1104" name="B" orien="R180" />
        <iomarker fontsize="28" x="880" y="1280" name="C" orien="R180" />
        <iomarker fontsize="28" x="2560" y="1248" name="Y" orien="R0" />
    </sheet>
</drawing>