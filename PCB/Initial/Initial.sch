<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.025" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
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
<symbol name="VDD">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
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
<deviceset name="VDD" prefix="VDD">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
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
<library name="CSR1010A05">
<packages>
<package name="CSR1010A05-IQQM-R">
<smd name="XTAL_16M_IN" x="-1.7" y="-0.9" dx="0.186" dy="0.4" layer="1"/>
<smd name="AIO[2]" x="-1.2" y="-0.9" dx="0.186" dy="0.4" layer="1"/>
<smd name="AIO[1]" x="-0.7" y="-0.9" dx="0.186" dy="0.4" layer="1"/>
<smd name="AIO[0]" x="-0.2" y="-0.9" dx="0.186" dy="0.4" layer="1"/>
<smd name="PIO[0]/UART_TX" x="0.3" y="-0.9" dx="0.186" dy="0.4" layer="1"/>
<smd name="PIO[1]/UART_RX" x="0.8" y="-0.9" dx="0.186" dy="0.4" layer="1"/>
<smd name="PIO[5]/DEBUG_CLK" x="1.85" y="0.15" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="PIO[6]/DEBUG_CS#" x="1.85" y="0.65" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="PIO[7]/DEBUG_MOSI" x="1.85" y="1.15" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="VDD_PADS" x="1.85" y="1.65" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="PIO[8]/DEBUG_MISO" x="1.85" y="2.15" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="PIO[9]" x="1.85" y="2.65" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="SMPS_LX" x="-1.7" y="3.7" dx="0.186" dy="0.4" layer="1"/>
<smd name="VDD_CORE@1" x="-1.2" y="3.7" dx="0.186" dy="0.4" layer="1"/>
<smd name="I2C_SDA" x="-0.7" y="3.7" dx="0.186" dy="0.4" layer="1"/>
<smd name="I2C_SCL" x="-0.2" y="3.7" dx="0.186" dy="0.4" layer="1"/>
<smd name="PIO[2]" x="0.3" y="3.7" dx="0.186" dy="0.4" layer="1"/>
<smd name="RF" x="-2.75" y="0.15" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="VDD_REG_IN" x="-2.75" y="0.65" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="VDD_CORE" x="-2.75" y="1.15" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="WAKE" x="-2.75" y="1.65" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="XTAL_32K_IN" x="-2.75" y="2.15" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<smd name="XTAL_32K_OUT" x="-2.75" y="2.65" dx="0.186" dy="0.4" layer="1" rot="R90"/>
<polygon width="0.05" layer="1" spacing="0.1">
<vertex x="2.025" y="3.225"/>
<vertex x="2.025" y="3.075"/>
<vertex x="1.675" y="3.075"/>
<vertex x="1.675" y="3.15"/>
<vertex x="1.75" y="3.225"/>
</polygon>
<smd name="SPI_PIO#" x="0.8" y="3.7" dx="0.186" dy="0.4" layer="1"/>
<polygon width="0.05" layer="1" spacing="0.1">
<vertex x="1.225" y="3.875"/>
<vertex x="1.225" y="3.525"/>
<vertex x="1.3" y="3.525"/>
<vertex x="1.375" y="3.6"/>
<vertex x="1.375" y="3.875"/>
</polygon>
<polygon width="0.05" layer="1" spacing="0.1">
<vertex x="1.375" y="-1.075"/>
<vertex x="1.225" y="-1.075"/>
<vertex x="1.225" y="-0.725"/>
<vertex x="1.3" y="-0.725"/>
<vertex x="1.375" y="-0.8"/>
</polygon>
<polygon width="0.05" layer="1" spacing="0.1">
<vertex x="2.025" y="-0.275"/>
<vertex x="1.675" y="-0.275"/>
<vertex x="1.675" y="-0.35"/>
<vertex x="1.75" y="-0.425"/>
<vertex x="2.025" y="-0.425"/>
</polygon>
<polygon width="0.05" layer="1" spacing="0.1">
<vertex x="-2.925" y="-0.425"/>
<vertex x="-2.925" y="-0.275"/>
<vertex x="-2.575" y="-0.275"/>
<vertex x="-2.575" y="-0.35"/>
<vertex x="-2.65" y="-0.425"/>
</polygon>
<polygon width="0.05" layer="1" spacing="0.1">
<vertex x="-2.125" y="-1.075"/>
<vertex x="-2.125" y="-0.725"/>
<vertex x="-2.2" y="-0.725"/>
<vertex x="-2.275" y="-0.8"/>
<vertex x="-2.275" y="-1.075"/>
</polygon>
<polygon width="0.05" layer="1" spacing="0.1">
<vertex x="-2.275" y="3.875"/>
<vertex x="-2.125" y="3.875"/>
<vertex x="-2.125" y="3.525"/>
<vertex x="-2.2" y="3.525"/>
<vertex x="-2.275" y="3.6"/>
</polygon>
<polygon width="0.05" layer="1" spacing="0.1">
<vertex x="-2.925" y="3.075"/>
<vertex x="-2.575" y="3.075"/>
<vertex x="-2.575" y="3.15"/>
<vertex x="-2.65" y="3.225"/>
<vertex x="-2.925" y="3.225"/>
</polygon>
<polygon width="0.05" layer="1" spacing="0.1">
<vertex x="-1.925" y="-0.075"/>
<vertex x="-1.925" y="2.5"/>
<vertex x="-1.55" y="2.875"/>
<vertex x="1.025" y="2.875"/>
<vertex x="1.025" y="-0.075"/>
</polygon>
<wire x1="-2.925" y1="3.525" x2="-2.925" y2="-1.075" width="0.05" layer="21"/>
<wire x1="-2.925" y1="-1.075" x2="2.025" y2="-1.075" width="0.05" layer="21"/>
<wire x1="2.025" y1="-1.075" x2="2.025" y2="3.875" width="0.05" layer="21"/>
<wire x1="2.025" y1="3.875" x2="-2.575" y2="3.875" width="0.05" layer="21"/>
<wire x1="-2.575" y1="3.875" x2="-2.925" y2="3.875" width="0.05" layer="21"/>
<wire x1="-2.925" y1="3.875" x2="-2.925" y2="3.525" width="0.05" layer="21"/>
<wire x1="-2.925" y1="3.525" x2="-2.575" y2="3.875" width="0.05" layer="21"/>
<text x="-2.95" y="4" size="1.27" layer="25">&gt;Name</text>
<text x="-2.9" y="-2.45" size="1.27" layer="27">value</text>
<smd name="XTAL_16M_OUT" x="-2.2" y="-0.9" dx="0.2" dy="0.4" layer="1"/>
<smd name="VDD_BAT_SMPS" x="-2.2" y="3.7" dx="0.2" dy="0.4" layer="1"/>
<smd name="PIO[11]" x="1.3" y="3.7" dx="0.2" dy="0.4" layer="1"/>
<smd name="PIO[3]/SF_DIN" x="1.3" y="-0.9" dx="0.2" dy="0.4" layer="1"/>
<smd name="VDD_XTAL" x="-2.75" y="-0.35" dx="0.2" dy="0.4" layer="1" rot="R90"/>
<smd name="PIO[4]/SF_CS#" x="1.85" y="-0.35" dx="0.2" dy="0.4" layer="1" rot="R90"/>
<smd name="PIO[10]" x="1.85" y="3.15" dx="0.2" dy="0.4" layer="1" rot="R90"/>
<smd name="VDD_BAT" x="-2.75" y="3.15" dx="0.2" dy="0.4" layer="1" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="CSR1010A05-IQQM-R">
<wire x1="-33.02" y1="30.48" x2="-33.02" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-33.02" y1="-33.02" x2="30.48" y2="-33.02" width="0.254" layer="94"/>
<pin name="VDD_BAT" x="-38.1" y="25.4" visible="pin" length="middle" direction="out"/>
<pin name="XTAL_32K_OUT" x="-38.1" y="17.78" visible="pin" length="middle" direction="out"/>
<pin name="XTAL_32K_IN" x="-38.1" y="10.16" visible="pin" length="middle" direction="out"/>
<pin name="WAKE" x="-38.1" y="2.54" visible="pin" length="middle" direction="out"/>
<pin name="VDD_CORE" x="-38.1" y="-5.08" visible="pin" length="middle" direction="out"/>
<pin name="VDD_REG_IN" x="-38.1" y="-12.7" visible="pin" length="middle" direction="out"/>
<pin name="RF" x="-38.1" y="-20.32" visible="pin" length="middle" direction="out"/>
<pin name="VDD_XTAL" x="-38.1" y="-27.94" visible="pin" length="middle" direction="out"/>
<wire x1="-33.02" y1="30.48" x2="30.48" y2="30.48" width="0.254" layer="94"/>
<wire x1="30.48" y1="30.48" x2="30.48" y2="-33.02" width="0.254" layer="94"/>
<pin name="XTAL_16M_OUT" x="-27.94" y="-38.1" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="XTAL_16M_IN" x="-20.32" y="-38.1" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="AIO[2]" x="-12.7" y="-38.1" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="AIO[1]" x="-5.08" y="-38.1" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="AIO[0]" x="2.54" y="-38.1" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="PIO[0]/UART_TX" x="10.16" y="-38.1" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="PIO[1]/UART_RX" x="17.78" y="-38.1" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="PIO[3]/SF_DIN" x="25.4" y="-38.1" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="PIO[4]/SF_CS#" x="35.56" y="-27.94" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="PIO[5]/DEBUG_CLK" x="35.56" y="-20.32" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="PIO[6]/DEBUG_CS#" x="35.56" y="-12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="PIO[7]/DEBUG_MOSI" x="35.56" y="-5.08" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="VDD_PADS" x="35.56" y="2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="PIO[8]/DEBUG_MISO" x="35.56" y="10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="PIO[9]" x="35.56" y="17.78" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="PIO[10]" x="35.56" y="25.4" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="PIO[11]" x="25.4" y="35.56" visible="pin" length="middle" direction="out" rot="R270"/>
<pin name="SPI_PIO#" x="17.78" y="35.56" visible="pin" length="middle" direction="out" rot="R270"/>
<pin name="PIO[2]" x="10.16" y="35.56" visible="pin" length="middle" direction="out" rot="R270"/>
<pin name="I2C_SCL" x="2.54" y="35.56" visible="pin" length="middle" direction="out" rot="R270"/>
<pin name="I2C_SDA" x="-5.08" y="35.56" visible="pin" length="middle" direction="out" rot="R270"/>
<pin name="SMPS_LX" x="-20.32" y="35.56" visible="pin" length="middle" direction="out" rot="R270"/>
<pin name="VDD_BAT_SMPS" x="-27.94" y="35.56" visible="pin" length="middle" direction="out" rot="R270"/>
<pin name="VDD_CORE@1" x="-12.7" y="35.56" visible="pin" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CSR1010A05-IQQM-R">
<gates>
<gate name="G$1" symbol="CSR1010A05-IQQM-R" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CSR1010A05-IQQM-R">
<connects>
<connect gate="G$1" pin="AIO[0]" pad="AIO[0]"/>
<connect gate="G$1" pin="AIO[1]" pad="AIO[1]"/>
<connect gate="G$1" pin="AIO[2]" pad="AIO[2]"/>
<connect gate="G$1" pin="I2C_SCL" pad="I2C_SCL"/>
<connect gate="G$1" pin="I2C_SDA" pad="I2C_SDA"/>
<connect gate="G$1" pin="PIO[0]/UART_TX" pad="PIO[0]/UART_TX"/>
<connect gate="G$1" pin="PIO[10]" pad="PIO[10]"/>
<connect gate="G$1" pin="PIO[11]" pad="PIO[11]"/>
<connect gate="G$1" pin="PIO[1]/UART_RX" pad="PIO[1]/UART_RX"/>
<connect gate="G$1" pin="PIO[2]" pad="PIO[2]"/>
<connect gate="G$1" pin="PIO[3]/SF_DIN" pad="PIO[3]/SF_DIN"/>
<connect gate="G$1" pin="PIO[4]/SF_CS#" pad="PIO[4]/SF_CS#"/>
<connect gate="G$1" pin="PIO[5]/DEBUG_CLK" pad="PIO[5]/DEBUG_CLK"/>
<connect gate="G$1" pin="PIO[6]/DEBUG_CS#" pad="PIO[6]/DEBUG_CS#"/>
<connect gate="G$1" pin="PIO[7]/DEBUG_MOSI" pad="PIO[7]/DEBUG_MOSI"/>
<connect gate="G$1" pin="PIO[8]/DEBUG_MISO" pad="PIO[8]/DEBUG_MISO"/>
<connect gate="G$1" pin="PIO[9]" pad="PIO[9]"/>
<connect gate="G$1" pin="RF" pad="RF"/>
<connect gate="G$1" pin="SMPS_LX" pad="SMPS_LX"/>
<connect gate="G$1" pin="SPI_PIO#" pad="SPI_PIO#"/>
<connect gate="G$1" pin="VDD_BAT" pad="VDD_BAT"/>
<connect gate="G$1" pin="VDD_BAT_SMPS" pad="VDD_BAT_SMPS"/>
<connect gate="G$1" pin="VDD_CORE" pad="VDD_CORE"/>
<connect gate="G$1" pin="VDD_CORE@1" pad="VDD_CORE@1"/>
<connect gate="G$1" pin="VDD_PADS" pad="VDD_PADS"/>
<connect gate="G$1" pin="VDD_REG_IN" pad="VDD_REG_IN"/>
<connect gate="G$1" pin="VDD_XTAL" pad="VDD_XTAL"/>
<connect gate="G$1" pin="WAKE" pad="WAKE"/>
<connect gate="G$1" pin="XTAL_16M_IN" pad="XTAL_16M_IN"/>
<connect gate="G$1" pin="XTAL_16M_OUT" pad="XTAL_16M_OUT"/>
<connect gate="G$1" pin="XTAL_32K_IN" pad="XTAL_32K_IN"/>
<connect gate="G$1" pin="XTAL_32K_OUT" pad="XTAL_32K_OUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="AVX_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/04/2012 16:26:10</description>
<packages>
<package name="CAPC1005X60N">
<smd name="1" x="-0.4826" y="0" dx="0.4572" dy="0.6096" layer="1"/>
<smd name="2" x="0.4826" y="0" dx="0.4572" dy="0.6096" layer="1"/>
<wire x1="-0.254" y1="-0.3048" x2="-0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.254" y1="0.3048" x2="-0.5588" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.5588" y1="-0.3048" x2="-0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="0.3048" x2="0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="-0.3048" x2="0.5588" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.5588" y1="0.3048" x2="0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.254" y1="-0.3048" x2="0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.5588" y1="-0.3048" x2="0.5588" y2="0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="0.3048" x2="-0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.5588" y1="0.3048" x2="-0.5588" y2="-0.3048" width="0" layer="51"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="CAPC2012X130N">
<smd name="1" x="-0.9144" y="0" dx="1.1176" dy="1.4478" layer="1"/>
<smd name="2" x="0.9144" y="0" dx="1.1176" dy="1.4478" layer="1"/>
<wire x1="-0.3556" y1="-0.7366" x2="-0.3556" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="0.7366" x2="-1.1176" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-0.7366" x2="-0.3556" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="0.7366" x2="0.3556" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-0.7366" x2="1.1176" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="0.7366" x2="0.3556" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-0.7366" x2="0.3556" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-0.7366" x2="1.1176" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="0.7366" x2="-0.3556" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="0.7366" x2="-1.1176" y2="-0.7366" width="0.1524" layer="51"/>
<text x="-4.4958" y="1.4732" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.7404" y="-3.7338" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="CAPC3225X127N">
<smd name="1" x="-1.4986" y="0" dx="1.1176" dy="2.6924" layer="1"/>
<smd name="2" x="1.4986" y="0" dx="1.1176" dy="2.6924" layer="1"/>
<wire x1="-0.6096" y1="-1.3462" x2="0.6096" y2="-1.3462" width="0.1524" layer="21"/>
<wire x1="0.6096" y1="1.3462" x2="-0.6096" y2="1.3462" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="-1.3462" x2="-0.9398" y2="1.3462" width="0.1524" layer="51"/>
<wire x1="-0.9398" y1="1.3462" x2="-1.7018" y2="1.3462" width="0.1524" layer="51"/>
<wire x1="-1.7018" y1="-1.3462" x2="-0.9398" y2="-1.3462" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="1.3462" x2="0.9398" y2="-1.3462" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-1.3462" x2="1.7018" y2="-1.3462" width="0.1524" layer="51"/>
<wire x1="1.7018" y1="1.3462" x2="0.9398" y2="1.3462" width="0.1524" layer="51"/>
<wire x1="-0.9398" y1="-1.3462" x2="0.9398" y2="-1.3462" width="0.1524" layer="51"/>
<wire x1="1.7018" y1="-1.3462" x2="1.7018" y2="1.3462" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="1.3462" x2="-0.9398" y2="1.3462" width="0.1524" layer="51"/>
<wire x1="-1.7018" y1="1.3462" x2="-1.7018" y2="-1.3462" width="0.1524" layer="51"/>
<text x="-4.699" y="1.8288" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.7658" y="-3.8862" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="CAPH">
<pin name="C2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="C1" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="3.4798" y1="-1.905" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<wire x1="3.4798" y1="0" x2="3.4798" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="-1.905" x2="4.1148" y2="0" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="4.1148" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="5.08" y2="0" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<text x="-1.905" y="-7.8232" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<text x="-0.9144" y="2.7686" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="UQCL2A100JAT2A/500" prefix="C">
<description>Capacitor 0402</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1005X60N">
<connects>
<connect gate="A" pin="C1" pad="2"/>
<connect gate="A" pin="C2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="UQCL2A100JAT2A/500" constant="no"/>
<attribute name="OC_FARNELL" value="-" constant="no"/>
<attribute name="OC_NEWARK" value="32T8791" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±5%" constant="no"/>
<attribute name="VALUE" value="10pF" constant="no"/>
<attribute name="VOLTAGERATING" value="200V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UQCL2A150JAT2A/500" prefix="C">
<description>Capacitor 0402</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1005X60N">
<connects>
<connect gate="A" pin="C1" pad="2"/>
<connect gate="A" pin="C2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="UQCL2A150JAT2A/500" constant="no"/>
<attribute name="OC_FARNELL" value="-" constant="no"/>
<attribute name="OC_NEWARK" value="32T8795" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±5%" constant="no"/>
<attribute name="VALUE" value="15pF" constant="no"/>
<attribute name="VOLTAGERATING" value="200V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UQCL2A8R2CAT2A/500" prefix="C">
<description>Capacitor 0402</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1005X60N">
<connects>
<connect gate="A" pin="C1" pad="2"/>
<connect gate="A" pin="C2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="UQCL2A8R2CAT2A/500" constant="no"/>
<attribute name="OC_FARNELL" value="-" constant="no"/>
<attribute name="OC_NEWARK" value="32T8828" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±.25 pF" constant="no"/>
<attribute name="VALUE" value="8.2pF" constant="no"/>
<attribute name="VOLTAGERATING" value="200V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UQCL2A0R5BAT2A/500" prefix="C">
<description>Capacitor 0402</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1005X60N">
<connects>
<connect gate="A" pin="C1" pad="2"/>
<connect gate="A" pin="C2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="UQCL2A0R5BAT2A/500" constant="no"/>
<attribute name="OC_FARNELL" value="-" constant="no"/>
<attribute name="OC_NEWARK" value="32T8767" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±.1 pF" constant="no"/>
<attribute name="VALUE" value="0.5pF" constant="no"/>
<attribute name="VOLTAGERATING" value="200V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UQCL2A1R0BAT2A/500" prefix="C">
<description>Capacitor 0402</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1005X60N">
<connects>
<connect gate="A" pin="C1" pad="2"/>
<connect gate="A" pin="C2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="UQCL2A1R0BAT2A/500" constant="no"/>
<attribute name="OC_FARNELL" value="-" constant="no"/>
<attribute name="OC_NEWARK" value="32T8778" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±.1 pF" constant="no"/>
<attribute name="VALUE" value="1pF" constant="no"/>
<attribute name="VOLTAGERATING" value="200V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0805AA100MAT1A" prefix="C">
<description>Capacitor 0805</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC2012X130N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="0805AA100MAT1A" constant="no"/>
<attribute name="OC_FARNELL" value="-" constant="no"/>
<attribute name="OC_NEWARK" value="18M6883" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±20%" constant="no"/>
<attribute name="VALUE" value="10pF" constant="no"/>
<attribute name="VOLTAGERATING" value="1000V (1kV)" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="12107C102JAT2A" prefix="C">
<description>Capacitor 1210</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC3225X127N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="12107C102JAT2A" constant="no"/>
<attribute name="OC_FARNELL" value="-" constant="no"/>
<attribute name="OC_NEWARK" value="56J0850" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±5%" constant="no"/>
<attribute name="VALUE" value="1000PF" constant="no"/>
<attribute name="VOLTAGERATING" value="500V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MINI_SMT_8_PIN_CONNECTOR">
<packages>
<package name="8PIN_SMT_CONNECTOR">
<smd name="1" x="-19.05" y="3.81" dx="1.27" dy="0.635" layer="1"/>
<smd name="2" x="-19.05" y="2.54" dx="1.27" dy="0.635" layer="1"/>
<smd name="3" x="-19.05" y="1.27" dx="1.27" dy="0.635" layer="1"/>
<smd name="4" x="-19.05" y="0" dx="1.27" dy="0.635" layer="1"/>
<smd name="5" x="-19.05" y="-1.27" dx="1.27" dy="0.635" layer="1"/>
<smd name="6" x="-19.05" y="-2.54" dx="1.27" dy="0.635" layer="1"/>
<smd name="7" x="-19.05" y="-3.81" dx="1.27" dy="0.635" layer="1"/>
<smd name="8" x="-19.05" y="-5.08" dx="1.27" dy="0.635" layer="1"/>
<smd name="CASE@1" x="-19.05" y="-7.62" dx="1.27" dy="0.635" layer="1"/>
<smd name="CASE@4" x="-19.05" y="6.35" dx="1.27" dy="0.635" layer="1"/>
<smd name="CASE@3" x="-31.75" y="6.35" dx="1.27" dy="0.635" layer="1"/>
<smd name="CASE@2" x="-31.75" y="-7.62" dx="1.27" dy="0.635" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="8PIN_SMT_CONNECTOR">
<pin name="VCHG" x="-12.7" y="12.7" length="middle"/>
<pin name="SPI_MOSI" x="-12.7" y="10.16" length="middle"/>
<pin name="SPI_CLK" x="-12.7" y="7.62" length="middle"/>
<pin name="SPI_CSB" x="-12.7" y="5.08" length="middle"/>
<pin name="SPI_MISO" x="-12.7" y="2.54" length="middle"/>
<pin name="SER-" x="-12.7" y="0" length="middle"/>
<pin name="SER+" x="-12.7" y="-2.54" length="middle"/>
<pin name="GND" x="-12.7" y="-5.08" length="middle"/>
<wire x1="-7.62" y1="15.24" x2="-7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="7.62" y2="-17.78" width="0.254" layer="94"/>
<pin name="CASE" x="-12.7" y="-7.62" length="middle"/>
<pin name="CASE@2" x="-12.7" y="-10.16" length="middle"/>
<pin name="CASE@3" x="-12.7" y="-12.7" length="middle"/>
<pin name="CASE@4" x="-12.7" y="-15.24" length="middle"/>
<wire x1="7.62" y1="-17.78" x2="-7.62" y2="-17.78" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="8PIN_SMT_CONNECTOR">
<gates>
<gate name="G$1" symbol="8PIN_SMT_CONNECTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="8PIN_SMT_CONNECTOR">
<connects>
<connect gate="G$1" pin="CASE" pad="CASE@1"/>
<connect gate="G$1" pin="CASE@2" pad="CASE@2"/>
<connect gate="G$1" pin="CASE@3" pad="CASE@3"/>
<connect gate="G$1" pin="CASE@4" pad="CASE@4"/>
<connect gate="G$1" pin="GND" pad="8"/>
<connect gate="G$1" pin="SER+" pad="7"/>
<connect gate="G$1" pin="SER-" pad="6"/>
<connect gate="G$1" pin="SPI_CLK" pad="3"/>
<connect gate="G$1" pin="SPI_CSB" pad="4"/>
<connect gate="G$1" pin="SPI_MISO" pad="5"/>
<connect gate="G$1" pin="SPI_MOSI" pad="2"/>
<connect gate="G$1" pin="VCHG" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="resistor-shunt">
<description>&lt;b&gt;Isabellenhuette SMD Shunt Resistors&lt;/b&gt;&lt;p&gt;
www.isabellenhuette.de&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="BVS">
<description>&lt;b&gt;SMD SHUNT RESISTOR&lt;/b&gt;</description>
<wire x1="-4.9" y1="-2.5" x2="-2.5" y2="-2.5" width="0.2032" layer="51"/>
<wire x1="-2.5" y1="-2.5" x2="2.5" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="2.5" y1="-2.5" x2="4.9" y2="-2.5" width="0.2032" layer="51"/>
<wire x1="4.9" y1="-2.5" x2="4.9" y2="2.5" width="0.2032" layer="51"/>
<wire x1="4.9" y1="2.5" x2="2.5" y2="2.5" width="0.2032" layer="51"/>
<wire x1="2.5" y1="2.5" x2="-2.5" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="2.5" x2="-4.9" y2="2.5" width="0.2032" layer="51"/>
<wire x1="-4.9" y1="2.5" x2="-4.9" y2="-2.5" width="0.2032" layer="51"/>
<wire x1="-2.5" y1="-2.5" x2="-2.5" y2="2.5" width="0.2032" layer="21"/>
<wire x1="2.5" y1="2.5" x2="2.5" y2="-2.5" width="0.2032" layer="21"/>
<smd name="1" x="-4.1402" y="0" dx="2.7" dy="6.2" layer="1"/>
<smd name="2" x="4.1402" y="0" dx="2.7" dy="6.2" layer="1"/>
<text x="-2.1336" y="0.7874" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.1336" y="-1.9812" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="R">
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.889" x2="-2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.3716" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-2.921" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="1" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BVS" prefix="R" uservalue="yes">
<description>&lt;b&gt;SMD SHUNT RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BVS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="TSX3225">
<packages>
<package name="TSX3225">
<smd name="2" x="1" y="-0.75" dx="1" dy="0.8" layer="1"/>
<smd name="3" x="1" y="0.75" dx="1" dy="0.8" layer="1"/>
<smd name="4" x="-1" y="0.75" dx="1" dy="0.8" layer="1"/>
<smd name="1" x="-1" y="-0.75" dx="1" dy="0.8" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="TSX3225">
<pin name="GND@1" x="-7.62" y="0.762" visible="pin" length="middle"/>
<pin name="GND@2" x="-7.62" y="-1.016" visible="pin" length="middle"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.254" layer="94"/>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.254" layer="94"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.254" layer="94"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.254" layer="94"/>
<wire x1="-1" y1="1" x2="1" y2="1" width="0.254" layer="94"/>
<wire x1="-1" y1="-1" x2="1" y2="-1" width="0.254" layer="94"/>
<pin name="P$3" x="0" y="6" visible="pin" length="middle" rot="R270"/>
<pin name="P$4" x="0" y="-6" visible="pin" length="middle" rot="R90"/>
<wire x1="-2.54" y1="-1.778" x2="-2.54" y2="1.778" width="0.127" layer="94"/>
<wire x1="-2.54" y1="1.778" x2="2.54" y2="1.778" width="0.127" layer="94"/>
<wire x1="2.54" y1="1.778" x2="2.54" y2="-1.778" width="0.127" layer="94"/>
<wire x1="-2.54" y1="-1.778" x2="2.54" y2="-1.778" width="0.127" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TSX3225">
<gates>
<gate name="G$1" symbol="TSX3225" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TSX3225">
<connects>
<connect gate="G$1" pin="GND@1" pad="2"/>
<connect gate="G$1" pin="GND@2" pad="4"/>
<connect gate="G$1" pin="P$3" pad="1"/>
<connect gate="G$1" pin="P$4" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SSP-T7-F">
<packages>
<package name="SSP-T7-F">
<smd name="1" x="-0.6" y="0.3" dx="1.2" dy="0.6" layer="1"/>
<smd name="4" x="-0.6" y="1.2" dx="1.2" dy="0.6" layer="1"/>
<smd name="2" x="5.7" y="0.3" dx="1.2" dy="0.6" layer="1"/>
<smd name="3" x="5.7" y="1.2" dx="1.2" dy="0.6" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="SSP-T7-F">
<pin name="P$1" x="0" y="0" visible="pin" rot="R270"/>
<pin name="P$2" x="0" y="-18.5" visible="pin" rot="R90"/>
<wire x1="-2" y1="-7.75" x2="2" y2="-7.75" width="0.1" layer="94"/>
<wire x1="2" y1="-8.5" x2="-2" y2="-8.5" width="0.1" layer="94"/>
<wire x1="-2" y1="-8.5" x2="-2" y2="-10" width="0.1" layer="94"/>
<wire x1="-2" y1="-10" x2="2" y2="-10" width="0.1" layer="94"/>
<wire x1="2" y1="-10" x2="2" y2="-8.5" width="0.1" layer="94"/>
<wire x1="2" y1="-10.75" x2="-2" y2="-10.75" width="0.1" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SSP-T7-F">
<gates>
<gate name="G$1" symbol="SSP-T7-F" x="0" y="9.398"/>
</gates>
<devices>
<device name="" package="SSP-T7-F">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BATTERY_2996">
<packages>
<package name="BATTERY_2996">
<smd name="POS@1" x="-17.4625" y="0" dx="3.175" dy="3.175" layer="1"/>
<smd name="POS@2" x="17.4625" y="0" dx="3.175" dy="3.175" layer="1"/>
<smd name="NEG" x="0" y="0" dx="3.175" dy="3.175" layer="1"/>
<text x="2.54" y="2.54" size="1.27" layer="21">-</text>
<text x="-20.32" y="2.54" size="1.27" layer="21">+</text>
<text x="19.05" y="2.54" size="1.27" layer="21">+</text>
</package>
</packages>
<symbols>
<symbol name="BATTERY_2996">
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="-5.08" y="5.08" size="1.27" layer="94">+</text>
<text x="5.842" y="7.62" size="1.27" layer="94">+</text>
<text x="5.842" y="-7.62" size="1.27" layer="94">-</text>
<pin name="POS" x="10.16" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="NEG" x="10.16" y="-7.62" visible="pin" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BATTERY_2996">
<gates>
<gate name="G$1" symbol="BATTERY_2996" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BATTERY_2996">
<connects>
<connect gate="G$1" pin="NEG" pad="NEG"/>
<connect gate="G$1" pin="POS" pad="POS@1"/>
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
<part name="U$1" library="CSR1010A05" deviceset="CSR1010A05-IQQM-R" device=""/>
<part name="VDD1" library="supply1" deviceset="VDD" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="L2" library="AVX_By_element14_Batch_1" deviceset="UQCL2A100JAT2A/500" device="" value="Ferrite Core (MMZ1005Y152C)"/>
<part name="C3" library="AVX_By_element14_Batch_1" deviceset="UQCL2A150JAT2A/500" device="" value="15pF"/>
<part name="C4" library="AVX_By_element14_Batch_1" deviceset="UQCL2A8R2CAT2A/500" device="" value="8.2pF"/>
<part name="C5" library="AVX_By_element14_Batch_1" deviceset="UQCL2A100JAT2A/500" device="" value="10pF"/>
<part name="C6" library="AVX_By_element14_Batch_1" deviceset="UQCL2A100JAT2A/500" device="" value="10pF"/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="C7" library="AVX_By_element14_Batch_1" deviceset="UQCL2A0R5BAT2A/500" device="" value="0.5pF"/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="C9" library="AVX_By_element14_Batch_1" deviceset="UQCL2A100JAT2A/500" device="" value="33p"/>
<part name="C10" library="AVX_By_element14_Batch_1" deviceset="UQCL2A100JAT2A/500" device="" value="4u7"/>
<part name="C11" library="AVX_By_element14_Batch_1" deviceset="UQCL2A100JAT2A/500" device="" value="470n"/>
<part name="C12" library="AVX_By_element14_Batch_1" deviceset="UQCL2A100JAT2A/500" device="" value="470n"/>
<part name="C13" library="AVX_By_element14_Batch_1" deviceset="UQCL2A100JAT2A/500" device="" value="150n"/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="C14" library="AVX_By_element14_Batch_1" deviceset="UQCL2A100JAT2A/500" device="" value="470n"/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="C16" library="AVX_By_element14_Batch_1" deviceset="UQCL2A1R0BAT2A/500" device="" value="47n"/>
<part name="C17" library="AVX_By_element14_Batch_1" deviceset="UQCL2A1R0BAT2A/500" device="" value="4u7"/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="U$2" library="MINI_SMT_8_PIN_CONNECTOR" deviceset="8PIN_SMT_CONNECTOR" device=""/>
<part name="VDD2" library="supply1" deviceset="VDD" device=""/>
<part name="R1" library="resistor-shunt" deviceset="BVS" device=""/>
<part name="R2" library="resistor-shunt" deviceset="BVS" device=""/>
<part name="C18" library="AVX_By_element14_Batch_1" deviceset="0805AA100MAT1A" device="" value="47uF"/>
<part name="C19" library="AVX_By_element14_Batch_1" deviceset="0805AA100MAT1A" device="" value="47n"/>
<part name="L1" library="AVX_By_element14_Batch_1" deviceset="12107C102JAT2A" device="" value="4.7uH"/>
<part name="U$3" library="TSX3225" deviceset="TSX3225" device=""/>
<part name="U$4" library="SSP-T7-F" deviceset="SSP-T7-F" device=""/>
<part name="U$5" library="BATTERY_2996" deviceset="BATTERY_2996" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-38.1" y="-7.62" size="1.778" layer="91">Optional</text>
<text x="-38.1" y="-10.16" size="1.778" layer="91">Solder jumpers</text>
</plain>
<instances>
<instance part="ADC1" gate="A" x="50.8" y="50.8" rot="R180"/>
<instance part="GND1" gate="1" x="76.2" y="-30.48"/>
<instance part="U2" gate="A" x="50.8" y="104.14" rot="MR0"/>
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
<instance part="U$1" gate="G$1" x="-58.42" y="55.88"/>
<instance part="VDD1" gate="G$1" x="78.74" y="119.38"/>
<instance part="GND2" gate="1" x="27.94" y="-71.12"/>
<instance part="L2" gate="A" x="-119.38" y="83.82" rot="R90"/>
<instance part="C3" gate="A" x="-91.44" y="0" rot="R90"/>
<instance part="C4" gate="A" x="-76.2" y="0" rot="R90"/>
<instance part="C5" gate="A" x="-120.65" y="73.66" rot="R180"/>
<instance part="C6" gate="A" x="-120.65" y="66.04" rot="R180"/>
<instance part="GND3" gate="1" x="-83.82" y="-7.366"/>
<instance part="GND4" gate="1" x="-129.54" y="60.96"/>
<instance part="C7" gate="A" x="-106.68" y="27.94" rot="R90"/>
<instance part="GND5" gate="1" x="-106.68" y="25.4"/>
<instance part="C9" gate="A" x="-129.54" y="73.66" rot="R90"/>
<instance part="C10" gate="A" x="-121.92" y="12.7" rot="R90"/>
<instance part="C11" gate="A" x="-137.16" y="12.7" rot="R90"/>
<instance part="C12" gate="A" x="-76.2" y="109.22" rot="R90"/>
<instance part="C13" gate="A" x="-68.58" y="109.22" rot="R90"/>
<instance part="GND6" gate="1" x="-81.28" y="116.84"/>
<instance part="GND7" gate="1" x="-131.064" y="10.16"/>
<instance part="C14" gate="A" x="-99.06" y="12.7" rot="R90"/>
<instance part="GND8" gate="1" x="-114.3" y="55.88"/>
<instance part="GND9" gate="1" x="-165.1" y="27.94"/>
<instance part="C16" gate="A" x="-137.16" y="109.22" rot="R270"/>
<instance part="C17" gate="A" x="-129.54" y="109.22" rot="R270"/>
<instance part="GND10" gate="1" x="-154.94" y="91.44"/>
<instance part="U$2" gate="G$1" x="43.18" y="-48.26"/>
<instance part="VDD2" gate="G$1" x="30.48" y="-25.4"/>
<instance part="R1" gate="G$1" x="-48.26" y="-12.7" rot="R90"/>
<instance part="R2" gate="G$1" x="-40.64" y="-12.7" rot="R90"/>
<instance part="C18" gate="A" x="-154.94" y="101.6" rot="R90"/>
<instance part="C19" gate="A" x="-144.78" y="101.6" rot="R90"/>
<instance part="L1" gate="A" x="-134.62" y="43.18" rot="R180"/>
<instance part="U$3" gate="G$1" x="-83.82" y="10.16" rot="R90"/>
<instance part="U$4" gate="G$1" x="-100.33" y="69.85" rot="R270"/>
<instance part="U$5" gate="G$1" x="-172.72" y="101.6"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$21" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CLK"/>
<wire x1="30.48" y1="43.18" x2="27.94" y2="43.18" width="0.1524" layer="91"/>
<wire x1="27.94" y1="43.18" x2="27.94" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PIO[5]/DEBUG_CLK"/>
<wire x1="27.94" y1="35.56" x2="-22.86" y2="35.56" width="0.1524" layer="91"/>
<wire x1="27.94" y1="35.56" x2="27.94" y2="-10.16" width="0.1524" layer="91"/>
<junction x="27.94" y="35.56"/>
<pinref part="ADC0" gate="A" pin="CLK"/>
<wire x1="27.94" y1="-10.16" x2="30.48" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-10.16" x2="27.94" y2="-40.64" width="0.1524" layer="91"/>
<junction x="27.94" y="-10.16"/>
<pinref part="U$2" gate="G$1" pin="SPI_CLK"/>
<wire x1="27.94" y1="-40.64" x2="30.48" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="DOUT"/>
<wire x1="25.4" y1="5.08" x2="30.48" y2="5.08" width="0.1524" layer="91"/>
<wire x1="25.4" y1="5.08" x2="25.4" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="SPI_MISO"/>
<wire x1="25.4" y1="-45.72" x2="30.48" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="25.4" y1="5.08" x2="25.4" y2="58.42" width="0.1524" layer="91"/>
<junction x="25.4" y="5.08"/>
<pinref part="U$1" gate="G$1" pin="PIO[8]/DEBUG_MISO"/>
<wire x1="25.4" y1="58.42" x2="25.4" y2="66.04" width="0.1524" layer="91"/>
<wire x1="25.4" y1="66.04" x2="-22.86" y2="66.04" width="0.1524" layer="91"/>
<pinref part="ADC1" gate="A" pin="DOUT"/>
<wire x1="30.48" y1="58.42" x2="25.4" y2="58.42" width="0.1524" layer="91"/>
<junction x="25.4" y="58.42"/>
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
<wire x1="73.66" y1="27.94" x2="22.86" y2="27.94" width="0.1524" layer="91"/>
<wire x1="22.86" y1="27.94" x2="22.86" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PIO[7]/DEBUG_MOSI"/>
<wire x1="22.86" y1="50.8" x2="-22.86" y2="50.8" width="0.1524" layer="91"/>
<wire x1="22.86" y1="27.94" x2="22.86" y2="-38.1" width="0.1524" layer="91"/>
<junction x="22.86" y="27.94"/>
<pinref part="U$2" gate="G$1" pin="SPI_MOSI"/>
<wire x1="22.86" y1="-38.1" x2="30.48" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="*CS/SHDN"/>
<wire x1="30.48" y1="48.26" x2="20.32" y2="48.26" width="0.1524" layer="91"/>
<wire x1="20.32" y1="48.26" x2="20.32" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PIO[9]"/>
<wire x1="-22.86" y1="73.66" x2="20.32" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="*CS/SHDN"/>
<wire x1="30.48" y1="-5.08" x2="25.4" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PIO[4]/SF_CS#"/>
<wire x1="25.4" y1="-5.08" x2="22.86" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="27.94" x2="-15.24" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="27.94" x2="-15.24" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="-5.08" x2="22.86" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="DGND"/>
<wire x1="76.2" y1="71.12" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="DGND"/>
<wire x1="76.2" y1="68.58" x2="76.2" y2="17.78" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="AGND"/>
<wire x1="76.2" y1="15.24" x2="76.2" y2="17.78" width="0.1524" layer="91"/>
<pinref part="ADC1" gate="A" pin="AGND"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="76.2" y1="71.12" x2="76.2" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="GND"/>
<wire x1="76.2" y1="91.44" x2="76.2" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="A2"/>
<wire x1="76.2" y1="96.52" x2="76.2" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="A1"/>
<wire x1="76.2" y1="104.14" x2="76.2" y2="106.68" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="A0"/>
<pinref part="U2" gate="A" pin="WP"/>
<wire x1="66.04" y1="106.68" x2="76.2" y2="106.68" width="0.1524" layer="91"/>
<wire x1="66.04" y1="104.14" x2="76.2" y2="104.14" width="0.1524" layer="91"/>
<junction x="76.2" y="104.14"/>
<wire x1="76.2" y1="104.14" x2="76.2" y2="101.6" width="0.1524" layer="91"/>
<junction x="76.2" y="-27.94"/>
<wire x1="76.2" y1="15.24" x2="76.2" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="71.12" y1="68.58" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<junction x="76.2" y="68.58"/>
<wire x1="71.12" y1="17.78" x2="76.2" y2="17.78" width="0.1524" layer="91"/>
<junction x="76.2" y="17.78"/>
<wire x1="71.12" y1="15.24" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
<junction x="76.2" y="15.24"/>
<wire x1="71.12" y1="71.12" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<junction x="76.2" y="71.12"/>
<wire x1="66.04" y1="101.6" x2="76.2" y2="101.6" width="0.1524" layer="91"/>
<junction x="76.2" y="101.6"/>
<wire x1="66.04" y1="96.52" x2="76.2" y2="96.52" width="0.1524" layer="91"/>
<junction x="76.2" y="96.52"/>
<wire x1="66.04" y1="91.44" x2="76.2" y2="91.44" width="0.1524" layer="91"/>
<junction x="76.2" y="91.44"/>
</segment>
<segment>
<pinref part="C11" gate="A" pin="C1"/>
<pinref part="C10" gate="A" pin="C1"/>
<wire x1="-137.16" y1="12.7" x2="-131.064" y2="12.7" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="-131.064" y1="12.7" x2="-121.92" y2="12.7" width="0.1524" layer="91"/>
<junction x="-131.064" y="12.7"/>
</segment>
<segment>
<pinref part="C7" gate="A" pin="C1"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="WAKE"/>
<wire x1="-96.52" y1="58.42" x2="-114.3" y2="58.42" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="-106.68" y1="35.56" x2="-165.1" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="RF"/>
<pinref part="C7" gate="A" pin="C2"/>
<wire x1="-96.52" y1="35.56" x2="-104.14" y2="35.56" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="-165.1" y1="35.56" x2="-165.1" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="35.56" x2="-104.14" y2="35.56" width="0.1524" layer="91"/>
<junction x="-106.68" y="35.56"/>
</segment>
<segment>
<pinref part="C18" gate="A" pin="C1"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="-154.94" y1="93.98" x2="-154.94" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="NEG"/>
<wire x1="-162.56" y1="93.98" x2="-154.94" y2="93.98" width="0.1524" layer="91"/>
<junction x="-154.94" y="93.98"/>
<pinref part="C17" gate="A" pin="C2"/>
<pinref part="C16" gate="A" pin="C2"/>
<wire x1="-129.54" y1="101.6" x2="-137.16" y2="101.6" width="0.1524" layer="91"/>
<junction x="-137.16" y="101.6"/>
<wire x1="-137.16" y1="101.6" x2="-144.78" y2="101.6" width="0.1524" layer="91"/>
<pinref part="C19" gate="A" pin="C1"/>
<wire x1="-154.94" y1="101.6" x2="-144.78" y2="101.6" width="0.1524" layer="91"/>
<junction x="-154.94" y="101.6"/>
<junction x="-144.78" y="101.6"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="C9" gate="A" pin="C1"/>
<wire x1="-129.54" y1="63.5" x2="-129.54" y2="66.04" width="0.1524" layer="91"/>
<pinref part="C5" gate="A" pin="C2"/>
<wire x1="-129.54" y1="66.04" x2="-129.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-128.27" y1="73.66" x2="-129.54" y2="73.66" width="0.1524" layer="91"/>
<junction x="-129.54" y="73.66"/>
<pinref part="C6" gate="A" pin="C2"/>
<wire x1="-128.27" y1="66.04" x2="-129.54" y2="66.04" width="0.1524" layer="91"/>
<junction x="-129.54" y="66.04"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="27.94" y1="-68.58" x2="27.94" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="CASE@4"/>
<wire x1="30.48" y1="-63.5" x2="27.94" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="30.48" y1="-53.34" x2="27.94" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-53.34" x2="27.94" y2="-55.88" width="0.1524" layer="91"/>
<junction x="27.94" y="-63.5"/>
<pinref part="U$2" gate="G$1" pin="CASE@3"/>
<wire x1="27.94" y1="-55.88" x2="27.94" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-58.42" x2="27.94" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-60.96" x2="27.94" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-60.96" x2="27.94" y2="-60.96" width="0.1524" layer="91"/>
<junction x="27.94" y="-60.96"/>
<pinref part="U$2" gate="G$1" pin="CASE@2"/>
<wire x1="30.48" y1="-58.42" x2="27.94" y2="-58.42" width="0.1524" layer="91"/>
<junction x="27.94" y="-58.42"/>
<pinref part="U$2" gate="G$1" pin="CASE"/>
<wire x1="30.48" y1="-55.88" x2="27.94" y2="-55.88" width="0.1524" layer="91"/>
<junction x="27.94" y="-55.88"/>
</segment>
<segment>
<pinref part="C13" gate="A" pin="C2"/>
<wire x1="-68.58" y1="119.38" x2="-68.58" y2="116.84" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="-81.28" y1="119.38" x2="-68.58" y2="119.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND@1"/>
<pinref part="U$3" gate="G$1" pin="GND@2"/>
<wire x1="-84.582" y1="2.54" x2="-83.82" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="2.54" x2="-82.804" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="2.54" x2="-83.82" y2="0" width="0.1524" layer="91"/>
<junction x="-83.82" y="2.54"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="-83.82" y1="0" x2="-83.82" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-2.54" x2="-83.82" y2="-4.826" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-4.826" x2="-83.82" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-83.82" y="-4.826"/>
<pinref part="C3" gate="A" pin="C1"/>
<wire x1="-91.44" y1="0" x2="-83.82" y2="0" width="0.1524" layer="91"/>
<junction x="-83.82" y="0"/>
<pinref part="C4" gate="A" pin="C1"/>
<wire x1="-83.82" y1="0" x2="-76.2" y2="0" width="0.1524" layer="91"/>
<pinref part="C14" gate="A" pin="C1"/>
<wire x1="-99.06" y1="12.7" x2="-99.06" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-99.06" y1="-2.54" x2="-83.82" y2="-2.54" width="0.1524" layer="91"/>
<junction x="-83.82" y="-2.54"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U2" gate="A" pin="SDA"/>
<pinref part="U$1" gate="G$1" pin="I2C_SDA"/>
<wire x1="35.56" y1="111.76" x2="-63.5" y2="111.76" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="91.44" x2="-63.5" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="I2C_SCL"/>
<wire x1="-55.88" y1="91.44" x2="-55.88" y2="104.14" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="SCL"/>
<wire x1="35.56" y1="104.14" x2="-55.88" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<wire x1="-71.12" y1="99.06" x2="-99.06" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-99.06" y1="99.06" x2="-99.06" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VDD_CORE"/>
<wire x1="-99.06" y1="50.8" x2="-96.52" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VDD_CORE@1"/>
<wire x1="-71.12" y1="91.44" x2="-71.12" y2="99.06" width="0.1524" layer="91"/>
<pinref part="C12" gate="A" pin="C1"/>
<pinref part="C13" gate="A" pin="C1"/>
<wire x1="-76.2" y1="109.22" x2="-71.12" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="109.22" x2="-68.58" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="99.06" x2="-71.12" y2="109.22" width="0.1524" layer="91"/>
<junction x="-71.12" y="99.06"/>
<junction x="-71.12" y="109.22"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VDD_XTAL"/>
<wire x1="-96.52" y1="27.94" x2="-99.06" y2="27.94" width="0.1524" layer="91"/>
<pinref part="C14" gate="A" pin="C2"/>
<wire x1="-99.06" y1="27.94" x2="-99.06" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="-147.32" y1="96.52" x2="-78.74" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="SMPS_LX"/>
<wire x1="-78.74" y1="96.52" x2="-78.74" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-147.32" y1="96.52" x2="-147.32" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-147.32" y1="43.18" x2="-142.24" y2="43.18" width="0.1524" layer="91"/>
<pinref part="L1" gate="A" pin="C2"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH7"/>
<pinref part="CH7" gate="1" pin="MP"/>
<wire x1="71.12" y1="5.08" x2="96.52" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="CH6" gate="1" pin="MP"/>
<pinref part="ADC0" gate="A" pin="CH6"/>
<wire x1="91.44" y1="2.54" x2="71.12" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH5"/>
<pinref part="CH5" gate="1" pin="MP"/>
<wire x1="71.12" y1="0" x2="96.52" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH4"/>
<pinref part="CH4" gate="1" pin="MP"/>
<wire x1="71.12" y1="-2.54" x2="91.44" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH3"/>
<pinref part="CH3" gate="1" pin="MP"/>
<wire x1="71.12" y1="-5.08" x2="96.52" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH2"/>
<pinref part="CH2" gate="1" pin="MP"/>
<wire x1="71.12" y1="-7.62" x2="91.44" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH1"/>
<pinref part="CH1" gate="1" pin="MP"/>
<wire x1="71.12" y1="-10.16" x2="96.52" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="ADC0" gate="A" pin="CH0"/>
<pinref part="CH0" gate="1" pin="MP"/>
<wire x1="71.12" y1="-12.7" x2="91.44" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH7"/>
<pinref part="CH15" gate="1" pin="MP"/>
<wire x1="71.12" y1="58.42" x2="96.52" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH6"/>
<pinref part="CH14" gate="1" pin="MP"/>
<wire x1="71.12" y1="55.88" x2="91.44" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH5"/>
<pinref part="CH13" gate="1" pin="MP"/>
<wire x1="71.12" y1="53.34" x2="96.52" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH4"/>
<pinref part="CH12" gate="1" pin="MP"/>
<wire x1="71.12" y1="50.8" x2="91.44" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH3"/>
<pinref part="CH11" gate="1" pin="MP"/>
<wire x1="71.12" y1="48.26" x2="96.52" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH2"/>
<pinref part="CH10" gate="1" pin="MP"/>
<wire x1="71.12" y1="45.72" x2="91.44" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH1"/>
<pinref part="CH9" gate="1" pin="MP"/>
<wire x1="71.12" y1="43.18" x2="96.52" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="CH0"/>
<pinref part="CH8" gate="1" pin="MP"/>
<wire x1="71.12" y1="40.64" x2="91.44" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="ADC1" gate="A" pin="VDD"/>
<wire x1="78.74" y1="66.04" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
<pinref part="ADC0" gate="A" pin="VDD"/>
<wire x1="78.74" y1="60.96" x2="78.74" y2="12.7" width="0.1524" layer="91"/>
<wire x1="78.74" y1="66.04" x2="78.74" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="VCC"/>
<wire x1="66.04" y1="111.76" x2="78.74" y2="111.76" width="0.1524" layer="91"/>
<wire x1="71.12" y1="66.04" x2="78.74" y2="66.04" width="0.1524" layer="91"/>
<junction x="78.74" y="66.04"/>
<wire x1="71.12" y1="12.7" x2="78.74" y2="12.7" width="0.1524" layer="91"/>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<wire x1="78.74" y1="111.76" x2="78.74" y2="116.84" width="0.1524" layer="91"/>
<junction x="78.74" y="111.76"/>
<pinref part="ADC1" gate="A" pin="VREF"/>
<pinref part="ADC0" gate="A" pin="VREF"/>
<wire x1="71.12" y1="10.16" x2="81.28" y2="10.16" width="0.1524" layer="91"/>
<wire x1="81.28" y1="63.5" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
<wire x1="81.28" y1="60.96" x2="81.28" y2="10.16" width="0.1524" layer="91"/>
<wire x1="71.12" y1="63.5" x2="81.28" y2="63.5" width="0.1524" layer="91"/>
<wire x1="81.28" y1="60.96" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
<junction x="81.28" y="60.96"/>
<junction x="78.74" y="60.96"/>
</segment>
<segment>
<pinref part="VDD2" gate="G$1" pin="VDD"/>
<pinref part="U$2" gate="G$1" pin="VCHG"/>
<wire x1="30.48" y1="-27.94" x2="30.48" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="C9" gate="A" pin="C2"/>
<pinref part="U$1" gate="G$1" pin="VDD_BAT"/>
<wire x1="-129.54" y1="81.28" x2="-119.38" y2="81.28" width="0.1524" layer="91"/>
<pinref part="L2" gate="A" pin="C1"/>
<wire x1="-119.38" y1="81.28" x2="-96.52" y2="81.28" width="0.1524" layer="91"/>
<wire x1="-119.38" y1="83.82" x2="-119.38" y2="81.28" width="0.1524" layer="91"/>
<junction x="-119.38" y="81.28"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="-15.24" y1="58.42" x2="-15.24" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VDD_PADS"/>
<wire x1="-22.86" y1="58.42" x2="-15.24" y2="58.42" width="0.1524" layer="91"/>
<pinref part="C17" gate="A" pin="C1"/>
<wire x1="-129.54" y1="109.22" x2="-137.16" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C16" gate="A" pin="C1"/>
<junction x="-137.16" y="109.22"/>
<pinref part="L2" gate="A" pin="C2"/>
<wire x1="-119.38" y1="91.44" x2="-119.38" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-119.38" y1="109.22" x2="-86.36" y2="109.22" width="0.1524" layer="91"/>
<junction x="-119.38" y="109.22"/>
<pinref part="U$1" gate="G$1" pin="VDD_BAT_SMPS"/>
<wire x1="-86.36" y1="109.22" x2="-86.36" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="93.98" x2="-86.36" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="93.98" x2="-86.36" y2="93.98" width="0.1524" layer="91"/>
<junction x="-86.36" y="93.98"/>
<wire x1="-129.54" y1="109.22" x2="-119.38" y2="109.22" width="0.1524" layer="91"/>
<junction x="-129.54" y="109.22"/>
<wire x1="-144.78" y1="109.22" x2="-137.16" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C19" gate="A" pin="C2"/>
<pinref part="C18" gate="A" pin="C2"/>
<wire x1="-144.78" y1="109.22" x2="-154.94" y2="109.22" width="0.1524" layer="91"/>
<junction x="-144.78" y="109.22"/>
<pinref part="U$5" gate="G$1" pin="POS"/>
<wire x1="-154.94" y1="109.22" x2="-162.56" y2="109.22" width="0.1524" layer="91"/>
<junction x="-154.94" y="109.22"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PIO[6]/DEBUG_CS#"/>
<wire x1="-22.86" y1="43.18" x2="20.32" y2="43.18" width="0.1524" layer="91"/>
<wire x1="20.32" y1="43.18" x2="20.32" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="SPI_CSB"/>
<wire x1="20.32" y1="-43.18" x2="30.48" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SER-"/>
<wire x1="30.48" y1="-48.26" x2="-40.64" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-48.26" x2="-48.26" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-48.26" y1="-17.78" x2="-48.26" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SER+"/>
<wire x1="-40.64" y1="-43.18" x2="-33.02" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-50.8" x2="30.48" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="-40.64" y1="-43.18" x2="-40.64" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="U$1" gate="G$1" pin="PIO[0]/UART_TX"/>
<wire x1="-48.26" y1="-7.62" x2="-48.26" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PIO[1]/UART_RX"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-40.64" y1="17.78" x2="-40.64" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="C11" gate="A" pin="C2"/>
<pinref part="C10" gate="A" pin="C2"/>
<wire x1="-137.16" y1="20.32" x2="-129.54" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VDD_REG_IN"/>
<wire x1="-129.54" y1="20.32" x2="-121.92" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="43.18" x2="-129.54" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="43.18" x2="-134.62" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="20.32" x2="-129.54" y2="43.18" width="0.1524" layer="91"/>
<junction x="-129.54" y="20.32"/>
<junction x="-129.54" y="43.18"/>
<pinref part="L1" gate="A" pin="C1"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="C12" gate="A" pin="C2"/>
<wire x1="-76.2" y1="116.84" x2="-76.2" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="XTAL_16M_OUT"/>
<wire x1="-86.36" y1="17.78" x2="-91.44" y2="17.78" width="0.1524" layer="91"/>
<pinref part="C3" gate="A" pin="C2"/>
<wire x1="-91.44" y1="17.78" x2="-91.44" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="10.16" x2="-91.44" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-89.916" y1="10.16" x2="-91.44" y2="10.16" width="0.1524" layer="91"/>
<junction x="-91.44" y="10.16"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="XTAL_16M_IN"/>
<wire x1="-78.74" y1="17.78" x2="-76.2" y2="17.78" width="0.1524" layer="91"/>
<pinref part="C4" gate="A" pin="C2"/>
<wire x1="-76.2" y1="17.78" x2="-76.2" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="10.16" x2="-76.2" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-77.724" y1="10.16" x2="-76.2" y2="10.16" width="0.1524" layer="91"/>
<junction x="-76.2" y="10.16"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="C5" gate="A" pin="C1"/>
<wire x1="-120.65" y1="73.66" x2="-118.745" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-118.745" y1="73.66" x2="-118.745" y2="69.85" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="XTAL_32K_OUT"/>
<wire x1="-118.745" y1="73.66" x2="-96.52" y2="73.66" width="0.1524" layer="91"/>
<junction x="-118.745" y="73.66"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="C6" gate="A" pin="C1"/>
<pinref part="U$4" gate="G$1" pin="P$1"/>
<wire x1="-120.65" y1="66.04" x2="-100.33" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-100.33" y1="66.04" x2="-100.33" y2="69.85" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="XTAL_32K_IN"/>
<wire x1="-100.33" y1="66.04" x2="-96.52" y2="66.04" width="0.1524" layer="91"/>
<junction x="-100.33" y="66.04"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
