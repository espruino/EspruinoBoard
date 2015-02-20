<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="espruino_pico">
<packages>
<package name="ESPRUINO">
<pad name="GND" x="24.13" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="VBAT" x="21.59" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="3.3" x="19.05" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B13" x="16.51" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B14" x="13.97" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B15" x="11.43" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C4" x="8.89" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C5" x="6.35" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C6" x="3.81" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C7" x="1.27" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C8" x="-1.27" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C9" x="-3.81" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C10" x="-6.35" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C11" x="-8.89" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A8" x="-11.43" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A9" x="-13.97" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A10" x="-16.51" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A13" x="-19.05" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A14" x="-21.59" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A15" x="-24.13" y="16.51" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B11" x="-3.81" y="13.97" drill="1.016" shape="octagon" rot="R180"/>
<pad name="BOOT0" x="-6.35" y="13.97" drill="1.016" shape="octagon" rot="R180"/>
<pad name="RST" x="-8.89" y="13.97" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B10" x="-3.81" y="11.43" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B1" x="-3.81" y="8.89" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B0" x="-3.81" y="6.35" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A7" x="-3.81" y="3.81" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A6" x="-3.81" y="1.27" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A5" x="-3.81" y="-1.27" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A4" x="-3.81" y="-3.81" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A3" x="-3.81" y="-6.35" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A2" x="-3.81" y="-8.89" drill="1.016" shape="octagon" rot="R180"/>
<pad name="GND." x="24.13" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="VBAT." x="21.59" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="3.3." x="19.05" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A1" x="16.51" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="A0" x="13.97" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C3" x="11.43" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C2" x="8.89" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C1" x="6.35" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C0" x="3.81" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C15" x="1.27" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="C12" x="-1.27" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B12" x="-3.81" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B9" x="-6.35" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B8" x="-8.89" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B7" x="-11.43" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B6" x="-13.97" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B5" x="-16.51" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B4" x="-19.05" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B3" x="-21.59" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<pad name="B2" x="-24.13" y="-19.05" drill="1.016" shape="octagon" rot="R180"/>
<wire x1="-26.67" y1="19.05" x2="26.67" y2="19.05" width="0.127" layer="21"/>
<wire x1="26.67" y1="19.05" x2="26.67" y2="-21.59" width="0.127" layer="21"/>
<wire x1="26.67" y1="-21.59" x2="-26.67" y2="-21.59" width="0.127" layer="21"/>
<wire x1="-26.67" y1="-21.59" x2="-26.67" y2="19.05" width="0.127" layer="21"/>
</package>
<package name="ESPRUINO_PICO_SMDONLY">
<wire x1="7.62" y1="-7.62" x2="-15.24" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-15.24" y1="-7.62" x2="-15.24" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-15.24" y1="-6.35" x2="-26.035" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-26.035" y1="-6.35" x2="-26.035" y2="6.35" width="0.127" layer="21"/>
<wire x1="-26.035" y1="6.35" x2="-15.24" y2="6.35" width="0.127" layer="21"/>
<wire x1="-15.24" y1="6.35" x2="-15.24" y2="7.62" width="0.127" layer="21"/>
<wire x1="-15.24" y1="7.62" x2="7.62" y2="7.62" width="0.127" layer="21"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-7.62" width="0.127" layer="21"/>
<smd name="GND" x="-13.97" y="-7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="5V" x="-11.43" y="-7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="3.3V" x="-8.89" y="-7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B3" x="-6.35" y="-7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B4" x="-3.81" y="-7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B5" x="-1.27" y="-7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B6" x="1.27" y="-7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B7" x="3.81" y="-7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="A8" x="6.35" y="-7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="BAT" x="-13.97" y="7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B15" x="-11.43" y="7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B14" x="-8.89" y="7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B13" x="-6.35" y="7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B10" x="-3.81" y="7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="B1" x="-1.27" y="7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="A7" x="1.27" y="7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="A6" x="3.81" y="7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="A5" x="6.35" y="7.112" dx="1.778" dy="3.048" layer="1"/>
<smd name="A4" x="6.858" y="4.445" dx="1.016" dy="2.032" layer="1" rot="R90"/>
<smd name="A3" x="6.858" y="3.175" dx="1.016" dy="2.032" layer="1" rot="R90"/>
<smd name="A2" x="6.858" y="1.905" dx="1.016" dy="2.032" layer="1" rot="R90"/>
<smd name="A1" x="6.858" y="0.635" dx="1.016" dy="2.032" layer="1" rot="R90"/>
<smd name="A0" x="6.858" y="-0.635" dx="1.016" dy="2.032" layer="1" rot="R90"/>
<smd name="A10" x="6.858" y="-1.905" dx="1.016" dy="2.032" layer="1" rot="R90"/>
<smd name="B9" x="6.858" y="-3.175" dx="1.016" dy="2.032" layer="1" rot="R90"/>
<smd name="B8" x="6.858" y="-4.445" dx="1.016" dy="2.032" layer="1" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="ESPRUINO">
<pin name="B2" x="-35.56" y="20.32" length="middle"/>
<pin name="B3" x="-35.56" y="17.78" length="middle"/>
<pin name="B4" x="-35.56" y="15.24" length="middle"/>
<pin name="B5" x="-35.56" y="12.7" length="middle"/>
<pin name="B6" x="-35.56" y="10.16" length="middle"/>
<pin name="B7" x="-35.56" y="7.62" length="middle"/>
<pin name="B8" x="-35.56" y="5.08" length="middle"/>
<pin name="B9" x="-35.56" y="2.54" length="middle"/>
<pin name="B12" x="-35.56" y="0" length="middle"/>
<pin name="C12" x="-35.56" y="-2.54" length="middle"/>
<pin name="C15" x="-35.56" y="-5.08" length="middle"/>
<pin name="C0" x="-35.56" y="-7.62" length="middle"/>
<pin name="C1" x="-35.56" y="-10.16" length="middle"/>
<pin name="C2" x="-35.56" y="-12.7" length="middle"/>
<pin name="C3" x="-35.56" y="-15.24" length="middle"/>
<pin name="A0" x="-35.56" y="-17.78" length="middle"/>
<pin name="A1" x="-35.56" y="-20.32" length="middle"/>
<pin name="3.3." x="-35.56" y="-22.86" length="middle"/>
<pin name="VBAT." x="-35.56" y="-25.4" length="middle"/>
<pin name="GND." x="-35.56" y="-27.94" length="middle"/>
<pin name="A15" x="17.78" y="20.32" length="middle" rot="R180"/>
<pin name="A14" x="17.78" y="17.78" length="middle" rot="R180"/>
<pin name="A13" x="17.78" y="15.24" length="middle" rot="R180"/>
<pin name="A10" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="A9" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="A8" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="C11" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="C10" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="C9" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="C8" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="C6" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="C7" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="C5" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="C4" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="B15" x="17.78" y="-15.24" length="middle" rot="R180"/>
<pin name="B14" x="17.78" y="-17.78" length="middle" rot="R180"/>
<pin name="B13" x="17.78" y="-20.32" length="middle" rot="R180"/>
<pin name="3.3" x="17.78" y="-22.86" length="middle" rot="R180"/>
<pin name="VBAT" x="17.78" y="-25.4" length="middle" rot="R180"/>
<pin name="GND" x="17.78" y="-27.94" length="middle" rot="R180"/>
<pin name="A2" x="-20.32" y="-35.56" length="middle" rot="R90"/>
<pin name="A3" x="-17.78" y="-35.56" length="middle" rot="R90"/>
<pin name="A4" x="-15.24" y="-35.56" length="middle" rot="R90"/>
<pin name="A5" x="-12.7" y="-35.56" length="middle" rot="R90"/>
<pin name="A6" x="-10.16" y="-35.56" length="middle" rot="R90"/>
<pin name="A7" x="-7.62" y="-35.56" length="middle" rot="R90"/>
<pin name="B0" x="-5.08" y="-35.56" length="middle" rot="R90"/>
<pin name="B1" x="-2.54" y="-35.56" length="middle" rot="R90"/>
<pin name="B10" x="0" y="-35.56" length="middle" rot="R90"/>
<pin name="B11" x="2.54" y="-35.56" length="middle" rot="R90"/>
<wire x1="-30.48" y1="22.86" x2="12.7" y2="22.86" width="0.254" layer="94"/>
<wire x1="12.7" y1="22.86" x2="12.7" y2="-30.48" width="0.254" layer="94"/>
<wire x1="12.7" y1="-30.48" x2="-30.48" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-30.48" y1="-30.48" x2="-30.48" y2="22.86" width="0.254" layer="94"/>
<pin name="RST" x="-12.7" y="27.94" length="middle" rot="R270"/>
<pin name="BOOT0" x="-10.16" y="27.94" length="middle" rot="R270"/>
</symbol>
<symbol name="ESPRUINO_PICO">
<pin name="BAT" x="-7.62" y="7.62" length="middle" rot="R270"/>
<pin name="B15" x="-5.08" y="7.62" length="middle" rot="R270"/>
<pin name="B14" x="-2.54" y="7.62" length="middle" rot="R270"/>
<pin name="B13" x="0" y="7.62" length="middle" rot="R270"/>
<pin name="B10" x="2.54" y="7.62" length="middle" rot="R270"/>
<pin name="B1" x="5.08" y="7.62" length="middle" rot="R270"/>
<pin name="A7" x="7.62" y="7.62" length="middle" rot="R270"/>
<pin name="A6" x="10.16" y="7.62" length="middle" rot="R270"/>
<pin name="A5" x="12.7" y="7.62" length="middle" rot="R270"/>
<pin name="A4" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="A3" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="A2" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="A1" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="A0" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="A10" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="B9" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="B8" x="25.4" y="-17.78" length="middle" rot="R180"/>
<pin name="A8" x="12.7" y="-25.4" length="middle" rot="R90"/>
<pin name="B7" x="10.16" y="-25.4" length="middle" rot="R90"/>
<pin name="B6" x="7.62" y="-25.4" length="middle" rot="R90"/>
<pin name="B5" x="5.08" y="-25.4" length="middle" rot="R90"/>
<pin name="B4" x="2.54" y="-25.4" length="middle" rot="R90"/>
<pin name="B3" x="0" y="-25.4" length="middle" rot="R90"/>
<pin name="3.3V" x="-2.54" y="-25.4" length="middle" rot="R90"/>
<pin name="5V" x="-5.08" y="-25.4" length="middle" rot="R90"/>
<pin name="GND" x="-7.62" y="-25.4" length="middle" rot="R90"/>
<wire x1="-12.7" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="2.54" x2="20.32" y2="-20.32" width="0.254" layer="94"/>
<wire x1="20.32" y1="-20.32" x2="-12.7" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-20.32" x2="-12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-17.78" x2="-25.4" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-25.4" y1="-17.78" x2="-25.4" y2="0" width="0.254" layer="94"/>
<wire x1="-25.4" y1="0" x2="-12.7" y2="0" width="0.254" layer="94"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="2.54" width="0.254" layer="94"/>
<text x="-20.32" y="-7.62" size="1.27" layer="94" rot="MR180">Espruino
Pico</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESPRUINO">
<gates>
<gate name="G$1" symbol="ESPRUINO" x="7.62" y="2.54"/>
</gates>
<devices>
<device name="" package="ESPRUINO">
<connects>
<connect gate="G$1" pin="3.3" pad="3.3"/>
<connect gate="G$1" pin="3.3." pad="3.3."/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A13" pad="A13"/>
<connect gate="G$1" pin="A14" pad="A14"/>
<connect gate="G$1" pin="A15" pad="A15"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="A9" pad="A9"/>
<connect gate="G$1" pin="B0" pad="B0"/>
<connect gate="G$1" pin="B1" pad="B1"/>
<connect gate="G$1" pin="B10" pad="B10"/>
<connect gate="G$1" pin="B11" pad="B11"/>
<connect gate="G$1" pin="B12" pad="B12"/>
<connect gate="G$1" pin="B13" pad="B13"/>
<connect gate="G$1" pin="B14" pad="B14"/>
<connect gate="G$1" pin="B15" pad="B15"/>
<connect gate="G$1" pin="B2" pad="B2"/>
<connect gate="G$1" pin="B3" pad="B3"/>
<connect gate="G$1" pin="B4" pad="B4"/>
<connect gate="G$1" pin="B5" pad="B5"/>
<connect gate="G$1" pin="B6" pad="B6"/>
<connect gate="G$1" pin="B7" pad="B7"/>
<connect gate="G$1" pin="B8" pad="B8"/>
<connect gate="G$1" pin="B9" pad="B9"/>
<connect gate="G$1" pin="BOOT0" pad="BOOT0"/>
<connect gate="G$1" pin="C0" pad="C0"/>
<connect gate="G$1" pin="C1" pad="C1"/>
<connect gate="G$1" pin="C10" pad="C10"/>
<connect gate="G$1" pin="C11" pad="C11"/>
<connect gate="G$1" pin="C12" pad="C12"/>
<connect gate="G$1" pin="C15" pad="C15"/>
<connect gate="G$1" pin="C2" pad="C2"/>
<connect gate="G$1" pin="C3" pad="C3"/>
<connect gate="G$1" pin="C4" pad="C4"/>
<connect gate="G$1" pin="C5" pad="C5"/>
<connect gate="G$1" pin="C6" pad="C6"/>
<connect gate="G$1" pin="C7" pad="C7"/>
<connect gate="G$1" pin="C8" pad="C8"/>
<connect gate="G$1" pin="C9" pad="C9"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND." pad="GND."/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="VBAT" pad="VBAT"/>
<connect gate="G$1" pin="VBAT." pad="VBAT."/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ESPRUINO_PICO_SMDONLY">
<gates>
<gate name="G$1" symbol="ESPRUINO_PICO" x="-10.16" y="7.62"/>
</gates>
<devices>
<device name="" package="ESPRUINO_PICO_SMDONLY">
<connects>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="B1" pad="B1"/>
<connect gate="G$1" pin="B10" pad="B10"/>
<connect gate="G$1" pin="B13" pad="B13"/>
<connect gate="G$1" pin="B14" pad="B14"/>
<connect gate="G$1" pin="B15" pad="B15"/>
<connect gate="G$1" pin="B3" pad="B3"/>
<connect gate="G$1" pin="B4" pad="B4"/>
<connect gate="G$1" pin="B5" pad="B5"/>
<connect gate="G$1" pin="B6" pad="B6"/>
<connect gate="G$1" pin="B7" pad="B7"/>
<connect gate="G$1" pin="B8" pad="B8"/>
<connect gate="G$1" pin="B9" pad="B9"/>
<connect gate="G$1" pin="BAT" pad="BAT"/>
<connect gate="G$1" pin="GND" pad="GND"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="arduino">
<packages>
<package name="ARDUINO">
<wire x1="30.48" y1="-24.13" x2="30.48" y2="-25.654" width="0.127" layer="20"/>
<wire x1="30.48" y1="-25.654" x2="29.464" y2="-26.67" width="0.127" layer="20" curve="-90"/>
<wire x1="29.464" y1="-26.67" x2="-23.114" y2="-26.67" width="0.127" layer="20"/>
<wire x1="-23.114" y1="-26.67" x2="-24.13" y2="-25.654" width="0.127" layer="20" curve="-90"/>
<wire x1="-24.13" y1="-25.654" x2="-24.13" y2="25.6286" width="0.127" layer="20"/>
<wire x1="-24.13" y1="25.6286" x2="-23.114" y2="26.6446" width="0.127" layer="20" curve="-90"/>
<wire x1="-23.114" y1="26.6446" x2="29.21" y2="26.6446" width="0.127" layer="20"/>
<wire x1="29.21" y1="26.6446" x2="30.48" y2="25.3746" width="0.127" layer="20"/>
<wire x1="30.48" y1="25.3746" x2="30.48" y2="13.9446" width="0.127" layer="20"/>
<wire x1="30.48" y1="13.9446" x2="33.02" y2="11.4046" width="0.127" layer="20"/>
<wire x1="33.02" y1="11.4046" x2="33.02" y2="-21.59" width="0.127" layer="20"/>
<wire x1="33.02" y1="-21.59" x2="30.48" y2="-24.13" width="0.127" layer="20"/>
<hole x="30.48" y="-19.05" drill="3.2"/>
<hole x="30.48" y="8.89" drill="3.2"/>
<hole x="-20.32" y="24.13" drill="3.2"/>
<hole x="-21.59" y="-24.13" drill="3.2"/>
<wire x1="24.765" y1="25.4" x2="26.035" y2="25.4" width="0.2032" layer="21"/>
<wire x1="26.035" y1="25.4" x2="26.67" y2="24.765" width="0.2032" layer="21"/>
<wire x1="26.67" y1="23.495" x2="26.035" y2="22.86" width="0.2032" layer="21"/>
<wire x1="21.59" y1="24.765" x2="22.225" y2="25.4" width="0.2032" layer="21"/>
<wire x1="22.225" y1="25.4" x2="23.495" y2="25.4" width="0.2032" layer="21"/>
<wire x1="23.495" y1="25.4" x2="24.13" y2="24.765" width="0.2032" layer="21"/>
<wire x1="24.13" y1="23.495" x2="23.495" y2="22.86" width="0.2032" layer="21"/>
<wire x1="23.495" y1="22.86" x2="22.225" y2="22.86" width="0.2032" layer="21"/>
<wire x1="22.225" y1="22.86" x2="21.59" y2="23.495" width="0.2032" layer="21"/>
<wire x1="24.765" y1="25.4" x2="24.13" y2="24.765" width="0.2032" layer="21"/>
<wire x1="24.13" y1="23.495" x2="24.765" y2="22.86" width="0.2032" layer="21"/>
<wire x1="26.035" y1="22.86" x2="24.765" y2="22.86" width="0.2032" layer="21"/>
<wire x1="17.145" y1="25.4" x2="18.415" y2="25.4" width="0.2032" layer="21"/>
<wire x1="18.415" y1="25.4" x2="19.05" y2="24.765" width="0.2032" layer="21"/>
<wire x1="19.05" y1="23.495" x2="18.415" y2="22.86" width="0.2032" layer="21"/>
<wire x1="19.05" y1="24.765" x2="19.685" y2="25.4" width="0.2032" layer="21"/>
<wire x1="19.685" y1="25.4" x2="20.955" y2="25.4" width="0.2032" layer="21"/>
<wire x1="20.955" y1="25.4" x2="21.59" y2="24.765" width="0.2032" layer="21"/>
<wire x1="21.59" y1="23.495" x2="20.955" y2="22.86" width="0.2032" layer="21"/>
<wire x1="20.955" y1="22.86" x2="19.685" y2="22.86" width="0.2032" layer="21"/>
<wire x1="19.685" y1="22.86" x2="19.05" y2="23.495" width="0.2032" layer="21"/>
<wire x1="13.97" y1="24.765" x2="14.605" y2="25.4" width="0.2032" layer="21"/>
<wire x1="14.605" y1="25.4" x2="15.875" y2="25.4" width="0.2032" layer="21"/>
<wire x1="15.875" y1="25.4" x2="16.51" y2="24.765" width="0.2032" layer="21"/>
<wire x1="16.51" y1="23.495" x2="15.875" y2="22.86" width="0.2032" layer="21"/>
<wire x1="15.875" y1="22.86" x2="14.605" y2="22.86" width="0.2032" layer="21"/>
<wire x1="14.605" y1="22.86" x2="13.97" y2="23.495" width="0.2032" layer="21"/>
<wire x1="17.145" y1="25.4" x2="16.51" y2="24.765" width="0.2032" layer="21"/>
<wire x1="16.51" y1="23.495" x2="17.145" y2="22.86" width="0.2032" layer="21"/>
<wire x1="18.415" y1="22.86" x2="17.145" y2="22.86" width="0.2032" layer="21"/>
<wire x1="9.525" y1="25.4" x2="10.795" y2="25.4" width="0.2032" layer="21"/>
<wire x1="10.795" y1="25.4" x2="11.43" y2="24.765" width="0.2032" layer="21"/>
<wire x1="11.43" y1="23.495" x2="10.795" y2="22.86" width="0.2032" layer="21"/>
<wire x1="11.43" y1="24.765" x2="12.065" y2="25.4" width="0.2032" layer="21"/>
<wire x1="12.065" y1="25.4" x2="13.335" y2="25.4" width="0.2032" layer="21"/>
<wire x1="13.335" y1="25.4" x2="13.97" y2="24.765" width="0.2032" layer="21"/>
<wire x1="13.97" y1="23.495" x2="13.335" y2="22.86" width="0.2032" layer="21"/>
<wire x1="13.335" y1="22.86" x2="12.065" y2="22.86" width="0.2032" layer="21"/>
<wire x1="12.065" y1="22.86" x2="11.43" y2="23.495" width="0.2032" layer="21"/>
<wire x1="8.89" y1="24.765" x2="8.89" y2="23.495" width="0.2032" layer="21"/>
<wire x1="9.525" y1="25.4" x2="8.89" y2="24.765" width="0.2032" layer="21"/>
<wire x1="8.89" y1="23.495" x2="9.525" y2="22.86" width="0.2032" layer="21"/>
<wire x1="10.795" y1="22.86" x2="9.525" y2="22.86" width="0.2032" layer="21"/>
<wire x1="27.305" y1="25.4" x2="28.575" y2="25.4" width="0.2032" layer="21"/>
<wire x1="28.575" y1="25.4" x2="29.21" y2="24.765" width="0.2032" layer="21"/>
<wire x1="29.21" y1="24.765" x2="29.21" y2="23.495" width="0.2032" layer="21"/>
<wire x1="29.21" y1="23.495" x2="28.575" y2="22.86" width="0.2032" layer="21"/>
<wire x1="27.305" y1="25.4" x2="26.67" y2="24.765" width="0.2032" layer="21"/>
<wire x1="26.67" y1="23.495" x2="27.305" y2="22.86" width="0.2032" layer="21"/>
<wire x1="28.575" y1="22.86" x2="27.305" y2="22.86" width="0.2032" layer="21"/>
<wire x1="2.921" y1="25.4" x2="4.191" y2="25.4" width="0.2032" layer="21"/>
<wire x1="4.191" y1="25.4" x2="4.826" y2="24.765" width="0.2032" layer="21"/>
<wire x1="4.826" y1="23.495" x2="4.191" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-0.254" y1="24.765" x2="0.381" y2="25.4" width="0.2032" layer="21"/>
<wire x1="0.381" y1="25.4" x2="1.651" y2="25.4" width="0.2032" layer="21"/>
<wire x1="1.651" y1="25.4" x2="2.286" y2="24.765" width="0.2032" layer="21"/>
<wire x1="2.286" y1="23.495" x2="1.651" y2="22.86" width="0.2032" layer="21"/>
<wire x1="1.651" y1="22.86" x2="0.381" y2="22.86" width="0.2032" layer="21"/>
<wire x1="0.381" y1="22.86" x2="-0.254" y2="23.495" width="0.2032" layer="21"/>
<wire x1="2.921" y1="25.4" x2="2.286" y2="24.765" width="0.2032" layer="21"/>
<wire x1="2.286" y1="23.495" x2="2.921" y2="22.86" width="0.2032" layer="21"/>
<wire x1="4.191" y1="22.86" x2="2.921" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-4.699" y1="25.4" x2="-3.429" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-3.429" y1="25.4" x2="-2.794" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-2.794" y1="23.495" x2="-3.429" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-2.794" y1="24.765" x2="-2.159" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="25.4" x2="-0.889" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-0.889" y1="25.4" x2="-0.254" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-0.254" y1="23.495" x2="-0.889" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-0.889" y1="22.86" x2="-2.159" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="22.86" x2="-2.794" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-7.874" y1="24.765" x2="-7.239" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-7.239" y1="25.4" x2="-5.969" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-5.969" y1="25.4" x2="-5.334" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-5.334" y1="23.495" x2="-5.969" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-5.969" y1="22.86" x2="-7.239" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-7.239" y1="22.86" x2="-7.874" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-4.699" y1="25.4" x2="-5.334" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-5.334" y1="23.495" x2="-4.699" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-3.429" y1="22.86" x2="-4.699" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-12.319" y1="25.4" x2="-11.049" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-11.049" y1="25.4" x2="-10.414" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-10.414" y1="23.495" x2="-11.049" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-10.414" y1="24.765" x2="-9.779" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-9.779" y1="25.4" x2="-8.509" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-8.509" y1="25.4" x2="-7.874" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-7.874" y1="23.495" x2="-8.509" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-8.509" y1="22.86" x2="-9.779" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-9.779" y1="22.86" x2="-10.414" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-12.319" y1="25.4" x2="-12.954" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-12.954" y1="23.495" x2="-12.319" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-11.049" y1="22.86" x2="-12.319" y2="22.86" width="0.2032" layer="21"/>
<wire x1="5.461" y1="25.4" x2="6.731" y2="25.4" width="0.2032" layer="21"/>
<wire x1="6.731" y1="25.4" x2="7.366" y2="24.765" width="0.2032" layer="21"/>
<wire x1="7.366" y1="24.765" x2="7.366" y2="23.495" width="0.2032" layer="21"/>
<wire x1="7.366" y1="23.495" x2="6.731" y2="22.86" width="0.2032" layer="21"/>
<wire x1="5.461" y1="25.4" x2="4.826" y2="24.765" width="0.2032" layer="21"/>
<wire x1="4.826" y1="23.495" x2="5.461" y2="22.86" width="0.2032" layer="21"/>
<wire x1="6.731" y1="22.86" x2="5.461" y2="22.86" width="0.2032" layer="21"/>
<pad name="6" x="12.7" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="15.24" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="17.78" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="20.32" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="22.86" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="1" x="25.4" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="0" x="27.94" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="7" x="10.16" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND" x="-9.144" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="13" x="-6.604" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="12" x="-4.064" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="11" x="-1.524" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="10" x="1.016" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="9" x="3.556" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="8" x="6.096" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="-11.684" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-9.906" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">GND</text>
<text x="-12.319" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">AREF</text>
<wire x1="-14.859" y1="25.4" x2="-13.589" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-13.589" y1="25.4" x2="-12.954" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-12.954" y1="23.495" x2="-13.589" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-14.859" y1="25.4" x2="-15.494" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-15.494" y1="23.495" x2="-14.859" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-13.589" y1="22.86" x2="-14.859" y2="22.86" width="0.2032" layer="21"/>
<pad name="SDA" x="-14.224" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<wire x1="-17.399" y1="25.4" x2="-16.129" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-16.129" y1="25.4" x2="-15.494" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-15.494" y1="23.495" x2="-16.129" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-18.034" y1="24.765" x2="-18.034" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-17.399" y1="25.4" x2="-18.034" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-18.034" y1="23.495" x2="-17.399" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-16.129" y1="22.86" x2="-17.399" y2="22.86" width="0.2032" layer="21"/>
<pad name="SCL" x="-16.764" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<wire x1="26.67" y1="-23.495" x2="27.305" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="27.305" y1="-22.86" x2="28.575" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="28.575" y1="-22.86" x2="29.21" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="29.21" y1="-24.765" x2="28.575" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="28.575" y1="-25.4" x2="27.305" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="27.305" y1="-25.4" x2="26.67" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="22.225" y1="-22.86" x2="23.495" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="23.495" y1="-22.86" x2="24.13" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="24.13" y1="-24.765" x2="23.495" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="24.13" y1="-23.495" x2="24.765" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="24.765" y1="-22.86" x2="26.035" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="26.035" y1="-22.86" x2="26.67" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="26.67" y1="-24.765" x2="26.035" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="26.035" y1="-25.4" x2="24.765" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="24.765" y1="-25.4" x2="24.13" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="19.05" y1="-23.495" x2="19.685" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="19.685" y1="-22.86" x2="20.955" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="20.955" y1="-22.86" x2="21.59" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="21.59" y1="-24.765" x2="20.955" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="20.955" y1="-25.4" x2="19.685" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="19.685" y1="-25.4" x2="19.05" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="22.225" y1="-22.86" x2="21.59" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="21.59" y1="-24.765" x2="22.225" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="23.495" y1="-25.4" x2="22.225" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="14.605" y1="-22.86" x2="15.875" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="15.875" y1="-22.86" x2="16.51" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="16.51" y1="-24.765" x2="15.875" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="16.51" y1="-23.495" x2="17.145" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="17.145" y1="-22.86" x2="18.415" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="18.415" y1="-22.86" x2="19.05" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="19.05" y1="-24.765" x2="18.415" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="18.415" y1="-25.4" x2="17.145" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="17.145" y1="-25.4" x2="16.51" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="13.97" y1="-23.495" x2="13.97" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="14.605" y1="-22.86" x2="13.97" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="13.97" y1="-24.765" x2="14.605" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="15.875" y1="-25.4" x2="14.605" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-23.495" x2="9.525" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="9.525" y1="-22.86" x2="10.795" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="10.795" y1="-22.86" x2="11.43" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-24.765" x2="10.795" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="10.795" y1="-25.4" x2="9.525" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="9.525" y1="-25.4" x2="8.89" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-22.86" x2="5.715" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-22.86" x2="6.35" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-24.765" x2="5.715" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-23.495" x2="6.985" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="6.985" y1="-22.86" x2="8.255" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-22.86" x2="8.89" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-24.765" x2="8.255" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-25.4" x2="6.985" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="6.985" y1="-25.4" x2="6.35" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-23.495" x2="1.905" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-22.86" x2="3.175" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-22.86" x2="3.81" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-24.765" x2="3.175" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-25.4" x2="1.905" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-25.4" x2="1.27" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-22.86" x2="3.81" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-24.765" x2="4.445" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-25.4" x2="4.445" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-3.175" y1="-22.86" x2="-1.905" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="-22.86" x2="-1.27" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-24.765" x2="-1.905" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-23.495" x2="-0.635" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-22.86" x2="0.635" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-22.86" x2="1.27" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-24.765" x2="0.635" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-25.4" x2="-0.635" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-25.4" x2="-1.27" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="-3.175" y1="-22.86" x2="-3.81" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-3.81" y1="-24.765" x2="-3.175" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="-25.4" x2="-3.175" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-23.495" x2="11.43" y2="-24.765" width="0.2032" layer="21"/>
<pad name="A1" x="17.78" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="20.32" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="22.86" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="25.4" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="27.94" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="15.24" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RESET" x="-2.54" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="0" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V" x="2.54" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND.." x="5.08" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND." x="7.62" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="10.16" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="16.002" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A0</text>
<text x="18.288" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A1</text>
<text x="21.082" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A2</text>
<text x="23.622" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A3</text>
<text x="26.162" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A4</text>
<text x="28.575" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A5</text>
<text x="-2.032" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RESET</text>
<text x="0.508" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">3.3V</text>
<text x="3.048" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">5V</text>
<text x="5.588" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="8.128" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="10.668" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">Vin</text>
<wire x1="-5.715" y1="-22.86" x2="-4.445" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-4.445" y1="-22.86" x2="-3.81" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-3.81" y1="-24.765" x2="-4.445" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-5.715" y1="-22.86" x2="-6.35" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-6.35" y1="-24.765" x2="-5.715" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-4.445" y1="-25.4" x2="-5.715" y2="-25.4" width="0.2032" layer="21"/>
<pad name="I/OREF" x="-5.08" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<wire x1="-8.255" y1="-22.86" x2="-6.985" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-6.985" y1="-22.86" x2="-6.35" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-6.35" y1="-24.765" x2="-6.985" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-8.89" y1="-23.495" x2="-8.89" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="-8.255" y1="-22.86" x2="-8.89" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-8.89" y1="-24.765" x2="-8.255" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-6.985" y1="-25.4" x2="-8.255" y2="-25.4" width="0.2032" layer="21"/>
<pad name="N/C" x="-7.62" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<wire x1="29.21" y1="-23.495" x2="29.21" y2="-24.765" width="0.2032" layer="21"/>
<text x="27.305" y="22.225" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">0</text>
<text x="24.765" y="22.225" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">1</text>
<text x="22.225" y="22.225" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">2</text>
<text x="19.558" y="22.225" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">3</text>
<text x="17.145" y="22.225" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">4</text>
<text x="14.605" y="22.225" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">5</text>
<text x="12.192" y="22.225" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">6</text>
<text x="9.652" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">7</text>
<text x="5.461" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">8</text>
<text x="2.921" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">9</text>
<text x="0.381" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">10</text>
<text x="-2.286" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">11</text>
<text x="-4.826" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">12</text>
<text x="-7.366" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">13</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINO">
<pin name="28(SCL)" x="-25.4" y="20.32" length="short" rot="R270"/>
<pin name="27(SDA)" x="-22.86" y="20.32" length="short" rot="R270"/>
<pin name="AREF" x="-20.32" y="20.32" length="short" rot="R270"/>
<pin name="GND" x="-17.78" y="20.32" length="short" rot="R270"/>
<pin name="13" x="-15.24" y="20.32" length="short" rot="R270"/>
<pin name="12" x="-12.7" y="20.32" length="short" rot="R270"/>
<pin name="~11" x="-10.16" y="20.32" length="short" rot="R270"/>
<pin name="~10" x="-7.62" y="20.32" length="short" rot="R270"/>
<pin name="~9" x="-5.08" y="20.32" length="short" rot="R270"/>
<pin name="8" x="-2.54" y="20.32" length="short" rot="R270"/>
<pin name="7" x="5.08" y="20.32" length="short" rot="R270"/>
<pin name="~6" x="7.62" y="20.32" length="short" rot="R270"/>
<pin name="~5" x="10.16" y="20.32" length="short" rot="R270"/>
<pin name="4" x="12.7" y="20.32" length="short" rot="R270"/>
<pin name="~3" x="15.24" y="20.32" length="short" rot="R270"/>
<pin name="2" x="17.78" y="20.32" length="short" rot="R270"/>
<pin name="1(TX)" x="20.32" y="20.32" length="short" rot="R270"/>
<pin name="0(RX)" x="22.86" y="20.32" length="short" rot="R270"/>
<pin name="A5" x="22.86" y="-22.86" length="short" rot="R90"/>
<pin name="A4" x="20.32" y="-22.86" length="short" rot="R90"/>
<pin name="A3" x="17.78" y="-22.86" length="short" rot="R90"/>
<pin name="A2" x="15.24" y="-22.86" length="short" rot="R90"/>
<pin name="A1" x="12.7" y="-22.86" length="short" rot="R90"/>
<pin name="A0" x="10.16" y="-22.86" length="short" rot="R90"/>
<pin name="VIN" x="2.54" y="-22.86" length="short" rot="R90"/>
<pin name="GND." x="0" y="-22.86" length="short" rot="R90"/>
<pin name="GND.." x="-2.54" y="-22.86" length="short" rot="R90"/>
<pin name="5V" x="-5.08" y="-22.86" length="short" rot="R90"/>
<pin name="3.3V" x="-7.62" y="-22.86" length="short" rot="R90"/>
<pin name="RESET" x="-10.16" y="-22.86" length="short" rot="R90"/>
<pin name="IOREF" x="-12.7" y="-22.86" length="short" rot="R90"/>
<pin name="(N/C)" x="-15.24" y="-22.86" length="short" rot="R90"/>
<wire x1="-33.02" y1="17.78" x2="25.4" y2="17.78" width="0.254" layer="94"/>
<wire x1="25.4" y1="17.78" x2="25.4" y2="10.16" width="0.254" layer="94"/>
<wire x1="25.4" y1="10.16" x2="27.94" y2="7.62" width="0.254" layer="94"/>
<wire x1="27.94" y1="7.62" x2="27.94" y2="-17.78" width="0.254" layer="94"/>
<wire x1="27.94" y1="-17.78" x2="25.4" y2="-20.32" width="0.254" layer="94"/>
<wire x1="25.4" y1="-20.32" x2="-33.02" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-33.02" y1="-20.32" x2="-33.02" y2="17.78" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO">
<gates>
<gate name="G$1" symbol="ARDUINO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINO">
<connects>
<connect gate="G$1" pin="(N/C)" pad="N/C"/>
<connect gate="G$1" pin="0(RX)" pad="0"/>
<connect gate="G$1" pin="1(TX)" pad="1"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="27(SDA)" pad="SDA"/>
<connect gate="G$1" pin="28(SCL)" pad="SCL"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND." pad="GND."/>
<connect gate="G$1" pin="GND.." pad="GND.."/>
<connect gate="G$1" pin="IOREF" pad="I/OREF"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="~10" pad="10"/>
<connect gate="G$1" pin="~11" pad="11"/>
<connect gate="G$1" pin="~3" pad="3"/>
<connect gate="G$1" pin="~5" pad="5"/>
<connect gate="G$1" pin="~6" pad="6"/>
<connect gate="G$1" pin="~9" pad="9"/>
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
<class number="1" name="PWR" width="0.4064" drill="0">
</class>
</classes>
<parts>
<part name="U$2" library="arduino" deviceset="ARDUINO" device=""/>
<part name="U$3" library="espruino_pico" deviceset="ESPRUINO" device=""/>
<part name="U$1" library="espruino_pico" deviceset="ESPRUINO_PICO_SMDONLY" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$2" gate="G$1" x="86.36" y="33.02"/>
<instance part="U$3" gate="G$1" x="22.86" y="132.08" rot="R90"/>
<instance part="U$1" gate="G$1" x="-7.62" y="43.18"/>
</instances>
<busses>
</busses>
<nets>
<net name="A0" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C0"/>
<wire x1="30.48" y1="96.52" x2="30.48" y2="76.2" width="0.1524" layer="91"/>
<label x="30.48" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A0"/>
<wire x1="17.78" y1="33.02" x2="33.02" y2="33.02" width="0.1524" layer="91"/>
<wire x1="33.02" y1="33.02" x2="33.02" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="A0"/>
<wire x1="33.02" y1="-15.24" x2="96.52" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-15.24" x2="96.52" y2="10.16" width="0.1524" layer="91"/>
<label x="96.52" y="0" size="1.778" layer="95" rot="R90"/>
<label x="22.86" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C1"/>
<wire x1="33.02" y1="96.52" x2="33.02" y2="76.2" width="0.1524" layer="91"/>
<label x="33.02" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="A1"/>
<wire x1="99.06" y1="10.16" x2="99.06" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-12.7" x2="35.56" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-12.7" x2="35.56" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="A1"/>
<wire x1="35.56" y1="35.56" x2="17.78" y2="35.56" width="0.1524" layer="91"/>
<label x="99.06" y="0" size="1.778" layer="95" rot="R90"/>
<label x="22.86" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C2"/>
<wire x1="35.56" y1="96.52" x2="35.56" y2="76.2" width="0.1524" layer="91"/>
<label x="35.56" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A2"/>
<wire x1="17.78" y1="38.1" x2="38.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="38.1" y1="38.1" x2="38.1" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-10.16" x2="101.6" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="A2"/>
<wire x1="101.6" y1="-10.16" x2="101.6" y2="10.16" width="0.1524" layer="91"/>
<label x="101.6" y="0" size="1.778" layer="95" rot="R90"/>
<label x="22.86" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C3"/>
<wire x1="38.1" y1="96.52" x2="38.1" y2="76.2" width="0.1524" layer="91"/>
<label x="38.1" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="A3"/>
<wire x1="104.14" y1="10.16" x2="104.14" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-7.62" x2="40.64" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-7.62" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="A3"/>
<wire x1="40.64" y1="40.64" x2="17.78" y2="40.64" width="0.1524" layer="91"/>
<label x="104.14" y="0" size="1.778" layer="95" rot="R90"/>
<label x="22.86" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="A4" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C4"/>
<wire x1="35.56" y1="149.86" x2="35.56" y2="160.02" width="0.1524" layer="91"/>
<label x="35.56" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A4"/>
<wire x1="17.78" y1="43.18" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
<wire x1="43.18" y1="43.18" x2="43.18" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-5.08" x2="106.68" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="A4"/>
<wire x1="106.68" y1="-5.08" x2="106.68" y2="10.16" width="0.1524" layer="91"/>
<label x="106.68" y="0" size="1.778" layer="95" rot="R90"/>
<label x="22.86" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="A5" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C5"/>
<wire x1="33.02" y1="149.86" x2="33.02" y2="160.02" width="0.1524" layer="91"/>
<label x="33.02" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="A5"/>
<wire x1="109.22" y1="10.16" x2="109.22" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-2.54" x2="45.72" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-2.54" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="A5"/>
<wire x1="45.72" y1="53.34" x2="5.08" y2="53.34" width="0.1524" layer="91"/>
<wire x1="5.08" y1="53.34" x2="5.08" y2="50.8" width="0.1524" layer="91"/>
<label x="109.22" y="0" size="1.778" layer="95" rot="R90"/>
<label x="5.08" y="53.34" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="GND" class="1">
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="50.8" y1="149.86" x2="50.8" y2="160.02" width="0.1524" layer="91"/>
<label x="50.8" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND."/>
<wire x1="50.8" y1="96.52" x2="50.8" y2="76.2" width="0.1524" layer="91"/>
<label x="50.8" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND."/>
<wire x1="86.36" y1="10.16" x2="86.36" y2="0" width="0.1524" layer="91"/>
<label x="86.36" y="0" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND.."/>
<wire x1="83.82" y1="10.16" x2="83.82" y2="0" width="0.1524" layer="91"/>
<label x="83.82" y="0" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="68.58" y1="53.34" x2="68.58" y2="73.66" width="0.1524" layer="91"/>
<label x="68.58" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="-15.24" y1="17.78" x2="-15.24" y2="7.62" width="0.1524" layer="91"/>
<label x="-15.24" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="VIN" class="1">
<segment>
<pinref part="U$3" gate="G$1" pin="VBAT"/>
<wire x1="48.26" y1="149.86" x2="48.26" y2="160.02" width="0.1524" layer="91"/>
<label x="48.26" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="VBAT."/>
<wire x1="48.26" y1="96.52" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
<label x="48.26" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="VIN"/>
<wire x1="88.9" y1="10.16" x2="88.9" y2="0" width="0.1524" layer="91"/>
<label x="88.9" y="0" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="5V"/>
<wire x1="-12.7" y1="17.78" x2="-12.7" y2="7.62" width="0.1524" layer="91"/>
<label x="-12.7" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="3.3V" class="1">
<segment>
<pinref part="U$3" gate="G$1" pin="3.3"/>
<wire x1="45.72" y1="149.86" x2="45.72" y2="160.02" width="0.1524" layer="91"/>
<label x="45.72" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="3.3."/>
<wire x1="45.72" y1="96.52" x2="45.72" y2="76.2" width="0.1524" layer="91"/>
<label x="45.72" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="3.3V"/>
<wire x1="78.74" y1="10.16" x2="78.74" y2="0" width="0.1524" layer="91"/>
<label x="78.74" y="0" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="IOREF"/>
<wire x1="73.66" y1="10.16" x2="73.66" y2="0" width="0.1524" layer="91"/>
<label x="73.66" y="0" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="3.3V"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="7.62" width="0.1524" layer="91"/>
<label x="-10.16" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="28(SCL)"/>
<wire x1="60.96" y1="53.34" x2="60.96" y2="73.66" width="0.1524" layer="91"/>
<label x="60.96" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B10"/>
<wire x1="58.42" y1="132.08" x2="71.12" y2="132.08" width="0.1524" layer="91"/>
<label x="66.04" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B8"/>
<wire x1="17.78" y1="25.4" x2="27.94" y2="25.4" width="0.1524" layer="91"/>
<label x="22.86" y="25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="27(SDA)"/>
<wire x1="63.5" y1="53.34" x2="63.5" y2="73.66" width="0.1524" layer="91"/>
<label x="63.5" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B11"/>
<wire x1="58.42" y1="134.62" x2="71.12" y2="134.62" width="0.1524" layer="91"/>
<label x="66.04" y="134.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B9"/>
<wire x1="17.78" y1="27.94" x2="27.94" y2="27.94" width="0.1524" layer="91"/>
<label x="22.86" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="D13" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="13"/>
<wire x1="71.12" y1="53.34" x2="71.12" y2="73.66" width="0.1524" layer="91"/>
<label x="71.12" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B3"/>
<wire x1="5.08" y1="96.52" x2="5.08" y2="76.2" width="0.1524" layer="91"/>
<label x="5.08" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B13"/>
<wire x1="-7.62" y1="50.8" x2="-7.62" y2="66.04" width="0.1524" layer="91"/>
<label x="-7.62" y="60.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D12" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="12"/>
<wire x1="73.66" y1="53.34" x2="73.66" y2="73.66" width="0.1524" layer="91"/>
<label x="73.66" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B4"/>
<wire x1="7.62" y1="96.52" x2="7.62" y2="76.2" width="0.1524" layer="91"/>
<label x="7.62" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B14"/>
<wire x1="-10.16" y1="50.8" x2="-10.16" y2="66.04" width="0.1524" layer="91"/>
<label x="-10.16" y="60.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D11" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="~11"/>
<wire x1="76.2" y1="53.34" x2="76.2" y2="73.66" width="0.1524" layer="91"/>
<label x="76.2" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B5"/>
<wire x1="10.16" y1="96.52" x2="10.16" y2="76.2" width="0.1524" layer="91"/>
<label x="10.16" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B15"/>
<wire x1="-12.7" y1="50.8" x2="-12.7" y2="66.04" width="0.1524" layer="91"/>
<label x="-12.7" y="60.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D10" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="~10"/>
<wire x1="78.74" y1="53.34" x2="78.74" y2="73.66" width="0.1524" layer="91"/>
<label x="78.74" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B6"/>
<wire x1="12.7" y1="96.52" x2="12.7" y2="76.2" width="0.1524" layer="91"/>
<label x="12.7" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A10"/>
<wire x1="17.78" y1="30.48" x2="27.94" y2="30.48" width="0.1524" layer="91"/>
<label x="22.86" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="D9" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="~9"/>
<wire x1="81.28" y1="53.34" x2="81.28" y2="73.66" width="0.1524" layer="91"/>
<label x="81.28" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="C9"/>
<wire x1="22.86" y1="149.86" x2="22.86" y2="160.02" width="0.1524" layer="91"/>
<label x="22.86" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B10"/>
<wire x1="-5.08" y1="50.8" x2="-5.08" y2="66.04" width="0.1524" layer="91"/>
<label x="-5.08" y="60.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D8" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="8"/>
<wire x1="83.82" y1="53.34" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<label x="83.82" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="C8"/>
<wire x1="25.4" y1="149.86" x2="25.4" y2="160.02" width="0.1524" layer="91"/>
<label x="25.4" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A8"/>
<wire x1="5.08" y1="17.78" x2="5.08" y2="7.62" width="0.1524" layer="91"/>
<label x="5.08" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D7" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="7"/>
<wire x1="91.44" y1="53.34" x2="91.44" y2="73.66" width="0.1524" layer="91"/>
<label x="91.44" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="C7"/>
<wire x1="27.94" y1="149.86" x2="27.94" y2="160.02" width="0.1524" layer="91"/>
<label x="27.94" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A7"/>
<wire x1="0" y1="50.8" x2="0" y2="66.04" width="0.1524" layer="91"/>
<label x="0" y="60.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D6" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="~6"/>
<wire x1="93.98" y1="53.34" x2="93.98" y2="73.66" width="0.1524" layer="91"/>
<label x="93.98" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="C6"/>
<wire x1="30.48" y1="149.86" x2="30.48" y2="160.02" width="0.1524" layer="91"/>
<label x="30.48" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A6"/>
<wire x1="2.54" y1="50.8" x2="2.54" y2="66.04" width="0.1524" layer="91"/>
<label x="2.54" y="60.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D5" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="~5"/>
<wire x1="96.52" y1="53.34" x2="96.52" y2="73.66" width="0.1524" layer="91"/>
<label x="96.52" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B7"/>
<wire x1="15.24" y1="96.52" x2="15.24" y2="76.2" width="0.1524" layer="91"/>
<label x="15.24" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B5"/>
<wire x1="-2.54" y1="17.78" x2="-2.54" y2="7.62" width="0.1524" layer="91"/>
<label x="-2.54" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D4" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="4"/>
<wire x1="99.06" y1="53.34" x2="99.06" y2="73.66" width="0.1524" layer="91"/>
<label x="99.06" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B13"/>
<wire x1="43.18" y1="149.86" x2="43.18" y2="160.02" width="0.1524" layer="91"/>
<label x="43.18" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B4"/>
<wire x1="-5.08" y1="17.78" x2="-5.08" y2="7.62" width="0.1524" layer="91"/>
<label x="-5.08" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D3" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="~3"/>
<wire x1="101.6" y1="53.34" x2="101.6" y2="73.66" width="0.1524" layer="91"/>
<label x="101.6" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B8"/>
<wire x1="17.78" y1="96.52" x2="17.78" y2="76.2" width="0.1524" layer="91"/>
<label x="17.78" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B3"/>
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="7.62" width="0.1524" layer="91"/>
<label x="-7.62" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="2"/>
<wire x1="104.14" y1="53.34" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
<label x="104.14" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B9"/>
<wire x1="20.32" y1="96.52" x2="20.32" y2="76.2" width="0.1524" layer="91"/>
<label x="20.32" y="78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B1"/>
<wire x1="-2.54" y1="50.8" x2="-2.54" y2="66.04" width="0.1524" layer="91"/>
<label x="-2.54" y="60.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="1(TX)"/>
<wire x1="106.68" y1="53.34" x2="106.68" y2="73.66" width="0.1524" layer="91"/>
<label x="106.68" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="A9"/>
<wire x1="12.7" y1="149.86" x2="12.7" y2="160.02" width="0.1524" layer="91"/>
<label x="12.7" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B6"/>
<wire x1="0" y1="17.78" x2="0" y2="7.62" width="0.1524" layer="91"/>
<label x="0" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="D0" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="0(RX)"/>
<wire x1="109.22" y1="53.34" x2="109.22" y2="73.66" width="0.1524" layer="91"/>
<label x="109.22" y="66.04" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="A10"/>
<wire x1="10.16" y1="149.86" x2="10.16" y2="160.02" width="0.1524" layer="91"/>
<label x="10.16" y="165.1" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B7"/>
<wire x1="2.54" y1="17.78" x2="2.54" y2="7.62" width="0.1524" layer="91"/>
<label x="2.54" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
