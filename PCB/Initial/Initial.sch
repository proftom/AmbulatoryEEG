<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="yes" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Microchip_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/07/2012 11:22:31</description>
<packages>
<package name="SOIC127P600X175-16N">
<smd name="1" x="-2.3622" y="4.445" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="2" x="-2.3622" y="3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="3" x="-2.3622" y="1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="4" x="-2.3622" y="0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="5" x="-2.3622" y="-0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="6" x="-2.3622" y="-1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="7" x="-2.3622" y="-3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="8" x="-2.3622" y="-4.445" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="9" x="2.3622" y="-4.445" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="10" x="2.3622" y="-3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="11" x="2.3622" y="-1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="12" x="2.3622" y="-0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="13" x="2.3622" y="0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="14" x="2.3622" y="1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="15" x="2.3622" y="3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="16" x="2.3622" y="4.445" dx="1.9812" dy="0.5588" layer="1"/>
<wire x1="-1.9558" y1="4.191" x2="-1.9558" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="4.699" x2="-2.9972" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="4.699" x2="-2.9972" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="4.191" x2="-1.9558" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="2.921" x2="-1.9558" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="3.429" x2="-2.9972" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="3.429" x2="-2.9972" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="2.921" x2="-1.9558" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="1.651" x2="-1.9558" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="2.159" x2="-2.9972" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="2.159" x2="-2.9972" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="1.651" x2="-1.9558" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="0.381" x2="-1.9558" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="0.889" x2="-2.9972" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="0.889" x2="-2.9972" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="0.381" x2="-1.9558" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="-0.889" x2="-1.9558" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="-0.381" x2="-2.9972" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-0.381" x2="-2.9972" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-0.889" x2="-1.9558" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="-2.159" x2="-1.9558" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="-1.651" x2="-2.9972" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-1.651" x2="-2.9972" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-2.159" x2="-1.9558" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="-3.429" x2="-1.9558" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="-2.921" x2="-2.9972" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-2.921" x2="-2.9972" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-3.429" x2="-1.9558" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="-4.699" x2="-1.9558" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="-4.191" x2="-2.9972" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-4.191" x2="-2.9972" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-4.699" x2="-1.9558" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-4.191" x2="1.9558" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-4.699" x2="2.9972" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-4.699" x2="2.9972" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-4.191" x2="1.9558" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-2.921" x2="1.9558" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-3.429" x2="2.9972" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-3.429" x2="2.9972" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-2.921" x2="1.9558" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-1.651" x2="1.9558" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-2.159" x2="2.9972" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-2.159" x2="2.9972" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-1.651" x2="1.9558" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-0.381" x2="1.9558" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-0.889" x2="2.9972" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-0.889" x2="2.9972" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-0.381" x2="1.9558" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="0.889" x2="1.9558" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="0.381" x2="2.9972" y2="0.381" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="0.381" x2="2.9972" y2="0.889" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="0.889" x2="1.9558" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="2.159" x2="1.9558" y2="1.651" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="1.651" x2="2.9972" y2="1.651" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="1.651" x2="2.9972" y2="2.159" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="2.159" x2="1.9558" y2="2.159" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="3.429" x2="1.9558" y2="2.921" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="2.921" x2="2.9972" y2="2.921" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="2.921" x2="2.9972" y2="3.429" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="3.429" x2="1.9558" y2="3.429" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="4.699" x2="1.9558" y2="4.191" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="4.191" x2="2.9972" y2="4.191" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="4.191" x2="2.9972" y2="4.699" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="4.699" x2="1.9558" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="-4.953" x2="1.9558" y2="-4.953" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-4.953" x2="1.9558" y2="4.953" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="4.953" x2="0.3048" y2="4.953" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="4.953" x2="-0.3048" y2="4.953" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="4.953" x2="-1.9558" y2="4.953" width="0.1524" layer="51"/>
<wire x1="-1.9558" y1="4.953" x2="-1.9558" y2="-4.953" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="4.953" x2="-0.3048" y2="4.953" width="0" layer="51" curve="-180"/>
<text x="-3.2004" y="4.8768" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-1.1176" y1="-4.953" x2="1.1176" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="1.1176" y1="4.953" x2="0.3048" y2="4.953" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="4.953" x2="-0.3048" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="4.953" x2="-1.1176" y2="4.953" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="4.953" x2="-0.3048" y2="4.953" width="0" layer="21" curve="-180"/>
<wire x1="3.8608" y1="-2.9972" x2="3.8608" y2="-3.3528" width="0.1524" layer="21"/>
<wire x1="3.8608" y1="-3.3528" x2="3.6068" y2="-3.3528" width="0.1524" layer="21"/>
<wire x1="3.6068" y1="-3.3528" x2="3.6068" y2="-2.9972" width="0.1524" layer="21"/>
<text x="-3.2004" y="4.8768" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-4.3942" y="5.7404" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.5372" y="-7.493" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MCP3008-I/SL">
<pin name="DIN" x="-20.32" y="12.7" length="middle" direction="in"/>
<pin name="CH0" x="-20.32" y="10.16" length="middle" direction="in"/>
<pin name="CH1" x="-20.32" y="7.62" length="middle" direction="in"/>
<pin name="CH2" x="-20.32" y="5.08" length="middle" direction="in"/>
<pin name="CH3" x="-20.32" y="2.54" length="middle" direction="in"/>
<pin name="CH4" x="-20.32" y="0" length="middle" direction="in"/>
<pin name="CH5" x="-20.32" y="-2.54" length="middle" direction="in"/>
<pin name="CH6" x="-20.32" y="-5.08" length="middle" direction="in"/>
<pin name="CH7" x="-20.32" y="-7.62" length="middle" direction="in"/>
<pin name="VREF" x="-20.32" y="-12.7" length="middle" direction="in"/>
<pin name="VDD" x="-20.32" y="-15.24" length="middle" direction="pwr"/>
<pin name="AGND" x="-20.32" y="-17.78" length="middle" direction="pas"/>
<pin name="DGND" x="-20.32" y="-20.32" length="middle" direction="pas"/>
<pin name="DOUT" x="20.32" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="*CS/SHDN" x="20.32" y="2.54" length="middle" direction="in" rot="R180"/>
<pin name="CLK" x="20.32" y="7.62" length="middle" direction="in" rot="R180"/>
<wire x1="-15.24" y1="17.78" x2="-15.24" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="-15.24" y1="-25.4" x2="15.24" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="15.24" y1="-25.4" x2="15.24" y2="17.78" width="0.4064" layer="94"/>
<wire x1="15.24" y1="17.78" x2="-15.24" y2="17.78" width="0.4064" layer="94"/>
<text x="-4.1402" y="19.3294" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-6.2484" y="-27.94" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MCP3008-I/SL" prefix="U">
<description>10BIT ADC, 8 CH, SPI, SMD</description>
<gates>
<gate name="A" symbol="MCP3008-I/SL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P600X175-16N">
<connects>
<connect gate="A" pin="*CS/SHDN" pad="10"/>
<connect gate="A" pin="AGND" pad="14"/>
<connect gate="A" pin="CH0" pad="1"/>
<connect gate="A" pin="CH1" pad="2"/>
<connect gate="A" pin="CH2" pad="3"/>
<connect gate="A" pin="CH3" pad="4"/>
<connect gate="A" pin="CH4" pad="5"/>
<connect gate="A" pin="CH5" pad="6"/>
<connect gate="A" pin="CH6" pad="7"/>
<connect gate="A" pin="CH7" pad="8"/>
<connect gate="A" pin="CLK" pad="13"/>
<connect gate="A" pin="DGND" pad="9"/>
<connect gate="A" pin="DIN" pad="11"/>
<connect gate="A" pin="DOUT" pad="12"/>
<connect gate="A" pin="VDD" pad="16"/>
<connect gate="A" pin="VREF" pad="15"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="MCP3008-I/SL" constant="no"/>
<attribute name="OC_FARNELL" value="1292241" constant="no"/>
<attribute name="OC_NEWARK" value="19C7201" constant="no"/>
<attribute name="PACKAGE" value="SOIC16" constant="no"/>
<attribute name="SUPPLIER" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ATMEL-AT24C512C-SHD-B">
<packages>
<package name="SOIC127P798X216-8N">
<smd name="1" x="-3.7084" y="1.905" dx="1.5494" dy="0.5588" layer="1"/>
<smd name="2" x="-3.7084" y="0.635" dx="1.5494" dy="0.5588" layer="1"/>
<smd name="3" x="-3.7084" y="-0.635" dx="1.5494" dy="0.5588" layer="1"/>
<smd name="4" x="-3.7084" y="-1.905" dx="1.5494" dy="0.5588" layer="1"/>
<smd name="5" x="3.7084" y="-1.905" dx="1.5494" dy="0.5588" layer="1"/>
<smd name="6" x="3.7084" y="-0.635" dx="1.5494" dy="0.5588" layer="1"/>
<smd name="7" x="3.7084" y="0.635" dx="1.5494" dy="0.5588" layer="1"/>
<smd name="8" x="3.7084" y="1.905" dx="1.5494" dy="0.5588" layer="1"/>
<wire x1="-2.6924" y1="1.651" x2="-2.6924" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-2.6924" y1="2.159" x2="-4.1402" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="2.159" x2="-4.1402" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="1.651" x2="-2.6924" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-2.6924" y1="0.381" x2="-2.6924" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.6924" y1="0.889" x2="-4.1402" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="0.889" x2="-4.1402" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="0.381" x2="-2.6924" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.6924" y1="-0.889" x2="-2.6924" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.6924" y1="-0.381" x2="-4.1402" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-0.381" x2="-4.1402" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-0.889" x2="-2.6924" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-2.6924" y1="-2.159" x2="-2.6924" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-2.6924" y1="-1.651" x2="-4.1402" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-1.651" x2="-4.1402" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-2.159" x2="-2.6924" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="-1.651" x2="2.6924" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="-2.159" x2="4.1402" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-2.159" x2="4.1402" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-1.651" x2="2.6924" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="-0.381" x2="2.6924" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="-0.889" x2="4.1402" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-0.889" x2="4.1402" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-0.381" x2="2.6924" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="0.889" x2="2.6924" y2="0.381" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="0.381" x2="4.1402" y2="0.381" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="0.381" x2="4.1402" y2="0.889" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="0.889" x2="2.6924" y2="0.889" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="2.159" x2="2.6924" y2="1.651" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="1.651" x2="4.1402" y2="1.651" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="1.651" x2="4.1402" y2="2.159" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="2.159" x2="2.6924" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-2.6924" y1="-2.667" x2="2.6924" y2="-2.667" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="-2.667" x2="2.6924" y2="2.667" width="0.1524" layer="51"/>
<wire x1="2.6924" y1="2.667" x2="0.3048" y2="2.667" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.667" x2="-0.3048" y2="2.667" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.667" x2="-2.6924" y2="2.667" width="0.1524" layer="51"/>
<wire x1="-2.6924" y1="2.667" x2="-2.6924" y2="-2.667" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.667" x2="-0.3048" y2="2.667" width="0.1524" layer="51" curve="-180"/>
<text x="-4.5466" y="2.3368" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="4.7498" y1="-2.921" x2="-4.7498" y2="-2.921" width="0.1524" layer="39"/>
<wire x1="-4.7498" y1="-2.921" x2="-4.7498" y2="2.921" width="0.1524" layer="39"/>
<wire x1="-4.7498" y1="2.921" x2="4.7498" y2="2.921" width="0.1524" layer="39"/>
<wire x1="4.7498" y1="2.921" x2="4.7498" y2="-2.921" width="0.1524" layer="39"/>
<wire x1="2.6924" y1="2.4384" x2="2.6924" y2="2.667" width="0.1524" layer="21"/>
<wire x1="2.6924" y1="1.1684" x2="2.6924" y2="1.3716" width="0.1524" layer="21"/>
<wire x1="2.6924" y1="-0.1016" x2="2.6924" y2="0.1016" width="0.1524" layer="21"/>
<wire x1="2.6924" y1="-1.3716" x2="2.6924" y2="-1.1684" width="0.1524" layer="21"/>
<wire x1="-2.6924" y1="-2.4384" x2="-2.6924" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-2.6924" y1="-2.667" x2="2.6924" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="2.6924" y1="-2.667" x2="2.6924" y2="-2.4384" width="0.1524" layer="21"/>
<wire x1="2.6924" y1="2.667" x2="0.3048" y2="2.667" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="2.667" x2="-0.3048" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="2.667" x2="-2.6924" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-2.6924" y1="2.667" x2="-2.6924" y2="2.4384" width="0.1524" layer="21"/>
<wire x1="-2.6924" y1="1.3716" x2="-2.6924" y2="1.1684" width="0.1524" layer="21"/>
<wire x1="-2.6924" y1="0.1016" x2="-2.6924" y2="-0.1016" width="0.1524" layer="21"/>
<wire x1="-2.6924" y1="-1.1684" x2="-2.6924" y2="-1.3716" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="2.667" x2="-0.3048" y2="2.667" width="0.1524" layer="21" curve="-180"/>
<text x="-4.5466" y="2.3368" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-4.7752" y="3.429" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.588" y="-5.2578" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="AT24C512C-SHD-B">
<pin name="VCC" x="-15.24" y="7.62" length="middle" direction="pwr"/>
<pin name="A0" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="A1" x="-15.24" y="0" length="middle" direction="in"/>
<pin name="A2" x="-15.24" y="-2.54" length="middle" direction="in"/>
<pin name="WP" x="-15.24" y="-7.62" length="middle" direction="in"/>
<pin name="GND" x="-15.24" y="-12.7" length="middle" direction="pwr"/>
<pin name="SDA" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="SCL" x="15.24" y="0" length="middle" direction="in" rot="R180"/>
<wire x1="-10.16" y1="12.7" x2="-10.16" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-17.78" x2="10.16" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="10.16" y2="12.7" width="0.4064" layer="94"/>
<wire x1="10.16" y1="12.7" x2="-10.16" y2="12.7" width="0.4064" layer="94"/>
<text x="-4.7244" y="14.1986" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.6642" y="-21.3614" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="AT24C512C-SHD-B" prefix="U">
<description>EEPROM, SERIAL, 512K (64KX8), 8SOIC-Wide</description>
<gates>
<gate name="A" symbol="AT24C512C-SHD-B" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P798X216-8N">
<connects>
<connect gate="A" pin="A0" pad="1"/>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="SCL" pad="6"/>
<connect gate="A" pin="SDA" pad="5"/>
<connect gate="A" pin="VCC" pad="8"/>
<connect gate="A" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="AT24C512C-SHD-B" constant="no"/>
<attribute name="OC_FARNELL" value="1972003 " constant="no"/>
<attribute name="OC_NEWARK" value="68T4124" constant="no"/>
<attribute name="PACKAGE" value="8SOIC-Wide" constant="no"/>
<attribute name="SUPPLIER" value="ATMEL" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="solpad">
<description>&lt;b&gt;Solder Pads/Test Points&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="LSP10">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt;
drill 1.0 mm</description>
<wire x1="-1.27" y1="0.254" x2="-1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.254" x2="1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.254" x2="1.143" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.254" x2="1.143" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.254" x2="-1.143" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.254" x2="0.635" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.254" x2="0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.254" x2="-0.635" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-0.254" x2="1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.254" x2="-0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-0.254" x2="0.635" y2="-0.254" width="0.1524" layer="51"/>
<pad name="MP" x="0" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-1.27" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.254" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LSP">
<wire x1="-1.016" y1="2.032" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="1.016" y2="2.032" width="0.254" layer="94"/>
<circle x="0" y="1.016" radius="1.016" width="0.4064" layer="94"/>
<text x="-1.27" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<pin name="MP" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LSP10" prefix="LSP">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt; drill 1.0 mm, distributor Buerklin, 12H555</description>
<gates>
<gate name="1" symbol="LSP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LSP10">
<connects>
<connect gate="1" pin="MP" pad="MP"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="ADC1" library="Microchip_By_element14_Batch_1" deviceset="MCP3008-I/SL" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="U2" library="ATMEL-AT24C512C-SHD-B" deviceset="AT24C512C-SHD-B" device=""/>
<part name="ADC0" library="Microchip_By_element14_Batch_1" deviceset="MCP3008-I/SL" device=""/>
<part name="CH7" library="solpad" deviceset="LSP10" device=""/>
<part name="CH5" library="solpad" deviceset="LSP10" device=""/>
<part name="CH4" library="solpad" deviceset="LSP10" device=""/>
<part name="CH3" library="solpad" deviceset="LSP10" device=""/>
<part name="CH2" library="solpad" deviceset="LSP10" device=""/>
<part name="CH1" library="solpad" deviceset="LSP10" device=""/>
<part name="CH0" library="solpad" deviceset="LSP10" device=""/>
<part name="CH6" library="solpad" deviceset="LSP10" device=""/>
<part name="CH15" library="solpad" deviceset="LSP10" device=""/>
<part name="CH13" library="solpad" deviceset="LSP10" device=""/>
<part name="CH12" library="solpad" deviceset="LSP10" device=""/>
<part name="CH11" library="solpad" deviceset="LSP10" device=""/>
<part name="CH10" library="solpad" deviceset="LSP10" device=""/>
<part name="CH9" library="solpad" deviceset="LSP10" device=""/>
<part name="CH8" library="solpad" deviceset="LSP10" device=""/>
<part name="CH14" library="solpad" deviceset="LSP10" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="ADC1" gate="A" x="50.8" y="50.8" rot="R180"/>
<instance part="GND1" gate="1" x="76.2" y="-30.48"/>
<instance part="U2" gate="A" x="50.8" y="104.14"/>
<instance part="ADC0" gate="A" x="50.8" y="-2.54" rot="R180"/>
<instance part="CH7" gate="1" x="99.06" y="5.08" rot="R270"/>
<instance part="CH5" gate="1" x="99.06" y="0" rot="R270"/>
<instance part="CH4" gate="1" x="93.98" y="-2.54" rot="R270"/>
<instance part="CH3" gate="1" x="99.06" y="-5.08" rot="R270"/>
<instance part="CH2" gate="1" x="93.98" y="-7.62" rot="R270"/>
<instance part="CH1" gate="1" x="99.06" y="-10.16" rot="R270"/>
<instance part="CH0" gate="1" x="93.98" y="-12.7" rot="R270"/>
<instance part="CH6" gate="1" x="93.98" y="2.54" rot="R270"/>
<instance part="CH15" gate="1" x="99.06" y="58.42" rot="R270"/>
<instance part="CH13" gate="1" x="99.06" y="53.34" rot="R270"/>
<instance part="CH12" gate="1" x="93.98" y="50.8" rot="R270"/>
<instance part="CH11" gate="1" x="99.06" y="48.26" rot="R270"/>
<instance part="CH10" gate="1" x="93.98" y="45.72" rot="R270"/>
<instance part="CH9" gate="1" x="99.06" y="43.18" rot="R270"/>
<instance part="CH8" gate="1" x="93.98" y="40.64" rot="R270"/>
<instance part="CH14" gate="1" x="93.98" y="55.88" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="CH6" gate="1" pin="MP"/>
<pinref part="ADC0" gate="A" pin="CH6"/>
<wire x1="71.12" y1="2.54" x2="91.44" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH0"/>
<pinref part="CH0" gate="1" pin="MP"/>
<wire x1="71.12" y1="-12.7" x2="91.44" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="CH1" gate="1" pin="MP"/>
<pinref part="ADC0" gate="A" pin="CH1"/>
<wire x1="96.52" y1="-10.16" x2="71.12" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH2"/>
<pinref part="CH2" gate="1" pin="MP"/>
<wire x1="71.12" y1="-7.62" x2="91.44" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="CH3" gate="1" pin="MP"/>
<pinref part="ADC0" gate="A" pin="CH3"/>
<wire x1="96.52" y1="-5.08" x2="71.12" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH4"/>
<pinref part="CH4" gate="1" pin="MP"/>
<wire x1="71.12" y1="-2.54" x2="91.44" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="CH5" gate="1" pin="MP"/>
<pinref part="ADC0" gate="A" pin="CH5"/>
<wire x1="96.52" y1="0" x2="71.12" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="CH7" gate="1" pin="MP"/>
<pinref part="ADC0" gate="A" pin="CH7"/>
<wire x1="96.52" y1="5.08" x2="71.12" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH0"/>
<pinref part="CH8" gate="1" pin="MP"/>
<wire x1="71.12" y1="40.64" x2="91.44" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="CH9" gate="1" pin="MP"/>
<pinref part="ADC1" gate="A" pin="CH1"/>
<wire x1="96.52" y1="43.18" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH2"/>
<pinref part="CH10" gate="1" pin="MP"/>
<wire x1="71.12" y1="45.72" x2="91.44" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="CH11" gate="1" pin="MP"/>
<pinref part="ADC1" gate="A" pin="CH3"/>
<wire x1="96.52" y1="48.26" x2="71.12" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH4"/>
<pinref part="CH12" gate="1" pin="MP"/>
<wire x1="71.12" y1="50.8" x2="91.44" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="CH13" gate="1" pin="MP"/>
<pinref part="ADC1" gate="A" pin="CH5"/>
<wire x1="96.52" y1="53.34" x2="71.12" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH6"/>
<pinref part="CH14" gate="1" pin="MP"/>
<wire x1="71.12" y1="55.88" x2="91.44" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="CH15" gate="1" pin="MP"/>
<pinref part="ADC1" gate="A" pin="CH7"/>
<wire x1="96.52" y1="58.42" x2="71.12" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="VDD"/>
<wire x1="71.12" y1="66.04" x2="78.74" y2="66.04" width="0.1524" layer="91"/>
<wire x1="78.74" y1="66.04" x2="78.74" y2="12.7" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="VDD"/>
<wire x1="78.74" y1="12.7" x2="71.12" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="VREF"/>
<wire x1="71.12" y1="63.5" x2="81.28" y2="63.5" width="0.1524" layer="91"/>
<wire x1="81.28" y1="63.5" x2="81.28" y2="10.16" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="VREF"/>
<wire x1="81.28" y1="10.16" x2="71.12" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CLK"/>
<wire x1="30.48" y1="43.18" x2="27.94" y2="43.18" width="0.1524" layer="91"/>
<wire x1="27.94" y1="43.18" x2="27.94" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="CLK"/>
<wire x1="27.94" y1="-10.16" x2="30.48" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="DOUT"/>
<wire x1="30.48" y1="58.42" x2="25.4" y2="58.42" width="0.1524" layer="91"/>
<wire x1="25.4" y1="58.42" x2="25.4" y2="5.08" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="DOUT"/>
<wire x1="25.4" y1="5.08" x2="30.48" y2="5.08" width="0.1524" layer="91"/>
<wire x1="25.4" y1="58.42" x2="20.32" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="DIN"/>
<wire x1="71.12" y1="38.1" x2="73.66" y2="38.1" width="0.1524" layer="91"/>
<wire x1="73.66" y1="38.1" x2="73.66" y2="27.94" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="DIN"/>
<wire x1="73.66" y1="27.94" x2="73.66" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-15.24" x2="71.12" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="73.66" y1="27.94" x2="20.32" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="*CS/SHDN"/>
<wire x1="30.48" y1="48.26" x2="20.32" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="*CS/SHDN"/>
<wire x1="30.48" y1="-5.08" x2="22.86" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="DGND"/>
<wire x1="71.12" y1="71.12" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<wire x1="76.2" y1="71.12" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="DGND"/>
<wire x1="76.2" y1="68.58" x2="76.2" y2="17.78" width="0.1524" layer="91"/>
<wire x1="76.2" y1="17.78" x2="71.12" y2="17.78" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="AGND"/>
<wire x1="71.12" y1="15.24" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
<wire x1="76.2" y1="15.24" x2="76.2" y2="17.78" width="0.1524" layer="91"/>
<pinref part="ADC1" gate="A" pin="AGND"/>
<wire x1="71.12" y1="68.58" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="76.2" y1="-27.94" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
