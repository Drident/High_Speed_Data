-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2020.12.27943

-- Build Date:         Dec  9 2020 18:18:06

-- File Generated:     Aug 7 2023 08:40:55

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "EC5LP" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of EC5LP
entity EC5LP is
port (
    o_fram_sclk : out std_logic_vector(3 downto 0);
    o_fram_sdi : out std_logic_vector(3 downto 0);
    o_fram_ncs : out std_logic_vector(3 downto 0);
    i_adc_sdo : in std_logic_vector(3 downto 0);
    i_fpga_m : in std_logic_vector(3 downto 0);
    o_cal : inout std_logic_vector(2 downto 1);
    o_acq_done : inout std_logic;
    o_meas_1mhz : out std_logic;
    o_adc_nsc : out std_logic;
    i_clk_en : in std_logic;
    i_acq_pretrig : in std_logic;
    iRST_rst_n : in std_logic;
    i_fpga_sck : in std_logic;
    i_fpga_mosi : in std_logic;
    o_adc_sclk : out std_logic;
    i_acq_trig : in std_logic;
    o_sclk_meas : out std_logic;
    io_fpga_miso : out std_logic;
    iGCK_clk : in std_logic);
end EC5LP;

-- Architecture of EC5LP
-- View name is \INTERFACE\
architecture \INTERFACE\ of EC5LP is

signal \N__11193\ : std_logic;
signal \N__11192\ : std_logic;
signal \N__11191\ : std_logic;
signal \N__11182\ : std_logic;
signal \N__11181\ : std_logic;
signal \N__11180\ : std_logic;
signal \N__11173\ : std_logic;
signal \N__11172\ : std_logic;
signal \N__11171\ : std_logic;
signal \N__11164\ : std_logic;
signal \N__11163\ : std_logic;
signal \N__11162\ : std_logic;
signal \N__11155\ : std_logic;
signal \N__11154\ : std_logic;
signal \N__11153\ : std_logic;
signal \N__11146\ : std_logic;
signal \N__11145\ : std_logic;
signal \N__11144\ : std_logic;
signal \N__11137\ : std_logic;
signal \N__11136\ : std_logic;
signal \N__11135\ : std_logic;
signal \N__11128\ : std_logic;
signal \N__11127\ : std_logic;
signal \N__11126\ : std_logic;
signal \N__11119\ : std_logic;
signal \N__11118\ : std_logic;
signal \N__11117\ : std_logic;
signal \N__11110\ : std_logic;
signal \N__11109\ : std_logic;
signal \N__11108\ : std_logic;
signal \N__11101\ : std_logic;
signal \N__11100\ : std_logic;
signal \N__11099\ : std_logic;
signal \N__11092\ : std_logic;
signal \N__11091\ : std_logic;
signal \N__11090\ : std_logic;
signal \N__11083\ : std_logic;
signal \N__11082\ : std_logic;
signal \N__11081\ : std_logic;
signal \N__11074\ : std_logic;
signal \N__11073\ : std_logic;
signal \N__11072\ : std_logic;
signal \N__11065\ : std_logic;
signal \N__11064\ : std_logic;
signal \N__11063\ : std_logic;
signal \N__11056\ : std_logic;
signal \N__11055\ : std_logic;
signal \N__11054\ : std_logic;
signal \N__11047\ : std_logic;
signal \N__11046\ : std_logic;
signal \N__11045\ : std_logic;
signal \N__11038\ : std_logic;
signal \N__11037\ : std_logic;
signal \N__11036\ : std_logic;
signal \N__11029\ : std_logic;
signal \N__11028\ : std_logic;
signal \N__11027\ : std_logic;
signal \N__11020\ : std_logic;
signal \N__11019\ : std_logic;
signal \N__11018\ : std_logic;
signal \N__11011\ : std_logic;
signal \N__11010\ : std_logic;
signal \N__11009\ : std_logic;
signal \N__11002\ : std_logic;
signal \N__11001\ : std_logic;
signal \N__11000\ : std_logic;
signal \N__10993\ : std_logic;
signal \N__10992\ : std_logic;
signal \N__10991\ : std_logic;
signal \N__10984\ : std_logic;
signal \N__10983\ : std_logic;
signal \N__10982\ : std_logic;
signal \N__10975\ : std_logic;
signal \N__10974\ : std_logic;
signal \N__10973\ : std_logic;
signal \N__10966\ : std_logic;
signal \N__10965\ : std_logic;
signal \N__10964\ : std_logic;
signal \N__10957\ : std_logic;
signal \N__10956\ : std_logic;
signal \N__10955\ : std_logic;
signal \N__10948\ : std_logic;
signal \N__10947\ : std_logic;
signal \N__10946\ : std_logic;
signal \N__10939\ : std_logic;
signal \N__10938\ : std_logic;
signal \N__10937\ : std_logic;
signal \N__10930\ : std_logic;
signal \N__10929\ : std_logic;
signal \N__10928\ : std_logic;
signal \N__10921\ : std_logic;
signal \N__10920\ : std_logic;
signal \N__10919\ : std_logic;
signal \N__10902\ : std_logic;
signal \N__10899\ : std_logic;
signal \N__10896\ : std_logic;
signal \N__10893\ : std_logic;
signal \N__10890\ : std_logic;
signal \N__10887\ : std_logic;
signal \N__10884\ : std_logic;
signal \N__10883\ : std_logic;
signal \N__10882\ : std_logic;
signal \N__10879\ : std_logic;
signal \N__10878\ : std_logic;
signal \N__10875\ : std_logic;
signal \N__10874\ : std_logic;
signal \N__10871\ : std_logic;
signal \N__10868\ : std_logic;
signal \N__10865\ : std_logic;
signal \N__10864\ : std_logic;
signal \N__10861\ : std_logic;
signal \N__10858\ : std_logic;
signal \N__10855\ : std_logic;
signal \N__10854\ : std_logic;
signal \N__10853\ : std_logic;
signal \N__10852\ : std_logic;
signal \N__10851\ : std_logic;
signal \N__10846\ : std_logic;
signal \N__10845\ : std_logic;
signal \N__10844\ : std_logic;
signal \N__10843\ : std_logic;
signal \N__10842\ : std_logic;
signal \N__10839\ : std_logic;
signal \N__10832\ : std_logic;
signal \N__10825\ : std_logic;
signal \N__10822\ : std_logic;
signal \N__10821\ : std_logic;
signal \N__10818\ : std_logic;
signal \N__10815\ : std_logic;
signal \N__10814\ : std_logic;
signal \N__10813\ : std_logic;
signal \N__10810\ : std_logic;
signal \N__10807\ : std_logic;
signal \N__10804\ : std_logic;
signal \N__10803\ : std_logic;
signal \N__10800\ : std_logic;
signal \N__10795\ : std_logic;
signal \N__10792\ : std_logic;
signal \N__10791\ : std_logic;
signal \N__10788\ : std_logic;
signal \N__10787\ : std_logic;
signal \N__10784\ : std_logic;
signal \N__10781\ : std_logic;
signal \N__10778\ : std_logic;
signal \N__10775\ : std_logic;
signal \N__10772\ : std_logic;
signal \N__10769\ : std_logic;
signal \N__10766\ : std_logic;
signal \N__10763\ : std_logic;
signal \N__10760\ : std_logic;
signal \N__10755\ : std_logic;
signal \N__10752\ : std_logic;
signal \N__10749\ : std_logic;
signal \N__10746\ : std_logic;
signal \N__10745\ : std_logic;
signal \N__10740\ : std_logic;
signal \N__10735\ : std_logic;
signal \N__10730\ : std_logic;
signal \N__10725\ : std_logic;
signal \N__10718\ : std_logic;
signal \N__10713\ : std_logic;
signal \N__10710\ : std_logic;
signal \N__10705\ : std_logic;
signal \N__10700\ : std_logic;
signal \N__10695\ : std_logic;
signal \N__10692\ : std_logic;
signal \N__10689\ : std_logic;
signal \N__10686\ : std_logic;
signal \N__10683\ : std_logic;
signal \N__10682\ : std_logic;
signal \N__10679\ : std_logic;
signal \N__10676\ : std_logic;
signal \N__10673\ : std_logic;
signal \N__10670\ : std_logic;
signal \N__10667\ : std_logic;
signal \N__10656\ : std_logic;
signal \N__10655\ : std_logic;
signal \N__10654\ : std_logic;
signal \N__10653\ : std_logic;
signal \N__10652\ : std_logic;
signal \N__10651\ : std_logic;
signal \N__10648\ : std_logic;
signal \N__10647\ : std_logic;
signal \N__10644\ : std_logic;
signal \N__10641\ : std_logic;
signal \N__10638\ : std_logic;
signal \N__10637\ : std_logic;
signal \N__10634\ : std_logic;
signal \N__10631\ : std_logic;
signal \N__10630\ : std_logic;
signal \N__10627\ : std_logic;
signal \N__10624\ : std_logic;
signal \N__10621\ : std_logic;
signal \N__10620\ : std_logic;
signal \N__10619\ : std_logic;
signal \N__10618\ : std_logic;
signal \N__10615\ : std_logic;
signal \N__10612\ : std_logic;
signal \N__10609\ : std_logic;
signal \N__10606\ : std_logic;
signal \N__10603\ : std_logic;
signal \N__10600\ : std_logic;
signal \N__10595\ : std_logic;
signal \N__10592\ : std_logic;
signal \N__10589\ : std_logic;
signal \N__10588\ : std_logic;
signal \N__10587\ : std_logic;
signal \N__10586\ : std_logic;
signal \N__10583\ : std_logic;
signal \N__10580\ : std_logic;
signal \N__10579\ : std_logic;
signal \N__10572\ : std_logic;
signal \N__10567\ : std_logic;
signal \N__10564\ : std_logic;
signal \N__10557\ : std_logic;
signal \N__10554\ : std_logic;
signal \N__10551\ : std_logic;
signal \N__10548\ : std_logic;
signal \N__10547\ : std_logic;
signal \N__10544\ : std_logic;
signal \N__10541\ : std_logic;
signal \N__10540\ : std_logic;
signal \N__10539\ : std_logic;
signal \N__10538\ : std_logic;
signal \N__10535\ : std_logic;
signal \N__10532\ : std_logic;
signal \N__10527\ : std_logic;
signal \N__10524\ : std_logic;
signal \N__10521\ : std_logic;
signal \N__10520\ : std_logic;
signal \N__10517\ : std_logic;
signal \N__10512\ : std_logic;
signal \N__10507\ : std_logic;
signal \N__10500\ : std_logic;
signal \N__10497\ : std_logic;
signal \N__10492\ : std_logic;
signal \N__10487\ : std_logic;
signal \N__10486\ : std_logic;
signal \N__10483\ : std_logic;
signal \N__10480\ : std_logic;
signal \N__10473\ : std_logic;
signal \N__10468\ : std_logic;
signal \N__10465\ : std_logic;
signal \N__10462\ : std_logic;
signal \N__10459\ : std_logic;
signal \N__10456\ : std_logic;
signal \N__10453\ : std_logic;
signal \N__10444\ : std_logic;
signal \N__10437\ : std_logic;
signal \N__10434\ : std_logic;
signal \N__10433\ : std_logic;
signal \N__10432\ : std_logic;
signal \N__10431\ : std_logic;
signal \N__10428\ : std_logic;
signal \N__10427\ : std_logic;
signal \N__10426\ : std_logic;
signal \N__10423\ : std_logic;
signal \N__10422\ : std_logic;
signal \N__10421\ : std_logic;
signal \N__10420\ : std_logic;
signal \N__10419\ : std_logic;
signal \N__10418\ : std_logic;
signal \N__10417\ : std_logic;
signal \N__10414\ : std_logic;
signal \N__10413\ : std_logic;
signal \N__10410\ : std_logic;
signal \N__10409\ : std_logic;
signal \N__10406\ : std_logic;
signal \N__10403\ : std_logic;
signal \N__10400\ : std_logic;
signal \N__10397\ : std_logic;
signal \N__10394\ : std_logic;
signal \N__10391\ : std_logic;
signal \N__10390\ : std_logic;
signal \N__10385\ : std_logic;
signal \N__10384\ : std_logic;
signal \N__10381\ : std_logic;
signal \N__10378\ : std_logic;
signal \N__10375\ : std_logic;
signal \N__10372\ : std_logic;
signal \N__10369\ : std_logic;
signal \N__10366\ : std_logic;
signal \N__10365\ : std_logic;
signal \N__10360\ : std_logic;
signal \N__10357\ : std_logic;
signal \N__10354\ : std_logic;
signal \N__10353\ : std_logic;
signal \N__10350\ : std_logic;
signal \N__10347\ : std_logic;
signal \N__10344\ : std_logic;
signal \N__10341\ : std_logic;
signal \N__10338\ : std_logic;
signal \N__10335\ : std_logic;
signal \N__10334\ : std_logic;
signal \N__10333\ : std_logic;
signal \N__10330\ : std_logic;
signal \N__10323\ : std_logic;
signal \N__10320\ : std_logic;
signal \N__10317\ : std_logic;
signal \N__10314\ : std_logic;
signal \N__10311\ : std_logic;
signal \N__10310\ : std_logic;
signal \N__10307\ : std_logic;
signal \N__10304\ : std_logic;
signal \N__10297\ : std_logic;
signal \N__10292\ : std_logic;
signal \N__10289\ : std_logic;
signal \N__10286\ : std_logic;
signal \N__10283\ : std_logic;
signal \N__10280\ : std_logic;
signal \N__10273\ : std_logic;
signal \N__10268\ : std_logic;
signal \N__10265\ : std_logic;
signal \N__10250\ : std_logic;
signal \N__10245\ : std_logic;
signal \N__10240\ : std_logic;
signal \N__10233\ : std_logic;
signal \N__10230\ : std_logic;
signal \N__10227\ : std_logic;
signal \N__10224\ : std_logic;
signal \N__10221\ : std_logic;
signal \N__10220\ : std_logic;
signal \N__10219\ : std_logic;
signal \N__10218\ : std_logic;
signal \N__10217\ : std_logic;
signal \N__10216\ : std_logic;
signal \N__10215\ : std_logic;
signal \N__10214\ : std_logic;
signal \N__10213\ : std_logic;
signal \N__10212\ : std_logic;
signal \N__10211\ : std_logic;
signal \N__10210\ : std_logic;
signal \N__10209\ : std_logic;
signal \N__10208\ : std_logic;
signal \N__10207\ : std_logic;
signal \N__10206\ : std_logic;
signal \N__10205\ : std_logic;
signal \N__10204\ : std_logic;
signal \N__10203\ : std_logic;
signal \N__10202\ : std_logic;
signal \N__10201\ : std_logic;
signal \N__10200\ : std_logic;
signal \N__10199\ : std_logic;
signal \N__10198\ : std_logic;
signal \N__10197\ : std_logic;
signal \N__10196\ : std_logic;
signal \N__10195\ : std_logic;
signal \N__10194\ : std_logic;
signal \N__10193\ : std_logic;
signal \N__10192\ : std_logic;
signal \N__10191\ : std_logic;
signal \N__10190\ : std_logic;
signal \N__10189\ : std_logic;
signal \N__10188\ : std_logic;
signal \N__10187\ : std_logic;
signal \N__10186\ : std_logic;
signal \N__10185\ : std_logic;
signal \N__10184\ : std_logic;
signal \N__10183\ : std_logic;
signal \N__10182\ : std_logic;
signal \N__10181\ : std_logic;
signal \N__10180\ : std_logic;
signal \N__10179\ : std_logic;
signal \N__10178\ : std_logic;
signal \N__10177\ : std_logic;
signal \N__10176\ : std_logic;
signal \N__10175\ : std_logic;
signal \N__10174\ : std_logic;
signal \N__10173\ : std_logic;
signal \N__10172\ : std_logic;
signal \N__10171\ : std_logic;
signal \N__10170\ : std_logic;
signal \N__10169\ : std_logic;
signal \N__10168\ : std_logic;
signal \N__10167\ : std_logic;
signal \N__10166\ : std_logic;
signal \N__10165\ : std_logic;
signal \N__10164\ : std_logic;
signal \N__10163\ : std_logic;
signal \N__10044\ : std_logic;
signal \N__10041\ : std_logic;
signal \N__10038\ : std_logic;
signal \N__10037\ : std_logic;
signal \N__10036\ : std_logic;
signal \N__10035\ : std_logic;
signal \N__10034\ : std_logic;
signal \N__10033\ : std_logic;
signal \N__10032\ : std_logic;
signal \N__10031\ : std_logic;
signal \N__10030\ : std_logic;
signal \N__10029\ : std_logic;
signal \N__10028\ : std_logic;
signal \N__10027\ : std_logic;
signal \N__10026\ : std_logic;
signal \N__10025\ : std_logic;
signal \N__10024\ : std_logic;
signal \N__10023\ : std_logic;
signal \N__10022\ : std_logic;
signal \N__10021\ : std_logic;
signal \N__10020\ : std_logic;
signal \N__10019\ : std_logic;
signal \N__10018\ : std_logic;
signal \N__10017\ : std_logic;
signal \N__10016\ : std_logic;
signal \N__10015\ : std_logic;
signal \N__10014\ : std_logic;
signal \N__10013\ : std_logic;
signal \N__10012\ : std_logic;
signal \N__10011\ : std_logic;
signal \N__10010\ : std_logic;
signal \N__10009\ : std_logic;
signal \N__10008\ : std_logic;
signal \N__10007\ : std_logic;
signal \N__10006\ : std_logic;
signal \N__10005\ : std_logic;
signal \N__10004\ : std_logic;
signal \N__10003\ : std_logic;
signal \N__10002\ : std_logic;
signal \N__10001\ : std_logic;
signal \N__10000\ : std_logic;
signal \N__9999\ : std_logic;
signal \N__9998\ : std_logic;
signal \N__9997\ : std_logic;
signal \N__9996\ : std_logic;
signal \N__9995\ : std_logic;
signal \N__9994\ : std_logic;
signal \N__9993\ : std_logic;
signal \N__9992\ : std_logic;
signal \N__9991\ : std_logic;
signal \N__9990\ : std_logic;
signal \N__9989\ : std_logic;
signal \N__9988\ : std_logic;
signal \N__9987\ : std_logic;
signal \N__9986\ : std_logic;
signal \N__9985\ : std_logic;
signal \N__9984\ : std_logic;
signal \N__9983\ : std_logic;
signal \N__9870\ : std_logic;
signal \N__9867\ : std_logic;
signal \N__9864\ : std_logic;
signal \N__9861\ : std_logic;
signal \N__9858\ : std_logic;
signal \N__9857\ : std_logic;
signal \N__9856\ : std_logic;
signal \N__9855\ : std_logic;
signal \N__9852\ : std_logic;
signal \N__9851\ : std_logic;
signal \N__9848\ : std_logic;
signal \N__9845\ : std_logic;
signal \N__9842\ : std_logic;
signal \N__9841\ : std_logic;
signal \N__9838\ : std_logic;
signal \N__9835\ : std_logic;
signal \N__9834\ : std_logic;
signal \N__9831\ : std_logic;
signal \N__9828\ : std_logic;
signal \N__9825\ : std_logic;
signal \N__9822\ : std_logic;
signal \N__9817\ : std_logic;
signal \N__9814\ : std_logic;
signal \N__9809\ : std_logic;
signal \N__9808\ : std_logic;
signal \N__9803\ : std_logic;
signal \N__9798\ : std_logic;
signal \N__9795\ : std_logic;
signal \N__9792\ : std_logic;
signal \N__9791\ : std_logic;
signal \N__9788\ : std_logic;
signal \N__9785\ : std_logic;
signal \N__9780\ : std_logic;
signal \N__9777\ : std_logic;
signal \N__9774\ : std_logic;
signal \N__9771\ : std_logic;
signal \N__9768\ : std_logic;
signal \N__9765\ : std_logic;
signal \N__9760\ : std_logic;
signal \N__9755\ : std_logic;
signal \N__9750\ : std_logic;
signal \N__9747\ : std_logic;
signal \N__9744\ : std_logic;
signal \N__9741\ : std_logic;
signal \N__9738\ : std_logic;
signal \N__9735\ : std_logic;
signal \N__9732\ : std_logic;
signal \N__9729\ : std_logic;
signal \N__9726\ : std_logic;
signal \N__9723\ : std_logic;
signal \N__9720\ : std_logic;
signal \N__9717\ : std_logic;
signal \N__9714\ : std_logic;
signal \N__9711\ : std_logic;
signal \N__9708\ : std_logic;
signal \N__9705\ : std_logic;
signal \N__9702\ : std_logic;
signal \N__9699\ : std_logic;
signal \N__9696\ : std_logic;
signal \N__9693\ : std_logic;
signal \N__9690\ : std_logic;
signal \N__9689\ : std_logic;
signal \N__9688\ : std_logic;
signal \N__9687\ : std_logic;
signal \N__9686\ : std_logic;
signal \N__9685\ : std_logic;
signal \N__9684\ : std_logic;
signal \N__9683\ : std_logic;
signal \N__9680\ : std_logic;
signal \N__9675\ : std_logic;
signal \N__9674\ : std_logic;
signal \N__9673\ : std_logic;
signal \N__9672\ : std_logic;
signal \N__9663\ : std_logic;
signal \N__9660\ : std_logic;
signal \N__9659\ : std_logic;
signal \N__9658\ : std_logic;
signal \N__9657\ : std_logic;
signal \N__9656\ : std_logic;
signal \N__9653\ : std_logic;
signal \N__9650\ : std_logic;
signal \N__9643\ : std_logic;
signal \N__9638\ : std_logic;
signal \N__9631\ : std_logic;
signal \N__9630\ : std_logic;
signal \N__9629\ : std_logic;
signal \N__9628\ : std_logic;
signal \N__9627\ : std_logic;
signal \N__9624\ : std_logic;
signal \N__9621\ : std_logic;
signal \N__9618\ : std_logic;
signal \N__9611\ : std_logic;
signal \N__9602\ : std_logic;
signal \N__9601\ : std_logic;
signal \N__9600\ : std_logic;
signal \N__9597\ : std_logic;
signal \N__9594\ : std_logic;
signal \N__9591\ : std_logic;
signal \N__9586\ : std_logic;
signal \N__9583\ : std_logic;
signal \N__9580\ : std_logic;
signal \N__9567\ : std_logic;
signal \N__9564\ : std_logic;
signal \N__9561\ : std_logic;
signal \N__9558\ : std_logic;
signal \N__9557\ : std_logic;
signal \N__9556\ : std_logic;
signal \N__9555\ : std_logic;
signal \N__9554\ : std_logic;
signal \N__9553\ : std_logic;
signal \N__9552\ : std_logic;
signal \N__9537\ : std_logic;
signal \N__9534\ : std_logic;
signal \N__9531\ : std_logic;
signal \N__9528\ : std_logic;
signal \N__9525\ : std_logic;
signal \N__9522\ : std_logic;
signal \N__9519\ : std_logic;
signal \N__9516\ : std_logic;
signal \N__9513\ : std_logic;
signal \N__9510\ : std_logic;
signal \N__9507\ : std_logic;
signal \N__9506\ : std_logic;
signal \N__9505\ : std_logic;
signal \N__9504\ : std_logic;
signal \N__9501\ : std_logic;
signal \N__9498\ : std_logic;
signal \N__9495\ : std_logic;
signal \N__9492\ : std_logic;
signal \N__9491\ : std_logic;
signal \N__9488\ : std_logic;
signal \N__9485\ : std_logic;
signal \N__9480\ : std_logic;
signal \N__9477\ : std_logic;
signal \N__9474\ : std_logic;
signal \N__9469\ : std_logic;
signal \N__9466\ : std_logic;
signal \N__9459\ : std_logic;
signal \N__9458\ : std_logic;
signal \N__9455\ : std_logic;
signal \N__9452\ : std_logic;
signal \N__9451\ : std_logic;
signal \N__9448\ : std_logic;
signal \N__9445\ : std_logic;
signal \N__9444\ : std_logic;
signal \N__9443\ : std_logic;
signal \N__9440\ : std_logic;
signal \N__9435\ : std_logic;
signal \N__9432\ : std_logic;
signal \N__9429\ : std_logic;
signal \N__9426\ : std_logic;
signal \N__9423\ : std_logic;
signal \N__9420\ : std_logic;
signal \N__9417\ : std_logic;
signal \N__9414\ : std_logic;
signal \N__9411\ : std_logic;
signal \N__9404\ : std_logic;
signal \N__9399\ : std_logic;
signal \N__9398\ : std_logic;
signal \N__9395\ : std_logic;
signal \N__9392\ : std_logic;
signal \N__9389\ : std_logic;
signal \N__9386\ : std_logic;
signal \N__9383\ : std_logic;
signal \N__9382\ : std_logic;
signal \N__9379\ : std_logic;
signal \N__9376\ : std_logic;
signal \N__9373\ : std_logic;
signal \N__9366\ : std_logic;
signal \N__9363\ : std_logic;
signal \N__9360\ : std_logic;
signal \N__9357\ : std_logic;
signal \N__9354\ : std_logic;
signal \N__9351\ : std_logic;
signal \N__9348\ : std_logic;
signal \N__9345\ : std_logic;
signal \N__9342\ : std_logic;
signal \N__9339\ : std_logic;
signal \N__9336\ : std_logic;
signal \N__9333\ : std_logic;
signal \N__9330\ : std_logic;
signal \N__9327\ : std_logic;
signal \N__9324\ : std_logic;
signal \N__9321\ : std_logic;
signal \N__9318\ : std_logic;
signal \N__9317\ : std_logic;
signal \N__9314\ : std_logic;
signal \N__9311\ : std_logic;
signal \N__9306\ : std_logic;
signal \N__9303\ : std_logic;
signal \N__9302\ : std_logic;
signal \N__9299\ : std_logic;
signal \N__9296\ : std_logic;
signal \N__9291\ : std_logic;
signal \N__9290\ : std_logic;
signal \N__9289\ : std_logic;
signal \N__9288\ : std_logic;
signal \N__9287\ : std_logic;
signal \N__9286\ : std_logic;
signal \N__9273\ : std_logic;
signal \N__9270\ : std_logic;
signal \N__9267\ : std_logic;
signal \N__9264\ : std_logic;
signal \N__9261\ : std_logic;
signal \N__9258\ : std_logic;
signal \N__9255\ : std_logic;
signal \N__9252\ : std_logic;
signal \N__9249\ : std_logic;
signal \N__9248\ : std_logic;
signal \N__9245\ : std_logic;
signal \N__9242\ : std_logic;
signal \N__9237\ : std_logic;
signal \N__9234\ : std_logic;
signal \N__9231\ : std_logic;
signal \N__9228\ : std_logic;
signal \N__9225\ : std_logic;
signal \N__9222\ : std_logic;
signal \N__9219\ : std_logic;
signal \N__9216\ : std_logic;
signal \N__9213\ : std_logic;
signal \N__9210\ : std_logic;
signal \N__9207\ : std_logic;
signal \N__9204\ : std_logic;
signal \N__9201\ : std_logic;
signal \N__9198\ : std_logic;
signal \N__9195\ : std_logic;
signal \N__9192\ : std_logic;
signal \N__9189\ : std_logic;
signal \N__9186\ : std_logic;
signal \N__9183\ : std_logic;
signal \N__9180\ : std_logic;
signal \N__9177\ : std_logic;
signal \N__9174\ : std_logic;
signal \N__9171\ : std_logic;
signal \N__9168\ : std_logic;
signal \N__9165\ : std_logic;
signal \N__9162\ : std_logic;
signal \N__9159\ : std_logic;
signal \N__9156\ : std_logic;
signal \N__9153\ : std_logic;
signal \N__9150\ : std_logic;
signal \N__9147\ : std_logic;
signal \N__9144\ : std_logic;
signal \N__9141\ : std_logic;
signal \N__9138\ : std_logic;
signal \N__9135\ : std_logic;
signal \N__9132\ : std_logic;
signal \N__9129\ : std_logic;
signal \N__9126\ : std_logic;
signal \N__9123\ : std_logic;
signal \N__9120\ : std_logic;
signal \N__9117\ : std_logic;
signal \N__9114\ : std_logic;
signal \N__9111\ : std_logic;
signal \N__9110\ : std_logic;
signal \N__9107\ : std_logic;
signal \N__9104\ : std_logic;
signal \N__9099\ : std_logic;
signal \N__9098\ : std_logic;
signal \N__9095\ : std_logic;
signal \N__9092\ : std_logic;
signal \N__9087\ : std_logic;
signal \N__9084\ : std_logic;
signal \N__9081\ : std_logic;
signal \N__9080\ : std_logic;
signal \N__9077\ : std_logic;
signal \N__9074\ : std_logic;
signal \N__9069\ : std_logic;
signal \N__9066\ : std_logic;
signal \N__9063\ : std_logic;
signal \N__9062\ : std_logic;
signal \N__9059\ : std_logic;
signal \N__9056\ : std_logic;
signal \N__9051\ : std_logic;
signal \N__9050\ : std_logic;
signal \N__9047\ : std_logic;
signal \N__9044\ : std_logic;
signal \N__9039\ : std_logic;
signal \N__9038\ : std_logic;
signal \N__9035\ : std_logic;
signal \N__9032\ : std_logic;
signal \N__9027\ : std_logic;
signal \N__9026\ : std_logic;
signal \N__9023\ : std_logic;
signal \N__9020\ : std_logic;
signal \N__9015\ : std_logic;
signal \N__9014\ : std_logic;
signal \N__9011\ : std_logic;
signal \N__9008\ : std_logic;
signal \N__9003\ : std_logic;
signal \N__9000\ : std_logic;
signal \N__8999\ : std_logic;
signal \N__8998\ : std_logic;
signal \N__8997\ : std_logic;
signal \N__8996\ : std_logic;
signal \N__8995\ : std_logic;
signal \N__8994\ : std_logic;
signal \N__8993\ : std_logic;
signal \N__8992\ : std_logic;
signal \N__8991\ : std_logic;
signal \N__8990\ : std_logic;
signal \N__8989\ : std_logic;
signal \N__8988\ : std_logic;
signal \N__8987\ : std_logic;
signal \N__8986\ : std_logic;
signal \N__8985\ : std_logic;
signal \N__8984\ : std_logic;
signal \N__8983\ : std_logic;
signal \N__8982\ : std_logic;
signal \N__8981\ : std_logic;
signal \N__8980\ : std_logic;
signal \N__8979\ : std_logic;
signal \N__8978\ : std_logic;
signal \N__8977\ : std_logic;
signal \N__8976\ : std_logic;
signal \N__8975\ : std_logic;
signal \N__8974\ : std_logic;
signal \N__8973\ : std_logic;
signal \N__8972\ : std_logic;
signal \N__8971\ : std_logic;
signal \N__8970\ : std_logic;
signal \N__8969\ : std_logic;
signal \N__8968\ : std_logic;
signal \N__8967\ : std_logic;
signal \N__8966\ : std_logic;
signal \N__8957\ : std_logic;
signal \N__8948\ : std_logic;
signal \N__8939\ : std_logic;
signal \N__8930\ : std_logic;
signal \N__8925\ : std_logic;
signal \N__8922\ : std_logic;
signal \N__8913\ : std_logic;
signal \N__8904\ : std_logic;
signal \N__8903\ : std_logic;
signal \N__8902\ : std_logic;
signal \N__8901\ : std_logic;
signal \N__8892\ : std_logic;
signal \N__8883\ : std_logic;
signal \N__8880\ : std_logic;
signal \N__8877\ : std_logic;
signal \N__8874\ : std_logic;
signal \N__8867\ : std_logic;
signal \N__8864\ : std_logic;
signal \N__8861\ : std_logic;
signal \N__8856\ : std_logic;
signal \N__8853\ : std_logic;
signal \N__8848\ : std_logic;
signal \N__8839\ : std_logic;
signal \N__8834\ : std_logic;
signal \N__8829\ : std_logic;
signal \N__8826\ : std_logic;
signal \N__8823\ : std_logic;
signal \N__8820\ : std_logic;
signal \N__8817\ : std_logic;
signal \N__8814\ : std_logic;
signal \N__8811\ : std_logic;
signal \N__8806\ : std_logic;
signal \N__8803\ : std_logic;
signal \N__8796\ : std_logic;
signal \N__8793\ : std_logic;
signal \N__8792\ : std_logic;
signal \N__8791\ : std_logic;
signal \N__8784\ : std_logic;
signal \N__8781\ : std_logic;
signal \N__8778\ : std_logic;
signal \N__8775\ : std_logic;
signal \N__8774\ : std_logic;
signal \N__8771\ : std_logic;
signal \N__8768\ : std_logic;
signal \N__8763\ : std_logic;
signal \N__8760\ : std_logic;
signal \N__8759\ : std_logic;
signal \N__8756\ : std_logic;
signal \N__8753\ : std_logic;
signal \N__8748\ : std_logic;
signal \N__8745\ : std_logic;
signal \N__8744\ : std_logic;
signal \N__8741\ : std_logic;
signal \N__8738\ : std_logic;
signal \N__8733\ : std_logic;
signal \N__8730\ : std_logic;
signal \N__8729\ : std_logic;
signal \N__8726\ : std_logic;
signal \N__8723\ : std_logic;
signal \N__8718\ : std_logic;
signal \N__8715\ : std_logic;
signal \N__8712\ : std_logic;
signal \N__8709\ : std_logic;
signal \N__8706\ : std_logic;
signal \N__8703\ : std_logic;
signal \N__8700\ : std_logic;
signal \N__8697\ : std_logic;
signal \N__8694\ : std_logic;
signal \N__8691\ : std_logic;
signal \N__8688\ : std_logic;
signal \N__8685\ : std_logic;
signal \N__8682\ : std_logic;
signal \N__8679\ : std_logic;
signal \N__8676\ : std_logic;
signal \N__8673\ : std_logic;
signal \N__8670\ : std_logic;
signal \N__8667\ : std_logic;
signal \N__8666\ : std_logic;
signal \N__8663\ : std_logic;
signal \N__8660\ : std_logic;
signal \N__8655\ : std_logic;
signal \N__8652\ : std_logic;
signal \N__8651\ : std_logic;
signal \N__8648\ : std_logic;
signal \N__8645\ : std_logic;
signal \N__8640\ : std_logic;
signal \N__8637\ : std_logic;
signal \N__8636\ : std_logic;
signal \N__8633\ : std_logic;
signal \N__8630\ : std_logic;
signal \N__8625\ : std_logic;
signal \N__8622\ : std_logic;
signal \N__8619\ : std_logic;
signal \N__8618\ : std_logic;
signal \N__8615\ : std_logic;
signal \N__8612\ : std_logic;
signal \N__8607\ : std_logic;
signal \N__8604\ : std_logic;
signal \N__8601\ : std_logic;
signal \N__8598\ : std_logic;
signal \N__8595\ : std_logic;
signal \N__8594\ : std_logic;
signal \N__8591\ : std_logic;
signal \N__8588\ : std_logic;
signal \N__8585\ : std_logic;
signal \N__8582\ : std_logic;
signal \N__8579\ : std_logic;
signal \N__8574\ : std_logic;
signal \N__8573\ : std_logic;
signal \N__8570\ : std_logic;
signal \N__8569\ : std_logic;
signal \N__8568\ : std_logic;
signal \N__8567\ : std_logic;
signal \N__8564\ : std_logic;
signal \N__8561\ : std_logic;
signal \N__8560\ : std_logic;
signal \N__8555\ : std_logic;
signal \N__8554\ : std_logic;
signal \N__8551\ : std_logic;
signal \N__8550\ : std_logic;
signal \N__8547\ : std_logic;
signal \N__8544\ : std_logic;
signal \N__8541\ : std_logic;
signal \N__8540\ : std_logic;
signal \N__8537\ : std_logic;
signal \N__8534\ : std_logic;
signal \N__8531\ : std_logic;
signal \N__8530\ : std_logic;
signal \N__8527\ : std_logic;
signal \N__8524\ : std_logic;
signal \N__8521\ : std_logic;
signal \N__8518\ : std_logic;
signal \N__8515\ : std_logic;
signal \N__8512\ : std_logic;
signal \N__8507\ : std_logic;
signal \N__8506\ : std_logic;
signal \N__8503\ : std_logic;
signal \N__8500\ : std_logic;
signal \N__8493\ : std_logic;
signal \N__8490\ : std_logic;
signal \N__8487\ : std_logic;
signal \N__8484\ : std_logic;
signal \N__8481\ : std_logic;
signal \N__8472\ : std_logic;
signal \N__8463\ : std_logic;
signal \N__8460\ : std_logic;
signal \N__8457\ : std_logic;
signal \N__8454\ : std_logic;
signal \N__8453\ : std_logic;
signal \N__8452\ : std_logic;
signal \N__8449\ : std_logic;
signal \N__8446\ : std_logic;
signal \N__8443\ : std_logic;
signal \N__8440\ : std_logic;
signal \N__8433\ : std_logic;
signal \N__8430\ : std_logic;
signal \N__8427\ : std_logic;
signal \N__8424\ : std_logic;
signal \N__8421\ : std_logic;
signal \N__8418\ : std_logic;
signal \N__8415\ : std_logic;
signal \N__8412\ : std_logic;
signal \N__8409\ : std_logic;
signal \N__8406\ : std_logic;
signal \N__8403\ : std_logic;
signal \N__8400\ : std_logic;
signal \N__8397\ : std_logic;
signal \N__8396\ : std_logic;
signal \N__8395\ : std_logic;
signal \N__8394\ : std_logic;
signal \N__8393\ : std_logic;
signal \N__8392\ : std_logic;
signal \N__8389\ : std_logic;
signal \N__8386\ : std_logic;
signal \N__8383\ : std_logic;
signal \N__8380\ : std_logic;
signal \N__8377\ : std_logic;
signal \N__8374\ : std_logic;
signal \N__8373\ : std_logic;
signal \N__8366\ : std_logic;
signal \N__8365\ : std_logic;
signal \N__8364\ : std_logic;
signal \N__8361\ : std_logic;
signal \N__8356\ : std_logic;
signal \N__8355\ : std_logic;
signal \N__8352\ : std_logic;
signal \N__8349\ : std_logic;
signal \N__8346\ : std_logic;
signal \N__8345\ : std_logic;
signal \N__8344\ : std_logic;
signal \N__8341\ : std_logic;
signal \N__8336\ : std_logic;
signal \N__8333\ : std_logic;
signal \N__8332\ : std_logic;
signal \N__8331\ : std_logic;
signal \N__8330\ : std_logic;
signal \N__8329\ : std_logic;
signal \N__8326\ : std_logic;
signal \N__8323\ : std_logic;
signal \N__8320\ : std_logic;
signal \N__8315\ : std_logic;
signal \N__8314\ : std_logic;
signal \N__8307\ : std_logic;
signal \N__8304\ : std_logic;
signal \N__8301\ : std_logic;
signal \N__8296\ : std_logic;
signal \N__8293\ : std_logic;
signal \N__8288\ : std_logic;
signal \N__8285\ : std_logic;
signal \N__8282\ : std_logic;
signal \N__8281\ : std_logic;
signal \N__8272\ : std_logic;
signal \N__8269\ : std_logic;
signal \N__8266\ : std_logic;
signal \N__8261\ : std_logic;
signal \N__8258\ : std_logic;
signal \N__8255\ : std_logic;
signal \N__8246\ : std_logic;
signal \N__8241\ : std_logic;
signal \N__8240\ : std_logic;
signal \N__8239\ : std_logic;
signal \N__8238\ : std_logic;
signal \N__8233\ : std_logic;
signal \N__8228\ : std_logic;
signal \N__8227\ : std_logic;
signal \N__8222\ : std_logic;
signal \N__8219\ : std_logic;
signal \N__8216\ : std_logic;
signal \N__8213\ : std_logic;
signal \N__8208\ : std_logic;
signal \N__8205\ : std_logic;
signal \N__8202\ : std_logic;
signal \N__8199\ : std_logic;
signal \N__8198\ : std_logic;
signal \N__8195\ : std_logic;
signal \N__8192\ : std_logic;
signal \N__8189\ : std_logic;
signal \N__8186\ : std_logic;
signal \N__8181\ : std_logic;
signal \N__8180\ : std_logic;
signal \N__8177\ : std_logic;
signal \N__8174\ : std_logic;
signal \N__8173\ : std_logic;
signal \N__8172\ : std_logic;
signal \N__8169\ : std_logic;
signal \N__8166\ : std_logic;
signal \N__8163\ : std_logic;
signal \N__8160\ : std_logic;
signal \N__8159\ : std_logic;
signal \N__8152\ : std_logic;
signal \N__8149\ : std_logic;
signal \N__8148\ : std_logic;
signal \N__8145\ : std_logic;
signal \N__8140\ : std_logic;
signal \N__8137\ : std_logic;
signal \N__8136\ : std_logic;
signal \N__8135\ : std_logic;
signal \N__8132\ : std_logic;
signal \N__8127\ : std_logic;
signal \N__8124\ : std_logic;
signal \N__8121\ : std_logic;
signal \N__8120\ : std_logic;
signal \N__8117\ : std_logic;
signal \N__8114\ : std_logic;
signal \N__8111\ : std_logic;
signal \N__8106\ : std_logic;
signal \N__8097\ : std_logic;
signal \N__8094\ : std_logic;
signal \N__8091\ : std_logic;
signal \N__8088\ : std_logic;
signal \N__8085\ : std_logic;
signal \N__8082\ : std_logic;
signal \N__8079\ : std_logic;
signal \N__8078\ : std_logic;
signal \N__8075\ : std_logic;
signal \N__8072\ : std_logic;
signal \N__8071\ : std_logic;
signal \N__8066\ : std_logic;
signal \N__8063\ : std_logic;
signal \N__8060\ : std_logic;
signal \N__8055\ : std_logic;
signal \N__8052\ : std_logic;
signal \N__8049\ : std_logic;
signal \N__8046\ : std_logic;
signal \N__8045\ : std_logic;
signal \N__8042\ : std_logic;
signal \N__8039\ : std_logic;
signal \N__8038\ : std_logic;
signal \N__8035\ : std_logic;
signal \N__8032\ : std_logic;
signal \N__8029\ : std_logic;
signal \N__8026\ : std_logic;
signal \N__8021\ : std_logic;
signal \N__8016\ : std_logic;
signal \N__8015\ : std_logic;
signal \N__8012\ : std_logic;
signal \N__8011\ : std_logic;
signal \N__8010\ : std_logic;
signal \N__8009\ : std_logic;
signal \N__8006\ : std_logic;
signal \N__8003\ : std_logic;
signal \N__8000\ : std_logic;
signal \N__7999\ : std_logic;
signal \N__7998\ : std_logic;
signal \N__7997\ : std_logic;
signal \N__7992\ : std_logic;
signal \N__7989\ : std_logic;
signal \N__7986\ : std_logic;
signal \N__7983\ : std_logic;
signal \N__7980\ : std_logic;
signal \N__7977\ : std_logic;
signal \N__7974\ : std_logic;
signal \N__7971\ : std_logic;
signal \N__7964\ : std_logic;
signal \N__7961\ : std_logic;
signal \N__7956\ : std_logic;
signal \N__7953\ : std_logic;
signal \N__7950\ : std_logic;
signal \N__7947\ : std_logic;
signal \N__7944\ : std_logic;
signal \N__7941\ : std_logic;
signal \N__7938\ : std_logic;
signal \N__7929\ : std_logic;
signal \N__7926\ : std_logic;
signal \N__7923\ : std_logic;
signal \N__7922\ : std_logic;
signal \N__7921\ : std_logic;
signal \N__7920\ : std_logic;
signal \N__7919\ : std_logic;
signal \N__7916\ : std_logic;
signal \N__7915\ : std_logic;
signal \N__7914\ : std_logic;
signal \N__7913\ : std_logic;
signal \N__7912\ : std_logic;
signal \N__7911\ : std_logic;
signal \N__7910\ : std_logic;
signal \N__7909\ : std_logic;
signal \N__7908\ : std_logic;
signal \N__7907\ : std_logic;
signal \N__7906\ : std_logic;
signal \N__7905\ : std_logic;
signal \N__7904\ : std_logic;
signal \N__7903\ : std_logic;
signal \N__7902\ : std_logic;
signal \N__7901\ : std_logic;
signal \N__7898\ : std_logic;
signal \N__7895\ : std_logic;
signal \N__7894\ : std_logic;
signal \N__7891\ : std_logic;
signal \N__7888\ : std_logic;
signal \N__7883\ : std_logic;
signal \N__7882\ : std_logic;
signal \N__7879\ : std_logic;
signal \N__7878\ : std_logic;
signal \N__7877\ : std_logic;
signal \N__7874\ : std_logic;
signal \N__7873\ : std_logic;
signal \N__7870\ : std_logic;
signal \N__7867\ : std_logic;
signal \N__7860\ : std_logic;
signal \N__7849\ : std_logic;
signal \N__7846\ : std_logic;
signal \N__7845\ : std_logic;
signal \N__7842\ : std_logic;
signal \N__7839\ : std_logic;
signal \N__7836\ : std_logic;
signal \N__7833\ : std_logic;
signal \N__7832\ : std_logic;
signal \N__7831\ : std_logic;
signal \N__7826\ : std_logic;
signal \N__7823\ : std_logic;
signal \N__7812\ : std_logic;
signal \N__7809\ : std_logic;
signal \N__7808\ : std_logic;
signal \N__7805\ : std_logic;
signal \N__7798\ : std_logic;
signal \N__7791\ : std_logic;
signal \N__7788\ : std_logic;
signal \N__7783\ : std_logic;
signal \N__7778\ : std_logic;
signal \N__7771\ : std_logic;
signal \N__7766\ : std_logic;
signal \N__7765\ : std_logic;
signal \N__7764\ : std_logic;
signal \N__7757\ : std_logic;
signal \N__7750\ : std_logic;
signal \N__7745\ : std_logic;
signal \N__7742\ : std_logic;
signal \N__7739\ : std_logic;
signal \N__7728\ : std_logic;
signal \N__7725\ : std_logic;
signal \N__7722\ : std_logic;
signal \N__7719\ : std_logic;
signal \N__7716\ : std_logic;
signal \N__7713\ : std_logic;
signal \N__7710\ : std_logic;
signal \N__7707\ : std_logic;
signal \N__7704\ : std_logic;
signal \N__7703\ : std_logic;
signal \N__7700\ : std_logic;
signal \N__7697\ : std_logic;
signal \N__7696\ : std_logic;
signal \N__7693\ : std_logic;
signal \N__7690\ : std_logic;
signal \N__7687\ : std_logic;
signal \N__7680\ : std_logic;
signal \N__7677\ : std_logic;
signal \N__7674\ : std_logic;
signal \N__7671\ : std_logic;
signal \N__7668\ : std_logic;
signal \N__7665\ : std_logic;
signal \N__7664\ : std_logic;
signal \N__7663\ : std_logic;
signal \N__7662\ : std_logic;
signal \N__7661\ : std_logic;
signal \N__7658\ : std_logic;
signal \N__7655\ : std_logic;
signal \N__7652\ : std_logic;
signal \N__7649\ : std_logic;
signal \N__7648\ : std_logic;
signal \N__7645\ : std_logic;
signal \N__7642\ : std_logic;
signal \N__7639\ : std_logic;
signal \N__7636\ : std_logic;
signal \N__7635\ : std_logic;
signal \N__7632\ : std_logic;
signal \N__7629\ : std_logic;
signal \N__7626\ : std_logic;
signal \N__7623\ : std_logic;
signal \N__7620\ : std_logic;
signal \N__7617\ : std_logic;
signal \N__7614\ : std_logic;
signal \N__7611\ : std_logic;
signal \N__7608\ : std_logic;
signal \N__7601\ : std_logic;
signal \N__7594\ : std_logic;
signal \N__7587\ : std_logic;
signal \N__7584\ : std_logic;
signal \N__7581\ : std_logic;
signal \N__7580\ : std_logic;
signal \N__7579\ : std_logic;
signal \N__7574\ : std_logic;
signal \N__7571\ : std_logic;
signal \N__7566\ : std_logic;
signal \N__7563\ : std_logic;
signal \N__7560\ : std_logic;
signal \N__7557\ : std_logic;
signal \N__7554\ : std_logic;
signal \N__7551\ : std_logic;
signal \N__7550\ : std_logic;
signal \N__7547\ : std_logic;
signal \N__7544\ : std_logic;
signal \N__7539\ : std_logic;
signal \N__7536\ : std_logic;
signal \N__7535\ : std_logic;
signal \N__7532\ : std_logic;
signal \N__7529\ : std_logic;
signal \N__7528\ : std_logic;
signal \N__7525\ : std_logic;
signal \N__7522\ : std_logic;
signal \N__7519\ : std_logic;
signal \N__7512\ : std_logic;
signal \N__7509\ : std_logic;
signal \N__7506\ : std_logic;
signal \N__7503\ : std_logic;
signal \N__7500\ : std_logic;
signal \N__7497\ : std_logic;
signal \N__7494\ : std_logic;
signal \N__7491\ : std_logic;
signal \N__7490\ : std_logic;
signal \N__7487\ : std_logic;
signal \N__7484\ : std_logic;
signal \N__7479\ : std_logic;
signal \N__7476\ : std_logic;
signal \N__7473\ : std_logic;
signal \N__7470\ : std_logic;
signal \N__7467\ : std_logic;
signal \N__7464\ : std_logic;
signal \N__7461\ : std_logic;
signal \N__7460\ : std_logic;
signal \N__7457\ : std_logic;
signal \N__7454\ : std_logic;
signal \N__7449\ : std_logic;
signal \N__7446\ : std_logic;
signal \N__7445\ : std_logic;
signal \N__7444\ : std_logic;
signal \N__7443\ : std_logic;
signal \N__7442\ : std_logic;
signal \N__7439\ : std_logic;
signal \N__7436\ : std_logic;
signal \N__7433\ : std_logic;
signal \N__7428\ : std_logic;
signal \N__7427\ : std_logic;
signal \N__7420\ : std_logic;
signal \N__7417\ : std_logic;
signal \N__7414\ : std_logic;
signal \N__7411\ : std_logic;
signal \N__7406\ : std_logic;
signal \N__7401\ : std_logic;
signal \N__7400\ : std_logic;
signal \N__7399\ : std_logic;
signal \N__7398\ : std_logic;
signal \N__7397\ : std_logic;
signal \N__7394\ : std_logic;
signal \N__7393\ : std_logic;
signal \N__7390\ : std_logic;
signal \N__7383\ : std_logic;
signal \N__7382\ : std_logic;
signal \N__7381\ : std_logic;
signal \N__7378\ : std_logic;
signal \N__7375\ : std_logic;
signal \N__7372\ : std_logic;
signal \N__7371\ : std_logic;
signal \N__7368\ : std_logic;
signal \N__7365\ : std_logic;
signal \N__7362\ : std_logic;
signal \N__7359\ : std_logic;
signal \N__7354\ : std_logic;
signal \N__7351\ : std_logic;
signal \N__7344\ : std_logic;
signal \N__7339\ : std_logic;
signal \N__7336\ : std_logic;
signal \N__7333\ : std_logic;
signal \N__7328\ : std_logic;
signal \N__7323\ : std_logic;
signal \N__7320\ : std_logic;
signal \N__7319\ : std_logic;
signal \N__7314\ : std_logic;
signal \N__7313\ : std_logic;
signal \N__7310\ : std_logic;
signal \N__7307\ : std_logic;
signal \N__7302\ : std_logic;
signal \N__7299\ : std_logic;
signal \N__7298\ : std_logic;
signal \N__7297\ : std_logic;
signal \N__7294\ : std_logic;
signal \N__7293\ : std_logic;
signal \N__7292\ : std_logic;
signal \N__7289\ : std_logic;
signal \N__7284\ : std_logic;
signal \N__7281\ : std_logic;
signal \N__7280\ : std_logic;
signal \N__7275\ : std_logic;
signal \N__7272\ : std_logic;
signal \N__7267\ : std_logic;
signal \N__7266\ : std_logic;
signal \N__7265\ : std_logic;
signal \N__7262\ : std_logic;
signal \N__7257\ : std_logic;
signal \N__7252\ : std_logic;
signal \N__7245\ : std_logic;
signal \N__7242\ : std_logic;
signal \N__7239\ : std_logic;
signal \N__7236\ : std_logic;
signal \N__7235\ : std_logic;
signal \N__7232\ : std_logic;
signal \N__7229\ : std_logic;
signal \N__7224\ : std_logic;
signal \N__7221\ : std_logic;
signal \N__7218\ : std_logic;
signal \N__7217\ : std_logic;
signal \N__7214\ : std_logic;
signal \N__7211\ : std_logic;
signal \N__7206\ : std_logic;
signal \N__7203\ : std_logic;
signal \N__7202\ : std_logic;
signal \N__7201\ : std_logic;
signal \N__7198\ : std_logic;
signal \N__7195\ : std_logic;
signal \N__7192\ : std_logic;
signal \N__7191\ : std_logic;
signal \N__7188\ : std_logic;
signal \N__7185\ : std_logic;
signal \N__7184\ : std_logic;
signal \N__7181\ : std_logic;
signal \N__7178\ : std_logic;
signal \N__7177\ : std_logic;
signal \N__7176\ : std_logic;
signal \N__7173\ : std_logic;
signal \N__7170\ : std_logic;
signal \N__7167\ : std_logic;
signal \N__7162\ : std_logic;
signal \N__7157\ : std_logic;
signal \N__7146\ : std_logic;
signal \N__7143\ : std_logic;
signal \N__7142\ : std_logic;
signal \N__7141\ : std_logic;
signal \N__7140\ : std_logic;
signal \N__7139\ : std_logic;
signal \N__7136\ : std_logic;
signal \N__7135\ : std_logic;
signal \N__7134\ : std_logic;
signal \N__7131\ : std_logic;
signal \N__7128\ : std_logic;
signal \N__7127\ : std_logic;
signal \N__7126\ : std_logic;
signal \N__7125\ : std_logic;
signal \N__7122\ : std_logic;
signal \N__7119\ : std_logic;
signal \N__7116\ : std_logic;
signal \N__7113\ : std_logic;
signal \N__7110\ : std_logic;
signal \N__7103\ : std_logic;
signal \N__7098\ : std_logic;
signal \N__7083\ : std_logic;
signal \N__7080\ : std_logic;
signal \N__7077\ : std_logic;
signal \N__7076\ : std_logic;
signal \N__7075\ : std_logic;
signal \N__7074\ : std_logic;
signal \N__7073\ : std_logic;
signal \N__7072\ : std_logic;
signal \N__7071\ : std_logic;
signal \N__7070\ : std_logic;
signal \N__7067\ : std_logic;
signal \N__7064\ : std_logic;
signal \N__7061\ : std_logic;
signal \N__7054\ : std_logic;
signal \N__7049\ : std_logic;
signal \N__7038\ : std_logic;
signal \N__7035\ : std_logic;
signal \N__7032\ : std_logic;
signal \N__7029\ : std_logic;
signal \N__7026\ : std_logic;
signal \N__7023\ : std_logic;
signal \N__7020\ : std_logic;
signal \N__7017\ : std_logic;
signal \N__7014\ : std_logic;
signal \N__7011\ : std_logic;
signal \N__7008\ : std_logic;
signal \N__7005\ : std_logic;
signal \N__7002\ : std_logic;
signal \N__6999\ : std_logic;
signal \N__6996\ : std_logic;
signal \N__6993\ : std_logic;
signal \N__6990\ : std_logic;
signal \N__6987\ : std_logic;
signal \N__6984\ : std_logic;
signal \N__6981\ : std_logic;
signal \N__6978\ : std_logic;
signal \N__6975\ : std_logic;
signal \N__6972\ : std_logic;
signal \N__6969\ : std_logic;
signal \N__6966\ : std_logic;
signal \N__6963\ : std_logic;
signal \N__6960\ : std_logic;
signal \N__6957\ : std_logic;
signal \N__6954\ : std_logic;
signal \N__6951\ : std_logic;
signal \N__6948\ : std_logic;
signal \N__6945\ : std_logic;
signal \N__6942\ : std_logic;
signal \N__6941\ : std_logic;
signal \N__6940\ : std_logic;
signal \N__6937\ : std_logic;
signal \N__6932\ : std_logic;
signal \N__6931\ : std_logic;
signal \N__6928\ : std_logic;
signal \N__6925\ : std_logic;
signal \N__6922\ : std_logic;
signal \N__6919\ : std_logic;
signal \N__6916\ : std_logic;
signal \N__6913\ : std_logic;
signal \N__6906\ : std_logic;
signal \N__6903\ : std_logic;
signal \N__6902\ : std_logic;
signal \N__6899\ : std_logic;
signal \N__6896\ : std_logic;
signal \N__6895\ : std_logic;
signal \N__6894\ : std_logic;
signal \N__6889\ : std_logic;
signal \N__6886\ : std_logic;
signal \N__6883\ : std_logic;
signal \N__6880\ : std_logic;
signal \N__6875\ : std_logic;
signal \N__6870\ : std_logic;
signal \N__6867\ : std_logic;
signal \N__6864\ : std_logic;
signal \N__6861\ : std_logic;
signal \N__6858\ : std_logic;
signal \N__6857\ : std_logic;
signal \N__6856\ : std_logic;
signal \N__6855\ : std_logic;
signal \N__6852\ : std_logic;
signal \N__6849\ : std_logic;
signal \N__6846\ : std_logic;
signal \N__6843\ : std_logic;
signal \N__6834\ : std_logic;
signal \N__6831\ : std_logic;
signal \N__6830\ : std_logic;
signal \N__6829\ : std_logic;
signal \N__6826\ : std_logic;
signal \N__6823\ : std_logic;
signal \N__6820\ : std_logic;
signal \N__6813\ : std_logic;
signal \N__6810\ : std_logic;
signal \N__6807\ : std_logic;
signal \N__6806\ : std_logic;
signal \N__6803\ : std_logic;
signal \N__6800\ : std_logic;
signal \N__6795\ : std_logic;
signal \N__6792\ : std_logic;
signal \N__6791\ : std_logic;
signal \N__6788\ : std_logic;
signal \N__6785\ : std_logic;
signal \N__6780\ : std_logic;
signal \N__6779\ : std_logic;
signal \N__6778\ : std_logic;
signal \N__6777\ : std_logic;
signal \N__6774\ : std_logic;
signal \N__6773\ : std_logic;
signal \N__6770\ : std_logic;
signal \N__6767\ : std_logic;
signal \N__6764\ : std_logic;
signal \N__6759\ : std_logic;
signal \N__6750\ : std_logic;
signal \N__6747\ : std_logic;
signal \N__6746\ : std_logic;
signal \N__6745\ : std_logic;
signal \N__6742\ : std_logic;
signal \N__6737\ : std_logic;
signal \N__6732\ : std_logic;
signal \N__6729\ : std_logic;
signal \N__6726\ : std_logic;
signal \N__6723\ : std_logic;
signal \N__6720\ : std_logic;
signal \N__6717\ : std_logic;
signal \N__6714\ : std_logic;
signal \N__6711\ : std_logic;
signal \N__6708\ : std_logic;
signal \N__6705\ : std_logic;
signal \N__6702\ : std_logic;
signal \N__6699\ : std_logic;
signal \N__6696\ : std_logic;
signal \N__6693\ : std_logic;
signal \N__6690\ : std_logic;
signal \N__6687\ : std_logic;
signal \N__6684\ : std_logic;
signal \N__6681\ : std_logic;
signal \N__6680\ : std_logic;
signal \N__6677\ : std_logic;
signal \N__6674\ : std_logic;
signal \N__6673\ : std_logic;
signal \N__6670\ : std_logic;
signal \N__6667\ : std_logic;
signal \N__6664\ : std_logic;
signal \N__6657\ : std_logic;
signal \N__6654\ : std_logic;
signal \N__6651\ : std_logic;
signal \N__6648\ : std_logic;
signal \N__6645\ : std_logic;
signal \N__6642\ : std_logic;
signal \N__6639\ : std_logic;
signal \N__6636\ : std_logic;
signal \N__6633\ : std_logic;
signal \N__6630\ : std_logic;
signal \N__6627\ : std_logic;
signal \N__6624\ : std_logic;
signal \N__6621\ : std_logic;
signal \N__6618\ : std_logic;
signal \N__6617\ : std_logic;
signal \N__6616\ : std_logic;
signal \N__6613\ : std_logic;
signal \N__6610\ : std_logic;
signal \N__6607\ : std_logic;
signal \N__6600\ : std_logic;
signal \N__6597\ : std_logic;
signal \N__6594\ : std_logic;
signal \N__6591\ : std_logic;
signal \N__6590\ : std_logic;
signal \N__6589\ : std_logic;
signal \N__6588\ : std_logic;
signal \N__6585\ : std_logic;
signal \N__6580\ : std_logic;
signal \N__6577\ : std_logic;
signal \N__6574\ : std_logic;
signal \N__6571\ : std_logic;
signal \N__6568\ : std_logic;
signal \N__6565\ : std_logic;
signal \N__6560\ : std_logic;
signal \N__6555\ : std_logic;
signal \N__6552\ : std_logic;
signal \N__6549\ : std_logic;
signal \N__6546\ : std_logic;
signal \N__6543\ : std_logic;
signal \N__6540\ : std_logic;
signal \N__6537\ : std_logic;
signal \N__6536\ : std_logic;
signal \N__6535\ : std_logic;
signal \N__6534\ : std_logic;
signal \N__6533\ : std_logic;
signal \N__6530\ : std_logic;
signal \N__6527\ : std_logic;
signal \N__6524\ : std_logic;
signal \N__6519\ : std_logic;
signal \N__6510\ : std_logic;
signal \N__6509\ : std_logic;
signal \N__6508\ : std_logic;
signal \N__6507\ : std_logic;
signal \N__6504\ : std_logic;
signal \N__6501\ : std_logic;
signal \N__6496\ : std_logic;
signal \N__6489\ : std_logic;
signal \N__6486\ : std_logic;
signal \N__6483\ : std_logic;
signal \N__6480\ : std_logic;
signal \N__6477\ : std_logic;
signal \N__6474\ : std_logic;
signal \N__6471\ : std_logic;
signal \N__6470\ : std_logic;
signal \N__6469\ : std_logic;
signal \N__6468\ : std_logic;
signal \N__6463\ : std_logic;
signal \N__6462\ : std_logic;
signal \N__6461\ : std_logic;
signal \N__6458\ : std_logic;
signal \N__6457\ : std_logic;
signal \N__6456\ : std_logic;
signal \N__6453\ : std_logic;
signal \N__6452\ : std_logic;
signal \N__6451\ : std_logic;
signal \N__6448\ : std_logic;
signal \N__6443\ : std_logic;
signal \N__6440\ : std_logic;
signal \N__6437\ : std_logic;
signal \N__6434\ : std_logic;
signal \N__6431\ : std_logic;
signal \N__6426\ : std_logic;
signal \N__6421\ : std_logic;
signal \N__6418\ : std_logic;
signal \N__6417\ : std_logic;
signal \N__6416\ : std_logic;
signal \N__6415\ : std_logic;
signal \N__6412\ : std_logic;
signal \N__6405\ : std_logic;
signal \N__6402\ : std_logic;
signal \N__6399\ : std_logic;
signal \N__6398\ : std_logic;
signal \N__6397\ : std_logic;
signal \N__6396\ : std_logic;
signal \N__6395\ : std_logic;
signal \N__6394\ : std_logic;
signal \N__6391\ : std_logic;
signal \N__6390\ : std_logic;
signal \N__6389\ : std_logic;
signal \N__6386\ : std_logic;
signal \N__6385\ : std_logic;
signal \N__6384\ : std_logic;
signal \N__6383\ : std_logic;
signal \N__6382\ : std_logic;
signal \N__6381\ : std_logic;
signal \N__6380\ : std_logic;
signal \N__6379\ : std_logic;
signal \N__6376\ : std_logic;
signal \N__6375\ : std_logic;
signal \N__6372\ : std_logic;
signal \N__6369\ : std_logic;
signal \N__6364\ : std_logic;
signal \N__6353\ : std_logic;
signal \N__6346\ : std_logic;
signal \N__6335\ : std_logic;
signal \N__6332\ : std_logic;
signal \N__6323\ : std_logic;
signal \N__6306\ : std_logic;
signal \N__6303\ : std_logic;
signal \N__6300\ : std_logic;
signal \N__6297\ : std_logic;
signal \N__6294\ : std_logic;
signal \N__6291\ : std_logic;
signal \N__6288\ : std_logic;
signal \N__6287\ : std_logic;
signal \N__6286\ : std_logic;
signal \N__6283\ : std_logic;
signal \N__6280\ : std_logic;
signal \N__6277\ : std_logic;
signal \N__6270\ : std_logic;
signal \N__6267\ : std_logic;
signal \N__6264\ : std_logic;
signal \N__6261\ : std_logic;
signal \N__6258\ : std_logic;
signal \N__6255\ : std_logic;
signal \N__6252\ : std_logic;
signal \N__6249\ : std_logic;
signal \N__6248\ : std_logic;
signal \N__6247\ : std_logic;
signal \N__6244\ : std_logic;
signal \N__6243\ : std_logic;
signal \N__6238\ : std_logic;
signal \N__6233\ : std_logic;
signal \N__6228\ : std_logic;
signal \N__6225\ : std_logic;
signal \N__6222\ : std_logic;
signal \N__6219\ : std_logic;
signal \N__6216\ : std_logic;
signal \N__6213\ : std_logic;
signal \N__6210\ : std_logic;
signal \N__6207\ : std_logic;
signal \N__6204\ : std_logic;
signal \N__6203\ : std_logic;
signal \N__6202\ : std_logic;
signal \N__6201\ : std_logic;
signal \N__6196\ : std_logic;
signal \N__6195\ : std_logic;
signal \N__6194\ : std_logic;
signal \N__6193\ : std_logic;
signal \N__6188\ : std_logic;
signal \N__6185\ : std_logic;
signal \N__6178\ : std_logic;
signal \N__6175\ : std_logic;
signal \N__6168\ : std_logic;
signal \N__6165\ : std_logic;
signal \N__6162\ : std_logic;
signal \N__6159\ : std_logic;
signal \N__6156\ : std_logic;
signal \N__6153\ : std_logic;
signal \N__6150\ : std_logic;
signal \N__6147\ : std_logic;
signal \N__6144\ : std_logic;
signal \N__6143\ : std_logic;
signal \N__6140\ : std_logic;
signal \N__6137\ : std_logic;
signal \N__6134\ : std_logic;
signal \N__6131\ : std_logic;
signal \N__6126\ : std_logic;
signal \N__6123\ : std_logic;
signal \N__6122\ : std_logic;
signal \N__6121\ : std_logic;
signal \N__6118\ : std_logic;
signal \N__6115\ : std_logic;
signal \N__6114\ : std_logic;
signal \N__6111\ : std_logic;
signal \N__6106\ : std_logic;
signal \N__6103\ : std_logic;
signal \N__6096\ : std_logic;
signal \N__6093\ : std_logic;
signal \N__6090\ : std_logic;
signal \N__6087\ : std_logic;
signal \N__6086\ : std_logic;
signal \N__6085\ : std_logic;
signal \N__6082\ : std_logic;
signal \N__6079\ : std_logic;
signal \N__6078\ : std_logic;
signal \N__6075\ : std_logic;
signal \N__6072\ : std_logic;
signal \N__6069\ : std_logic;
signal \N__6068\ : std_logic;
signal \N__6067\ : std_logic;
signal \N__6064\ : std_logic;
signal \N__6061\ : std_logic;
signal \N__6056\ : std_logic;
signal \N__6053\ : std_logic;
signal \N__6050\ : std_logic;
signal \N__6039\ : std_logic;
signal \N__6036\ : std_logic;
signal \N__6033\ : std_logic;
signal \N__6030\ : std_logic;
signal \N__6027\ : std_logic;
signal \N__6024\ : std_logic;
signal \N__6021\ : std_logic;
signal \N__6018\ : std_logic;
signal \N__6015\ : std_logic;
signal \N__6014\ : std_logic;
signal \N__6011\ : std_logic;
signal \N__6008\ : std_logic;
signal \N__6003\ : std_logic;
signal \N__6000\ : std_logic;
signal \N__5997\ : std_logic;
signal \N__5994\ : std_logic;
signal \N__5991\ : std_logic;
signal \N__5990\ : std_logic;
signal \N__5987\ : std_logic;
signal \N__5984\ : std_logic;
signal \N__5979\ : std_logic;
signal \N__5976\ : std_logic;
signal \N__5973\ : std_logic;
signal \N__5970\ : std_logic;
signal \N__5967\ : std_logic;
signal \N__5964\ : std_logic;
signal \N__5961\ : std_logic;
signal \N__5958\ : std_logic;
signal \N__5955\ : std_logic;
signal \N__5952\ : std_logic;
signal \N__5949\ : std_logic;
signal \N__5948\ : std_logic;
signal \N__5947\ : std_logic;
signal \N__5944\ : std_logic;
signal \N__5941\ : std_logic;
signal \N__5938\ : std_logic;
signal \N__5937\ : std_logic;
signal \N__5934\ : std_logic;
signal \N__5931\ : std_logic;
signal \N__5926\ : std_logic;
signal \N__5919\ : std_logic;
signal \N__5916\ : std_logic;
signal \N__5913\ : std_logic;
signal \N__5910\ : std_logic;
signal \N__5907\ : std_logic;
signal \N__5904\ : std_logic;
signal \N__5901\ : std_logic;
signal \N__5898\ : std_logic;
signal \N__5895\ : std_logic;
signal \N__5892\ : std_logic;
signal \N__5891\ : std_logic;
signal \N__5888\ : std_logic;
signal \N__5885\ : std_logic;
signal \N__5880\ : std_logic;
signal \N__5879\ : std_logic;
signal \N__5876\ : std_logic;
signal \N__5871\ : std_logic;
signal \N__5870\ : std_logic;
signal \N__5869\ : std_logic;
signal \N__5868\ : std_logic;
signal \N__5865\ : std_logic;
signal \N__5862\ : std_logic;
signal \N__5857\ : std_logic;
signal \N__5850\ : std_logic;
signal \N__5849\ : std_logic;
signal \N__5846\ : std_logic;
signal \N__5843\ : std_logic;
signal \N__5838\ : std_logic;
signal \N__5835\ : std_logic;
signal \N__5832\ : std_logic;
signal \N__5829\ : std_logic;
signal \N__5826\ : std_logic;
signal \N__5823\ : std_logic;
signal \N__5822\ : std_logic;
signal \N__5819\ : std_logic;
signal \N__5816\ : std_logic;
signal \N__5811\ : std_logic;
signal \N__5808\ : std_logic;
signal \N__5807\ : std_logic;
signal \N__5804\ : std_logic;
signal \N__5801\ : std_logic;
signal \N__5796\ : std_logic;
signal \N__5793\ : std_logic;
signal \N__5790\ : std_logic;
signal \N__5787\ : std_logic;
signal \N__5786\ : std_logic;
signal \N__5783\ : std_logic;
signal \N__5780\ : std_logic;
signal \N__5775\ : std_logic;
signal \N__5772\ : std_logic;
signal \N__5769\ : std_logic;
signal \N__5766\ : std_logic;
signal \N__5763\ : std_logic;
signal \N__5762\ : std_logic;
signal \N__5761\ : std_logic;
signal \N__5760\ : std_logic;
signal \N__5755\ : std_logic;
signal \N__5750\ : std_logic;
signal \N__5745\ : std_logic;
signal \N__5744\ : std_logic;
signal \N__5741\ : std_logic;
signal \N__5738\ : std_logic;
signal \N__5735\ : std_logic;
signal \N__5732\ : std_logic;
signal \N__5727\ : std_logic;
signal \N__5726\ : std_logic;
signal \N__5723\ : std_logic;
signal \N__5720\ : std_logic;
signal \N__5715\ : std_logic;
signal \N__5714\ : std_logic;
signal \N__5709\ : std_logic;
signal \N__5706\ : std_logic;
signal \N__5705\ : std_logic;
signal \N__5704\ : std_logic;
signal \N__5701\ : std_logic;
signal \N__5700\ : std_logic;
signal \N__5697\ : std_logic;
signal \N__5690\ : std_logic;
signal \N__5685\ : std_logic;
signal \N__5684\ : std_logic;
signal \N__5683\ : std_logic;
signal \N__5680\ : std_logic;
signal \N__5677\ : std_logic;
signal \N__5674\ : std_logic;
signal \N__5667\ : std_logic;
signal \N__5664\ : std_logic;
signal \N__5661\ : std_logic;
signal \N__5658\ : std_logic;
signal \N__5655\ : std_logic;
signal \N__5652\ : std_logic;
signal \N__5651\ : std_logic;
signal \N__5648\ : std_logic;
signal \N__5645\ : std_logic;
signal \N__5640\ : std_logic;
signal \N__5639\ : std_logic;
signal \N__5636\ : std_logic;
signal \N__5633\ : std_logic;
signal \N__5632\ : std_logic;
signal \N__5629\ : std_logic;
signal \N__5626\ : std_logic;
signal \N__5623\ : std_logic;
signal \N__5616\ : std_logic;
signal \N__5613\ : std_logic;
signal \N__5610\ : std_logic;
signal \N__5607\ : std_logic;
signal \N__5604\ : std_logic;
signal \N__5601\ : std_logic;
signal \N__5598\ : std_logic;
signal \N__5595\ : std_logic;
signal \N__5592\ : std_logic;
signal \N__5589\ : std_logic;
signal \N__5586\ : std_logic;
signal \N__5583\ : std_logic;
signal \N__5580\ : std_logic;
signal \N__5577\ : std_logic;
signal \N__5574\ : std_logic;
signal \N__5573\ : std_logic;
signal \N__5568\ : std_logic;
signal \N__5565\ : std_logic;
signal \N__5562\ : std_logic;
signal \N__5559\ : std_logic;
signal \N__5556\ : std_logic;
signal \N__5553\ : std_logic;
signal \N__5550\ : std_logic;
signal \N__5547\ : std_logic;
signal \N__5546\ : std_logic;
signal \N__5543\ : std_logic;
signal \N__5540\ : std_logic;
signal \N__5535\ : std_logic;
signal \N__5532\ : std_logic;
signal \N__5529\ : std_logic;
signal \N__5526\ : std_logic;
signal \N__5523\ : std_logic;
signal \N__5522\ : std_logic;
signal \N__5521\ : std_logic;
signal \N__5520\ : std_logic;
signal \N__5513\ : std_logic;
signal \N__5510\ : std_logic;
signal \N__5507\ : std_logic;
signal \N__5502\ : std_logic;
signal \N__5499\ : std_logic;
signal \N__5496\ : std_logic;
signal \N__5493\ : std_logic;
signal \N__5490\ : std_logic;
signal \N__5487\ : std_logic;
signal \N__5484\ : std_logic;
signal \N__5481\ : std_logic;
signal \N__5478\ : std_logic;
signal \N__5475\ : std_logic;
signal \N__5472\ : std_logic;
signal \N__5469\ : std_logic;
signal \N__5466\ : std_logic;
signal \N__5463\ : std_logic;
signal \N__5460\ : std_logic;
signal \N__5457\ : std_logic;
signal \N__5454\ : std_logic;
signal \N__5453\ : std_logic;
signal \N__5450\ : std_logic;
signal \N__5447\ : std_logic;
signal \N__5442\ : std_logic;
signal \N__5441\ : std_logic;
signal \N__5440\ : std_logic;
signal \N__5437\ : std_logic;
signal \N__5432\ : std_logic;
signal \N__5427\ : std_logic;
signal \N__5424\ : std_logic;
signal \N__5423\ : std_logic;
signal \N__5422\ : std_logic;
signal \N__5417\ : std_logic;
signal \N__5414\ : std_logic;
signal \N__5409\ : std_logic;
signal \N__5408\ : std_logic;
signal \N__5403\ : std_logic;
signal \N__5400\ : std_logic;
signal \N__5399\ : std_logic;
signal \N__5396\ : std_logic;
signal \N__5393\ : std_logic;
signal \N__5390\ : std_logic;
signal \N__5387\ : std_logic;
signal \N__5382\ : std_logic;
signal \N__5379\ : std_logic;
signal \N__5378\ : std_logic;
signal \N__5377\ : std_logic;
signal \N__5374\ : std_logic;
signal \N__5371\ : std_logic;
signal \N__5368\ : std_logic;
signal \N__5365\ : std_logic;
signal \N__5362\ : std_logic;
signal \N__5355\ : std_logic;
signal \N__5354\ : std_logic;
signal \N__5353\ : std_logic;
signal \N__5352\ : std_logic;
signal \N__5347\ : std_logic;
signal \N__5344\ : std_logic;
signal \N__5341\ : std_logic;
signal \N__5338\ : std_logic;
signal \N__5331\ : std_logic;
signal \N__5328\ : std_logic;
signal \N__5325\ : std_logic;
signal \N__5322\ : std_logic;
signal \N__5321\ : std_logic;
signal \N__5318\ : std_logic;
signal \N__5315\ : std_logic;
signal \N__5310\ : std_logic;
signal \N__5307\ : std_logic;
signal \N__5304\ : std_logic;
signal \N__5301\ : std_logic;
signal \N__5298\ : std_logic;
signal \N__5295\ : std_logic;
signal \N__5292\ : std_logic;
signal \N__5289\ : std_logic;
signal \N__5286\ : std_logic;
signal \N__5283\ : std_logic;
signal \N__5280\ : std_logic;
signal \N__5277\ : std_logic;
signal \N__5274\ : std_logic;
signal \N__5271\ : std_logic;
signal \N__5268\ : std_logic;
signal \N__5265\ : std_logic;
signal \N__5262\ : std_logic;
signal \N__5259\ : std_logic;
signal \N__5256\ : std_logic;
signal \N__5253\ : std_logic;
signal \N__5250\ : std_logic;
signal \N__5247\ : std_logic;
signal \N__5244\ : std_logic;
signal \N__5241\ : std_logic;
signal \N__5238\ : std_logic;
signal \N__5235\ : std_logic;
signal \N__5232\ : std_logic;
signal \N__5229\ : std_logic;
signal \N__5226\ : std_logic;
signal \N__5223\ : std_logic;
signal \N__5220\ : std_logic;
signal \N__5217\ : std_logic;
signal \N__5214\ : std_logic;
signal \N__5211\ : std_logic;
signal \N__5208\ : std_logic;
signal \N__5205\ : std_logic;
signal \N__5202\ : std_logic;
signal \N__5199\ : std_logic;
signal \N__5196\ : std_logic;
signal \N__5193\ : std_logic;
signal \N__5190\ : std_logic;
signal \N__5187\ : std_logic;
signal \N__5184\ : std_logic;
signal \N__5183\ : std_logic;
signal \N__5180\ : std_logic;
signal \N__5177\ : std_logic;
signal \N__5174\ : std_logic;
signal \N__5169\ : std_logic;
signal \N__5168\ : std_logic;
signal \N__5165\ : std_logic;
signal \N__5162\ : std_logic;
signal \N__5159\ : std_logic;
signal \N__5154\ : std_logic;
signal \N__5151\ : std_logic;
signal \N__5150\ : std_logic;
signal \N__5147\ : std_logic;
signal \N__5144\ : std_logic;
signal \N__5139\ : std_logic;
signal \N__5136\ : std_logic;
signal \N__5133\ : std_logic;
signal \N__5130\ : std_logic;
signal \N__5127\ : std_logic;
signal \N__5126\ : std_logic;
signal \N__5121\ : std_logic;
signal \N__5118\ : std_logic;
signal \N__5115\ : std_logic;
signal \N__5112\ : std_logic;
signal \N__5109\ : std_logic;
signal \N__5106\ : std_logic;
signal \N__5103\ : std_logic;
signal \N__5100\ : std_logic;
signal \N__5097\ : std_logic;
signal \N__5094\ : std_logic;
signal \N__5091\ : std_logic;
signal \N__5088\ : std_logic;
signal \N__5085\ : std_logic;
signal \N__5082\ : std_logic;
signal \N__5079\ : std_logic;
signal \N__5076\ : std_logic;
signal \N__5073\ : std_logic;
signal \N__5070\ : std_logic;
signal \N__5067\ : std_logic;
signal \N__5064\ : std_logic;
signal \N__5061\ : std_logic;
signal \N__5058\ : std_logic;
signal \N__5057\ : std_logic;
signal \N__5054\ : std_logic;
signal \N__5051\ : std_logic;
signal \N__5048\ : std_logic;
signal \N__5043\ : std_logic;
signal \N__5042\ : std_logic;
signal \N__5041\ : std_logic;
signal \N__5034\ : std_logic;
signal \N__5031\ : std_logic;
signal \N__5028\ : std_logic;
signal \N__5025\ : std_logic;
signal \N__5024\ : std_logic;
signal \N__5021\ : std_logic;
signal \N__5018\ : std_logic;
signal \N__5015\ : std_logic;
signal \N__5010\ : std_logic;
signal \N__5009\ : std_logic;
signal \N__5006\ : std_logic;
signal \N__5003\ : std_logic;
signal \N__5000\ : std_logic;
signal \N__4995\ : std_logic;
signal \N__4992\ : std_logic;
signal \N__4989\ : std_logic;
signal \N__4988\ : std_logic;
signal \N__4985\ : std_logic;
signal \N__4982\ : std_logic;
signal \N__4979\ : std_logic;
signal \N__4974\ : std_logic;
signal \N__4973\ : std_logic;
signal \N__4970\ : std_logic;
signal \N__4967\ : std_logic;
signal \N__4962\ : std_logic;
signal \N__4959\ : std_logic;
signal \N__4956\ : std_logic;
signal \N__4953\ : std_logic;
signal \N__4950\ : std_logic;
signal \N__4947\ : std_logic;
signal \N__4944\ : std_logic;
signal \N__4943\ : std_logic;
signal \N__4940\ : std_logic;
signal \N__4937\ : std_logic;
signal \N__4934\ : std_logic;
signal \N__4929\ : std_logic;
signal \N__4928\ : std_logic;
signal \N__4925\ : std_logic;
signal \N__4922\ : std_logic;
signal \N__4919\ : std_logic;
signal \N__4914\ : std_logic;
signal \N__4911\ : std_logic;
signal \N__4910\ : std_logic;
signal \N__4907\ : std_logic;
signal \N__4904\ : std_logic;
signal \N__4899\ : std_logic;
signal \N__4896\ : std_logic;
signal \N__4893\ : std_logic;
signal \N__4890\ : std_logic;
signal \N__4887\ : std_logic;
signal \N__4884\ : std_logic;
signal \N__4881\ : std_logic;
signal \N__4878\ : std_logic;
signal \N__4875\ : std_logic;
signal \N__4872\ : std_logic;
signal \N__4869\ : std_logic;
signal \N__4866\ : std_logic;
signal \N__4863\ : std_logic;
signal \N__4860\ : std_logic;
signal \N__4857\ : std_logic;
signal \N__4854\ : std_logic;
signal \N__4851\ : std_logic;
signal \N__4848\ : std_logic;
signal \N__4845\ : std_logic;
signal \N__4842\ : std_logic;
signal \N__4841\ : std_logic;
signal \N__4838\ : std_logic;
signal \N__4835\ : std_logic;
signal \N__4832\ : std_logic;
signal \N__4827\ : std_logic;
signal \N__4826\ : std_logic;
signal \N__4823\ : std_logic;
signal \N__4820\ : std_logic;
signal \N__4815\ : std_logic;
signal \N__4812\ : std_logic;
signal \N__4811\ : std_logic;
signal \N__4808\ : std_logic;
signal \N__4805\ : std_logic;
signal \N__4802\ : std_logic;
signal \N__4797\ : std_logic;
signal \N__4794\ : std_logic;
signal \N__4793\ : std_logic;
signal \N__4790\ : std_logic;
signal \N__4787\ : std_logic;
signal \N__4784\ : std_logic;
signal \N__4779\ : std_logic;
signal \N__4776\ : std_logic;
signal \N__4775\ : std_logic;
signal \N__4772\ : std_logic;
signal \N__4769\ : std_logic;
signal \N__4766\ : std_logic;
signal \N__4761\ : std_logic;
signal \N__4760\ : std_logic;
signal \N__4757\ : std_logic;
signal \N__4754\ : std_logic;
signal \N__4749\ : std_logic;
signal \N__4748\ : std_logic;
signal \N__4745\ : std_logic;
signal \N__4742\ : std_logic;
signal \N__4739\ : std_logic;
signal \N__4734\ : std_logic;
signal \N__4731\ : std_logic;
signal \N__4728\ : std_logic;
signal \N__4727\ : std_logic;
signal \N__4724\ : std_logic;
signal \N__4721\ : std_logic;
signal \N__4718\ : std_logic;
signal \N__4713\ : std_logic;
signal \N__4710\ : std_logic;
signal \N__4707\ : std_logic;
signal \N__4704\ : std_logic;
signal \N__4701\ : std_logic;
signal \N__4698\ : std_logic;
signal \N__4695\ : std_logic;
signal \N__4692\ : std_logic;
signal \N__4689\ : std_logic;
signal \N__4688\ : std_logic;
signal \N__4685\ : std_logic;
signal \N__4682\ : std_logic;
signal \N__4677\ : std_logic;
signal \N__4674\ : std_logic;
signal \N__4671\ : std_logic;
signal \N__4668\ : std_logic;
signal \N__4667\ : std_logic;
signal \N__4664\ : std_logic;
signal \N__4661\ : std_logic;
signal \N__4658\ : std_logic;
signal \N__4653\ : std_logic;
signal \N__4650\ : std_logic;
signal \N__4647\ : std_logic;
signal \N__4646\ : std_logic;
signal \N__4643\ : std_logic;
signal \N__4640\ : std_logic;
signal \N__4637\ : std_logic;
signal \N__4632\ : std_logic;
signal \N__4629\ : std_logic;
signal \N__4628\ : std_logic;
signal \N__4625\ : std_logic;
signal \N__4622\ : std_logic;
signal \N__4619\ : std_logic;
signal \N__4614\ : std_logic;
signal \N__4611\ : std_logic;
signal \N__4608\ : std_logic;
signal \N__4607\ : std_logic;
signal \N__4604\ : std_logic;
signal \N__4601\ : std_logic;
signal \N__4598\ : std_logic;
signal \N__4593\ : std_logic;
signal \N__4590\ : std_logic;
signal \N__4587\ : std_logic;
signal \N__4584\ : std_logic;
signal \N__4583\ : std_logic;
signal \N__4580\ : std_logic;
signal \N__4577\ : std_logic;
signal \N__4572\ : std_logic;
signal \N__4571\ : std_logic;
signal \N__4568\ : std_logic;
signal \N__4565\ : std_logic;
signal \N__4560\ : std_logic;
signal \N__4557\ : std_logic;
signal \N__4554\ : std_logic;
signal \N__4551\ : std_logic;
signal \N__4548\ : std_logic;
signal \N__4545\ : std_logic;
signal \N__4542\ : std_logic;
signal \N__4539\ : std_logic;
signal \N__4536\ : std_logic;
signal \N__4533\ : std_logic;
signal \N__4530\ : std_logic;
signal \N__4527\ : std_logic;
signal \N__4524\ : std_logic;
signal \N__4521\ : std_logic;
signal \N__4518\ : std_logic;
signal \N__4515\ : std_logic;
signal \N__4512\ : std_logic;
signal \N__4509\ : std_logic;
signal \N__4506\ : std_logic;
signal \N__4503\ : std_logic;
signal \N__4500\ : std_logic;
signal \N__4497\ : std_logic;
signal \N__4494\ : std_logic;
signal \N__4491\ : std_logic;
signal \N__4490\ : std_logic;
signal \N__4487\ : std_logic;
signal \N__4484\ : std_logic;
signal \N__4479\ : std_logic;
signal \N__4476\ : std_logic;
signal \N__4473\ : std_logic;
signal \N__4470\ : std_logic;
signal \N__4469\ : std_logic;
signal \N__4466\ : std_logic;
signal \N__4463\ : std_logic;
signal \N__4458\ : std_logic;
signal \N__4457\ : std_logic;
signal \N__4454\ : std_logic;
signal \N__4451\ : std_logic;
signal \N__4446\ : std_logic;
signal \N__4445\ : std_logic;
signal \N__4442\ : std_logic;
signal \N__4439\ : std_logic;
signal \N__4434\ : std_logic;
signal \N__4433\ : std_logic;
signal \N__4430\ : std_logic;
signal \N__4427\ : std_logic;
signal \N__4422\ : std_logic;
signal \N__4419\ : std_logic;
signal \N__4416\ : std_logic;
signal \N__4413\ : std_logic;
signal \N__4412\ : std_logic;
signal \N__4411\ : std_logic;
signal \N__4408\ : std_logic;
signal \N__4405\ : std_logic;
signal \N__4402\ : std_logic;
signal \N__4395\ : std_logic;
signal \N__4394\ : std_logic;
signal \N__4391\ : std_logic;
signal \N__4388\ : std_logic;
signal \N__4383\ : std_logic;
signal \N__4382\ : std_logic;
signal \N__4379\ : std_logic;
signal \N__4376\ : std_logic;
signal \N__4371\ : std_logic;
signal \N__4368\ : std_logic;
signal \N__4365\ : std_logic;
signal \N__4362\ : std_logic;
signal \N__4359\ : std_logic;
signal \N__4356\ : std_logic;
signal \N__4353\ : std_logic;
signal \N__4350\ : std_logic;
signal \N__4347\ : std_logic;
signal \N__4344\ : std_logic;
signal \N__4341\ : std_logic;
signal \N__4338\ : std_logic;
signal \N__4335\ : std_logic;
signal \N__4332\ : std_logic;
signal \N__4329\ : std_logic;
signal \N__4326\ : std_logic;
signal \N__4323\ : std_logic;
signal \N__4320\ : std_logic;
signal \N__4317\ : std_logic;
signal \N__4314\ : std_logic;
signal \N__4313\ : std_logic;
signal \N__4310\ : std_logic;
signal \N__4307\ : std_logic;
signal \N__4302\ : std_logic;
signal \N__4299\ : std_logic;
signal \N__4296\ : std_logic;
signal \N__4295\ : std_logic;
signal \N__4292\ : std_logic;
signal \N__4289\ : std_logic;
signal \N__4284\ : std_logic;
signal \N__4281\ : std_logic;
signal \N__4278\ : std_logic;
signal \N__4275\ : std_logic;
signal \N__4272\ : std_logic;
signal \N__4269\ : std_logic;
signal \N__4266\ : std_logic;
signal \N__4263\ : std_logic;
signal \N__4260\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \I_DUT.U_1.O_4\ : std_logic;
signal \I_DUT.U_1.O_2\ : std_logic;
signal \I_DUT.U_1.O_5\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_6\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_6_cascade_\ : std_logic;
signal \I_DUT.U_1.O_9\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_10\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_10_cascade_\ : std_logic;
signal \I_DUT.U_1.O_14\ : std_logic;
signal \I_DUT.U_1.O_10\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_11\ : std_logic;
signal \I_DUT.U_1.O_6\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_7\ : std_logic;
signal \I_DUT.U_1.O_0\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_1\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_1_cascade_\ : std_logic;
signal \I_DUT.U_1.O_3\ : std_logic;
signal \I_DUT.preTriggerValue_0\ : std_logic;
signal \I_DUT.preTriggerValue_1\ : std_logic;
signal \I_DUT.preTriggerValue_2\ : std_logic;
signal \I_DUT.preTriggerValue_3\ : std_logic;
signal cal_o_1 : std_logic;
signal \I_DUT.preTriggerValue_5\ : std_logic;
signal \I_DUT.preTriggerValue_6\ : std_logic;
signal \I_DUT.preTriggerValue_7\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_5\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_4\ : std_logic;
signal \I_DUT.U_1.O_7\ : std_logic;
signal \I_DUT.U_1.O_17\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_18\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_18_cascade_\ : std_logic;
signal \I_DUT.U_1.O_16\ : std_logic;
signal \I_DUT.U_1.O_13\ : std_logic;
signal \I_DUT.U_1.O_12\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_0\ : std_logic;
signal \bfn_2_14_0_\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_1\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_0\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_1\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_2\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_4\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_3\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_5\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_4\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_6\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_5\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_7\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_6\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_7\ : std_logic;
signal \bfn_2_15_0_\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_8\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_10\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_9\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_11\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_10\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_11\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_12\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_13\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_14\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_15\ : std_logic;
signal \bfn_2_16_0_\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_16\ : std_logic;
signal \I_DUT.U_1.count_preTrig_cry_17\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_18\ : std_logic;
signal \I_DUT.U_1.N_24_g\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_14\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_15\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_15\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_14\ : std_logic;
signal \I_DUT.U_1.O_1\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_2\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_2\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_3\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_2_cascade_\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_3\ : std_logic;
signal \I_DUT.U_1.un13_count_pretrig\ : std_logic;
signal \I_DUT.U_1.O_8\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_9\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_9\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_8\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_9_cascade_\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_8\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_12\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_13\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_13\ : std_logic;
signal \I_DUT.U_1.O_15\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_16\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_17\ : std_logic;
signal \I_DUT.U_1.count_preTrigZ0Z_16\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_16_cascade_\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_17\ : std_logic;
signal \I_DUT.U_1.O_11\ : std_logic;
signal \I_DUT.U_1.memoryTrigTest_12\ : std_logic;
signal \U_8.ODInstLegalizeSB_DFFNet\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_1_c_RNO\ : std_logic;
signal \bfn_4_12_0_\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_9_c_RNO\ : std_logic;
signal \I_DUT.U_1.un3_go_0_data_tmp_0\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_15_c_RNO\ : std_logic;
signal \I_DUT.U_1.un3_go_0_data_tmp_1\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_21_c_RNO\ : std_logic;
signal \I_DUT.U_1.un3_go_0_data_tmp_2\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_27_c_RNO\ : std_logic;
signal \I_DUT.U_1.un3_go_0_data_tmp_3\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_33_c_RNO\ : std_logic;
signal \I_DUT.U_1.un3_go_0_data_tmp_4\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_39_c_RNO\ : std_logic;
signal \I_DUT.U_1.un3_go_0_data_tmp_5\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_45_c_RNO\ : std_logic;
signal \I_DUT.U_1.un3_go_0_data_tmp_6\ : std_logic;
signal \I_DUT.U_1.un3_go_0_data_tmp_7\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_51_c_RNO\ : std_logic;
signal \bfn_4_13_0_\ : std_logic;
signal \I_DUT.U_1.un3_go_0_I_57_c_RNO\ : std_logic;
signal \I_DUT.U_1.un3_go_0_data_tmp_8\ : std_logic;
signal \I_DUT.U_1.un3_go_0_N_2\ : std_logic;
signal i_fpga_mosi_c : std_logic;
signal i_fpga_sck_c : std_logic;
signal \I_DUT.U_1.un2_done_0_i\ : std_logic;
signal \U_4.ODInstLegalizeSB_DFFNet\ : std_logic;
signal \U_7.ODInstLegalizeSB_DFFNet\ : std_logic;
signal \io_fpga_miso_obuftAndNet\ : std_logic;
signal \io_fpga_miso_obuftLegalizeSB_DFFNet\ : std_logic;
signal \o_fram_ncs_obuf_0LegalizeSB_DFFNet\ : std_logic;
signal \o_fram_ncs_obuf_1LegalizeSB_DFFNet\ : std_logic;
signal \I_DUT.U_1.done_waitZ1Z_1\ : std_logic;
signal \I_DUT.U_1.done_waitZ0Z_2\ : std_logic;
signal \I_DUT.U_1.CO1\ : std_logic;
signal \I_DUT.U_1.done_waitZ0Z_3\ : std_logic;
signal \I_DUT.U_1.un8_done\ : std_logic;
signal \I_DUT.U_1.done_waitZ0Z_0\ : std_logic;
signal \CONSTANT_ONE_NET_cascade_\ : std_logic;
signal \I_DUT.fpga_m_ret_5_RNI0PRE1_0\ : std_logic;
signal \I_DUT.fpga_m_ret_5_RNI0PRE1_0_cascade_\ : std_logic;
signal \I_DUT.U_1.un3_done\ : std_logic;
signal \I_DUT.U_4.fpga_m_retZ0Z_5\ : std_logic;
signal \I_DUT.U_6.un5_m\ : std_logic;
signal \I_DUT.U_1.N_22\ : std_logic;
signal \o_fram_ncs_obuf_2LegalizeSB_DFFNet\ : std_logic;
signal \o_fram_ncs_obuf_3LegalizeSB_DFFNet\ : std_logic;
signal \I_DUT.U_5.FR_NCS_1Z0Z_2\ : std_logic;
signal \fpga_m_ret_8_RNI1CV5_5\ : std_logic;
signal \I_DUT.U_5.FR_NCS_1Z0Z_0\ : std_logic;
signal \fpga_m_ret_8_RNI1CV5_3\ : std_logic;
signal \bfn_8_8_0_\ : std_logic;
signal \I_DUT.U_5.un1_m_0_axb_3\ : std_logic;
signal \I_DUT.U_5.un1_m_0_cry_2\ : std_logic;
signal \I_DUT.U_5.un1_m_0\ : std_logic;
signal \bfn_8_9_0_\ : std_logic;
signal \I_DUT.U_5.un3_0_cry_0\ : std_logic;
signal \I_DUT.U_5.un3_0_cry_1\ : std_logic;
signal \I_DUT.U_5.un3_0_cry_2\ : std_logic;
signal \I_DUT.U_5.un3_0\ : std_logic;
signal \I_DUT.un18_m_1\ : std_logic;
signal \I_DUT.U_4.un2_m_19_0_i_cascade_\ : std_logic;
signal \I_DUT.U_4.N_4\ : std_logic;
signal \I_DUT.U_4.un1_m_inv_2_cascade_\ : std_logic;
signal \I_DUT.U_4.fpga_m_ret_4_RNIVNTCZ0Z1\ : std_logic;
signal \I_DUT.U_4.fpga_m_retZ0Z_9\ : std_logic;
signal \I_DUT.fpga_m_i_3_2\ : std_logic;
signal \I_DUT.U_6.is_upZ0\ : std_logic;
signal \I_DUT.U_6.down_ncs_oldZ0\ : std_logic;
signal \I_DUT.U_4.fpga_m_ret_6_RNIVMVAZ0Z1\ : std_logic;
signal \I_DUT.fpga_m_ret_7_RNI2OTC1_0\ : std_logic;
signal \I_DUT.U_5.i_fpga_m_c_i_2\ : std_logic;
signal \I_DUT.U_4.fpga_m_retZ0Z_7\ : std_logic;
signal \fpga_m_ret_8_RNI1CV5_4\ : std_logic;
signal \fpga_m_ret_8_RNI1CV5_6\ : std_logic;
signal \I_DUT.U_5.adc_clock11_i_0_reti\ : std_logic;
signal \I_DUT.U_5.adc_clock11_i_0_reti_cascade_\ : std_logic;
signal \I_DUT.un1_m_reti\ : std_logic;
signal \I_DUT.U_5.N_62_0\ : std_logic;
signal \I_DUT.U_5.un1_adc_clock11_1_0\ : std_logic;
signal \I_DUT.U_5.un3_0_THRU_CO\ : std_logic;
signal \I_DUT.U_5.un1_m_0_THRU_CO\ : std_logic;
signal \I_DUT.U_5.fr_clock7_i_0_reti\ : std_logic;
signal \fpga_sck_fastZ0\ : std_logic;
signal \I_DUT.fpga_m_ret_9_RNI797L1_0\ : std_logic;
signal \I_DUT.U_5.FR_NCS_1Z0Z_1\ : std_logic;
signal \I_DUT.fpga_m_ret_3_RNIK5EN1_0\ : std_logic;
signal \I_DUT.U_5.FR_NCS_1Z0Z_3\ : std_logic;
signal \I_DUT.U_4.un2_m_8_0\ : std_logic;
signal \I_DUT.U_4.un9_m_0_i\ : std_logic;
signal \fpga_mZ0Z_3\ : std_logic;
signal \I_DUT.U_5.ADC_CLOCK_1_iv_i_a3_0_1\ : std_logic;
signal \I_DUT.un3_ac0_5_cascade_\ : std_logic;
signal \I_DUT.U_5.N_32_i_cascade_\ : std_logic;
signal \fpga_m_ret_4_RNIQT5I2_0\ : std_logic;
signal \fpga_mZ0Z_2\ : std_logic;
signal \fpga_mZ0Z_0\ : std_logic;
signal \I_DUT.U_4.un3_m\ : std_logic;
signal \I_DUT.fpga_m_i_3_3\ : std_logic;
signal \I_DUT.U_6.down_ncsZ0\ : std_logic;
signal \I_DUT.U_6.N_91\ : std_logic;
signal \I_DUT.U_6.finish_dZ0\ : std_logic;
signal \I_DUT.U_6.N_92_cascade_\ : std_logic;
signal \I_DUT.U_6.N_99\ : std_logic;
signal \I_DUT.U_6.un4_m\ : std_logic;
signal \I_DUT.U_6.un1_done_sig_1_i_a3_1_cascade_\ : std_logic;
signal \I_DUT.U_6.N_95\ : std_logic;
signal \bfn_9_13_0_\ : std_logic;
signal \I_DUT.U_6.count_cry_0\ : std_logic;
signal \I_DUT.U_6.count_cry_1\ : std_logic;
signal \I_DUT.U_6.count_cry_2\ : std_logic;
signal \I_DUT.U_6.un3_is_up_i_0\ : std_logic;
signal \I_DUT.U_6.count_cry_3\ : std_logic;
signal \I_DUT.U_6.N_40\ : std_logic;
signal \I_DUT.U_6.N_37\ : std_logic;
signal \I_DUT.U_6.countlde_i_o3_0_0\ : std_logic;
signal i_acq_pretrig_c : std_logic;
signal \I_DUT.m_i_0\ : std_logic;
signal i_acq_trig_c : std_logic;
signal \acq_trigZ0\ : std_logic;
signal \I_DUT.U_5.N_54i\ : std_logic;
signal \I_DUT.m_i_0_reti\ : std_logic;
signal \I_DUT.U_5.adc_clock11_i_0_i_1\ : std_logic;
signal \fpga_mZ0Z_1\ : std_logic;
signal \I_DUT.fpga_m_i_3_0\ : std_logic;
signal \I_DUT.fpga_m_i_2_1\ : std_logic;
signal \I_DUT.count11_0_2\ : std_logic;
signal \I_DUT.q_int_i\ : std_logic;
signal \I_DUT.count11_0_2_cascade_\ : std_logic;
signal \I_DUT.q_int_RNI5U9M\ : std_logic;
signal \I_DUT.fram_ncsAF_0\ : std_logic;
signal \I_DUT.U_6.un1_done_sig_1_i_a3_1\ : std_logic;
signal \I_DUT.U_6.N_45\ : std_logic;
signal \I_DUT.U_6.countZ0Z_3\ : std_logic;
signal \I_DUT.U_6.countZ0Z_1\ : std_logic;
signal \I_DUT.U_6.countZ0Z_2\ : std_logic;
signal \I_DUT.U_6.N_53\ : std_logic;
signal \I_DUT.U_6.N_53_cascade_\ : std_logic;
signal \acq_pretrigZ0\ : std_logic;
signal \I_DUT.U_12.valuePreTrig_int_0_sqmuxa\ : std_logic;
signal \I_DUT.U_6.count_go_3_i_0_1\ : std_logic;
signal \I_DUT.U_6.count_go_3_i_0_a3_0_4_1\ : std_logic;
signal \I_DUT.U_6.N_59\ : std_logic;
signal \I_DUT.U_4.fpga_m_2_retZ0\ : std_logic;
signal \I_DUT_U_5_MISO_0_i\ : std_logic;
signal \I_DUT.MISO_AF\ : std_logic;
signal \I_DUT.U_13.MISO_OUT_0_sqmuxa\ : std_logic;
signal \I_DUT.U_4.un18_m_2\ : std_logic;
signal \I_DUT.U_5.N_98_cascade_\ : std_logic;
signal \I_DUT_U_5_FR_CLOCK_0_i_0\ : std_logic;
signal \I_DUT.count_0\ : std_logic;
signal \bfn_11_11_0_\ : std_logic;
signal \I_DUT.count_1\ : std_logic;
signal \I_DUT.U_2.count_cry_0\ : std_logic;
signal \I_DUT.U_2.countZ0Z_2\ : std_logic;
signal \I_DUT.U_2.count_cry_1\ : std_logic;
signal \I_DUT.U_2.countZ0Z_3\ : std_logic;
signal \I_DUT.U_2.count_cry_2\ : std_logic;
signal \I_DUT.U_2.count_cry_3\ : std_logic;
signal \I_DUT.U_2.countZ0Z_4\ : std_logic;
signal o_sclk_meas_c : std_logic;
signal \I_DUT.U_6.countZ0Z_4\ : std_logic;
signal \I_DUT.U_6.countZ0Z_0\ : std_logic;
signal \I_DUT.fram_sclkAF_0\ : std_logic;
signal \I_DUT.U_6.N_42_i\ : std_logic;
signal \I_DUT.U_12.stmClk_old_RNOZ0\ : std_logic;
signal i_adc_sdo_c_3 : std_logic;
signal \adc_sdoZ0Z_3\ : std_logic;
signal \I_DUT.U_4.fpga_m_1_retZ0\ : std_logic;
signal i_adc_sdo_c_2 : std_logic;
signal \adc_sdoZ0Z_2\ : std_logic;
signal \I_DUT.U_5.fpga_m_ret_5_RNIM1EZ0Z3\ : std_logic;
signal \I_DUT.U_5.fpga_m_ret_5_RNIL0EZ0Z3_cascade_\ : std_logic;
signal \I_DUT.fpga_m_2_ret_RNIIIGK_0\ : std_logic;
signal \I_DUT.U_5.FRAM_SDI_1_2\ : std_logic;
signal \fpga_m_0_ret_4_RNIDV2F_0\ : std_logic;
signal \I_DUT.fpga_m_1_ret_RNIHEAG_0\ : std_logic;
signal \I_DUT.U_5.fpga_m_ret_5_RNIN2EZ0Z3\ : std_logic;
signal \I_DUT.U_5.FRAM_SDI_1_3_cascade_\ : std_logic;
signal \fpga_m_0_ret_4_RNIE03F_0\ : std_logic;
signal \I_DUT.U_5.FRAM_SDI_1_1\ : std_logic;
signal \fpga_m_0_ret_4_RNICU2F_0\ : std_logic;
signal \I_DUT.U_5.fr_clock7_i_0\ : std_logic;
signal \I_DUT.U_5.fr_clock7_i_0_i_1\ : std_logic;
signal \I_DUT.U_5.fpga_m_ret_5_RNIKVDZ0Z3_cascade_\ : std_logic;
signal \I_DUT.fpga_m_ret_6_RNIM2D7_0\ : std_logic;
signal \I_DUT.U_5.FRAM_SDI_1_0_cascade_\ : std_logic;
signal \I_DUT.U_5.N_62_i_0\ : std_logic;
signal \fpga_m_0_ret_4_RNIBT2F_0\ : std_logic;
signal \I_DUT.stmClk_old\ : std_logic;
signal \I_DUT.U_13.MISO_OUT_1_sqmuxa_i\ : std_logic;
signal \I_DUT.stmClk_old_rst\ : std_logic;
signal cal_o_2 : std_logic;
signal \I_DUT.U_12.stmClk_old_rst_RNOZ0\ : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal \iRST_rst_n_c\ : std_logic;
signal \I6.iRST_rst_n_c_i\ : std_logic;
signal \lsig_resetSynch_n\ : std_logic;
signal \I6.lsig_resetSynch_n_i\ : std_logic;
signal \o_sclk_meas_obufLegalizeSB_DFFNet\ : std_logic;
signal \I_DUT.count_go\ : std_logic;
signal \I_DUT.U_1.Trigg_in\ : std_logic;
signal acq_done_o : std_logic;
signal \I_DUT.U_1.un3_go_0_N_2_THRU_CO\ : std_logic;
signal \I_DUT.U_1.N_24\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_0\ : std_logic;
signal \I_DUT.Memory_0\ : std_logic;
signal \I_DUT.Memory_1\ : std_logic;
signal \I_DUT.U_13.un1_m_i_4\ : std_logic;
signal i_fpga_m_c_3 : std_logic;
signal \I_DUT.U_5.adc_clock11_i_0\ : std_logic;
signal o_meas_1mhz_c : std_logic;
signal \I_DUT.m_i_0_i_1\ : std_logic;
signal o_adc_nsc_c : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_0\ : std_logic;
signal \bfn_14_2_0_\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_1\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_0\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_2\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_1\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_2\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_4\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_3\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_4\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_5\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_6\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_7\ : std_logic;
signal \bfn_14_3_0_\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_8\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_9\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_10\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_11\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_12\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_13\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_14\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_15\ : std_logic;
signal \bfn_14_4_0_\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_16\ : std_logic;
signal \I_DUT.count_go_i\ : std_logic;
signal \I_DUT.U_1.count_memory_cry_17\ : std_logic;
signal \I_DUT.U_1.N_22_g\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_12\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_9\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_11\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_10\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_1\ : std_logic;
signal \I_DUT.Memory_2\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_2\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_3\ : std_logic;
signal \I_DUT.Memory_4\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_4\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_7\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_5\ : std_logic;
signal \I_DUT.Memory_5\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_3\ : std_logic;
signal \I_DUT.Memory_3\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_15\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_8\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_14\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_6\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_16\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_13\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_5\ : std_logic;
signal \I_DUT.Memory_6\ : std_logic;
signal \I_DUT.Memory_8\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_6\ : std_logic;
signal \I_DUT.Memory_7\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_7\ : std_logic;
signal \I_DUT.Memory_11\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_8\ : std_logic;
signal \I_DUT.Memory_9\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_9\ : std_logic;
signal \I_DUT.Memory_10\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_10\ : std_logic;
signal \I_DUT.Memory_12\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_11\ : std_logic;
signal i_adc_sdo_c_1 : std_logic;
signal \adc_sdoZ0Z_1\ : std_logic;
signal \I_DUT.Memory_15\ : std_logic;
signal \I_DUT.Memory_14\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_14\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_12\ : std_logic;
signal \I_DUT.Memory_13\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_13\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_17\ : std_logic;
signal \I_DUT.U_1.count_memoryZ0Z_18\ : std_logic;
signal \I_DUT.U_1.un13_count_pretrig_g\ : std_logic;
signal \o_adc_nsc_obufLegalizeSB_DFFNet\ : std_logic;
signal \o_adc_sclk_obufLegalizeSB_DFFNet\ : std_logic;
signal \o_meas_1mhz_obufLegalizeSB_DFFNet\ : std_logic;
signal i_adc_sdo_c_0 : std_logic;
signal \adc_sdoZ0Z_0\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_15\ : std_logic;
signal \I_DUT.Memory_16\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_16\ : std_logic;
signal \I_DUT.Memory_17\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_17\ : std_logic;
signal \I_DUT.Memory_18\ : std_logic;
signal \I_DUT.un1_m\ : std_logic;
signal \I_DUT.U_13.count_memoryZ0Z_18\ : std_logic;
signal \I_DUT.U_13.MISO_OUT_1_sqmuxa_i_g\ : std_logic;
signal \o_fram_sdi_obuf_0LegalizeSB_DFFNet\ : std_logic;
signal \o_fram_sdi_obuf_1LegalizeSB_DFFNet\ : std_logic;
signal \o_fram_sdi_obuf_2LegalizeSB_DFFNet\ : std_logic;
signal \I_DUT.U_4.fpga_m_retZ0Z_3\ : std_logic;
signal \fpga_mosiZ0\ : std_logic;
signal \I_DUT.fpga_m_ret_RNI15M5_0\ : std_logic;
signal \o_fram_sclk_obuf_0LegalizeSB_DFFNet\ : std_logic;
signal \o_fram_sclk_obuf_1LegalizeSB_DFFNet\ : std_logic;
signal \o_fram_sclk_obuf_2LegalizeSB_DFFNet\ : std_logic;
signal \o_fram_sclk_obuf_3LegalizeSB_DFFNet\ : std_logic;
signal i_fpga_m_c_0 : std_logic;
signal i_fpga_m_c_2 : std_logic;
signal i_fpga_m_c_1 : std_logic;
signal \I_DUT.U_4.fpga_m_retZ0\ : std_logic;
signal clk_0_c_g : std_logic;
signal \lsig_resetSynch_n_i_g\ : std_logic;
signal \o_fram_sdi_obuf_3LegalizeSB_DFFNet\ : std_logic;
signal \internalOscilatorOutputNet\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \iGCK_clk_wire\ : std_logic;
signal i_fpga_m_wire : std_logic_vector(3 downto 0);
signal \iRST_rst_n_wire\ : std_logic;
signal o_adc_sclk_wire : std_logic;
signal o_fram_sdi_wire : std_logic_vector(3 downto 0);
signal o_meas_1mhz_wire : std_logic;
signal o_fram_ncs_wire : std_logic_vector(3 downto 0);
signal o_fram_sclk_wire : std_logic_vector(3 downto 0);
signal i_adc_sdo_wire : std_logic_vector(3 downto 0);
signal i_fpga_sck_wire : std_logic;
signal io_fpga_miso_wire : std_logic;
signal i_acq_trig_wire : std_logic;
signal i_fpga_mosi_wire : std_logic;
signal o_sclk_meas_wire : std_logic;
signal i_acq_pretrig_wire : std_logic;
signal o_adc_nsc_wire : std_logic;
signal \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_D_wire\ : std_logic_vector(15 downto 0);
signal \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_A_wire\ : std_logic_vector(15 downto 0);
signal \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_C_wire\ : std_logic_vector(15 downto 0);
signal \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_B_wire\ : std_logic_vector(15 downto 0);
signal \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\ : std_logic_vector(31 downto 0);

begin
    \iGCK_clk_wire\ <= iGCK_clk;
    i_fpga_m_wire <= i_fpga_m;
    \iRST_rst_n_wire\ <= iRST_rst_n;
    o_adc_sclk <= o_adc_sclk_wire;
    o_fram_sdi <= o_fram_sdi_wire;
    o_meas_1mhz <= o_meas_1mhz_wire;
    o_fram_ncs <= o_fram_ncs_wire;
    o_fram_sclk <= o_fram_sclk_wire;
    i_adc_sdo_wire <= i_adc_sdo;
    i_fpga_sck_wire <= i_fpga_sck;
    io_fpga_miso <= io_fpga_miso_wire;
    i_acq_trig_wire <= i_acq_trig;
    i_fpga_mosi_wire <= i_fpga_mosi;
    o_sclk_meas <= o_sclk_meas_wire;
    i_acq_pretrig_wire <= i_acq_pretrig;
    o_adc_nsc <= o_adc_nsc_wire;
    \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_D_wire\ <= '0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0';
    \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_A_wire\ <= '0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&\N__4371\&\N__4382\&\N__4394\&\N__4411\&\N__4433\&\N__4445\&\N__4457\&\N__4469\;
    \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_C_wire\ <= '0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0';
    \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_B_wire\ <= '0'&'0'&'0'&'0'&\N__7905\&'0'&\N__7904\&'0'&'0'&'0'&\N__7907\&\N__7910\&\N__7906\&\N__7909\&'0'&\N__7908\;
    \I_DUT.U_1.O_17\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(17);
    \I_DUT.U_1.O_16\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(16);
    \I_DUT.U_1.O_15\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(15);
    \I_DUT.U_1.O_14\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(14);
    \I_DUT.U_1.O_13\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(13);
    \I_DUT.U_1.O_12\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(12);
    \I_DUT.U_1.O_11\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(11);
    \I_DUT.U_1.O_10\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(10);
    \I_DUT.U_1.O_9\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(9);
    \I_DUT.U_1.O_8\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(8);
    \I_DUT.U_1.O_7\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(7);
    \I_DUT.U_1.O_6\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(6);
    \I_DUT.U_1.O_5\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(5);
    \I_DUT.U_1.O_4\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(4);
    \I_DUT.U_1.O_3\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(3);
    \I_DUT.U_1.O_2\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(2);
    \I_DUT.U_1.O_1\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(1);
    \I_DUT.U_1.O_0\ <= \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\(0);

    \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1\ : SB_MAC16
    generic map (
            A_REG => '0',
            TOP_8x8_MULT_REG => '0',
            TOPOUTPUT_SELECT => "11",
            TOPADDSUB_UPPERINPUT => '0',
            TOPADDSUB_LOWERINPUT => "00",
            TOPADDSUB_CARRYSELECT => "00",
            PIPELINE_16x16_MULT_REG2 => '0',
            PIPELINE_16x16_MULT_REG1 => '0',
            NEG_TRIGGER => '0',
            MODE_8x8 => '0',
            D_REG => '0',
            C_REG => '0',
            B_SIGNED => '0',
            B_REG => '0',
            BOT_8x8_MULT_REG => '0',
            BOTOUTPUT_SELECT => "11",
            BOTADDSUB_UPPERINPUT => '0',
            BOTADDSUB_LOWERINPUT => "00",
            BOTADDSUB_CARRYSELECT => "00",
            A_SIGNED => '0'
        )
    port map (
            ACCUMCO => OPEN,
            DHOLD => '0',
            AHOLD => \N__7911\,
            SIGNEXTOUT => OPEN,
            ORSTTOP => '0',
            ORSTBOT => '0',
            CI => '0',
            IRSTTOP => '0',
            ACCUMCI => '0',
            OLOADBOT => '0',
            CHOLD => '0',
            IRSTBOT => '0',
            OHOLDBOT => '0',
            SIGNEXTIN => '0',
            ADDSUBTOP => '0',
            OLOADTOP => '0',
            CE => 'H',
            BHOLD => \N__7903\,
            CLK => \GNDG0\,
            CO => OPEN,
            D => \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_D_wire\,
            ADDSUBBOT => '0',
            A => \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_A_wire\,
            C => \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_C_wire\,
            B => \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_B_wire\,
            OHOLDTOP => '0',
            O => \I_DUT.U_1.un4_memorytrigtest_mulonly_0_18_1_O_wire\
        );

    \iGCK_clk_ibuf_gb_io_preiogbuf\ : PRE_IO_GBUF
    port map (
            PADSIGNALTOGLOBALBUFFER => \N__11191\,
            GLOBALBUFFEROUTPUT => clk_0_c_g
        );

    \iGCK_clk_ibuf_gb_io_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11193\,
            DIN => \N__11192\,
            DOUT => \N__11191\,
            PACKAGEPIN => \iGCK_clk_wire\
        );

    \iGCK_clk_ibuf_gb_io_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11193\,
            PADOUT => \N__11192\,
            PADIN => \N__11191\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_fpga_m_ibuf_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11182\,
            DIN => \N__11181\,
            DOUT => \N__11180\,
            PACKAGEPIN => i_fpga_m_wire(3)
        );

    \i_fpga_m_ibuf_3_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11182\,
            PADOUT => \N__11181\,
            PADIN => \N__11180\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_fpga_m_c_3,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \iRST_rst_n_ibuf_iopad\ : IO_PAD
    generic map (
            PULLUP => '1',
            IO_STANDARD => "SB_LVCMOS"
        )
    port map (
            OE => \N__11173\,
            DIN => \N__11172\,
            DOUT => \N__11171\,
            PACKAGEPIN => \iRST_rst_n_wire\
        );

    \iRST_rst_n_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11173\,
            PADOUT => \N__11172\,
            PADIN => \N__11171\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \iRST_rst_n_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_adc_sclk_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11164\,
            DIN => \N__11163\,
            DOUT => \N__11162\,
            PACKAGEPIN => o_adc_sclk_wire
        );

    \o_adc_sclk_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11164\,
            PADOUT => \N__11163\,
            PADIN => \N__11162\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__9261\,
            DIN0 => OPEN,
            DOUT0 => \N__5907\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_sdi_obuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11155\,
            DIN => \N__11154\,
            DOUT => \N__11153\,
            PACKAGEPIN => o_fram_sdi_wire(0)
        );

    \o_fram_sdi_obuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11155\,
            PADOUT => \N__11154\,
            PADIN => \N__11153\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__9531\,
            DIN0 => OPEN,
            DOUT0 => \N__7245\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_meas_1mhz_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11146\,
            DIN => \N__11145\,
            DOUT => \N__11144\,
            PACKAGEPIN => o_meas_1mhz_wire
        );

    \o_meas_1mhz_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11146\,
            PADOUT => \N__11145\,
            PADIN => \N__11144\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__9255\,
            DIN0 => OPEN,
            DOUT0 => \N__8208\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_ncs_obuf_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11137\,
            DIN => \N__11136\,
            DOUT => \N__11135\,
            PACKAGEPIN => o_fram_ncs_wire(2)
        );

    \o_fram_ncs_obuf_2_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11137\,
            PADOUT => \N__11136\,
            PADIN => \N__11135\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__5481\,
            DIN0 => OPEN,
            DOUT0 => \N__5457\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_sclk_obuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11128\,
            DIN => \N__11127\,
            DOUT => \N__11126\,
            PACKAGEPIN => o_fram_sclk_wire(1)
        );

    \o_fram_sclk_obuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11128\,
            PADOUT => \N__11127\,
            PADIN => \N__11126\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__10902\,
            DIN0 => OPEN,
            DOUT0 => \N__6902\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_adc_sdo_ibuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11119\,
            DIN => \N__11118\,
            DOUT => \N__11117\,
            PACKAGEPIN => i_adc_sdo_wire(1)
        );

    \i_adc_sdo_ibuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11119\,
            PADOUT => \N__11118\,
            PADIN => \N__11117\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_adc_sdo_c_1,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_fpga_m_ibuf_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11110\,
            DIN => \N__11109\,
            DOUT => \N__11108\,
            PACKAGEPIN => i_fpga_m_wire(2)
        );

    \i_fpga_m_ibuf_2_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11110\,
            PADOUT => \N__11109\,
            PADIN => \N__11108\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_fpga_m_c_2,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_adc_sdo_ibuf_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11101\,
            DIN => \N__11100\,
            DOUT => \N__11099\,
            PACKAGEPIN => i_adc_sdo_wire(2)
        );

    \i_adc_sdo_ibuf_2_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11101\,
            PADOUT => \N__11100\,
            PADIN => \N__11099\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_adc_sdo_c_2,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_sdi_obuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11092\,
            DIN => \N__11091\,
            DOUT => \N__11090\,
            PACKAGEPIN => o_fram_sdi_wire(1)
        );

    \o_fram_sdi_obuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11092\,
            PADOUT => \N__11091\,
            PADIN => \N__11090\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__9525\,
            DIN0 => OPEN,
            DOUT0 => \N__7470\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_fpga_sck_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11083\,
            DIN => \N__11082\,
            DOUT => \N__11081\,
            PACKAGEPIN => i_fpga_sck_wire
        );

    \i_fpga_sck_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11083\,
            PADOUT => \N__11082\,
            PADIN => \N__11081\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_fpga_sck_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \io_fpga_miso_obuft_iopad\ : IO_PAD
    generic map (
            PULLUP => '1',
            IO_STANDARD => "SB_LVCMOS"
        )
    port map (
            OE => \N__11074\,
            DIN => \N__11073\,
            DOUT => \N__11072\,
            PACKAGEPIN => io_fpga_miso_wire
        );

    \io_fpga_miso_obuft_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11074\,
            PADOUT => \N__11073\,
            PADIN => \N__11072\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__5283\,
            DIN0 => OPEN,
            DOUT0 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_sdi_obuf_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11065\,
            DIN => \N__11064\,
            DOUT => \N__11063\,
            PACKAGEPIN => o_fram_sdi_wire(2)
        );

    \o_fram_sdi_obuf_2_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11065\,
            PADOUT => \N__11064\,
            PADIN => \N__11063\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__9519\,
            DIN0 => OPEN,
            DOUT0 => \N__7560\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_acq_trig_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11056\,
            DIN => \N__11055\,
            DOUT => \N__11054\,
            PACKAGEPIN => i_acq_trig_wire
        );

    \i_acq_trig_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11056\,
            PADOUT => \N__11055\,
            PADIN => \N__11054\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_acq_trig_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_ncs_obuf_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11047\,
            DIN => \N__11046\,
            DOUT => \N__11045\,
            PACKAGEPIN => o_fram_ncs_wire(3)
        );

    \o_fram_ncs_obuf_3_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11047\,
            PADOUT => \N__11046\,
            PADIN => \N__11045\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__5475\,
            DIN0 => OPEN,
            DOUT0 => \N__5811\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_fpga_mosi_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11038\,
            DIN => \N__11037\,
            DOUT => \N__11036\,
            PACKAGEPIN => i_fpga_mosi_wire
        );

    \i_fpga_mosi_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11038\,
            PADOUT => \N__11037\,
            PADIN => \N__11036\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_fpga_mosi_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_sclk_obuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11029\,
            DIN => \N__11028\,
            DOUT => \N__11027\,
            PACKAGEPIN => o_fram_sclk_wire(0)
        );

    \o_fram_sclk_obuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11029\,
            PADOUT => \N__11028\,
            PADIN => \N__11027\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__9366\,
            DIN0 => OPEN,
            DOUT0 => \N__6903\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_ncs_obuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11020\,
            DIN => \N__11019\,
            DOUT => \N__11018\,
            PACKAGEPIN => o_fram_ncs_wire(0)
        );

    \o_fram_ncs_obuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11020\,
            PADOUT => \N__11019\,
            PADIN => \N__11018\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__5271\,
            DIN0 => OPEN,
            DOUT0 => \N__5553\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_sclk_obuf_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11011\,
            DIN => \N__11010\,
            DOUT => \N__11009\,
            PACKAGEPIN => o_fram_sclk_wire(3)
        );

    \o_fram_sclk_obuf_3_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__11011\,
            PADOUT => \N__11010\,
            PADIN => \N__11009\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__10890\,
            DIN0 => OPEN,
            DOUT0 => \N__6894\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_fpga_m_ibuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__11002\,
            DIN => \N__11001\,
            DOUT => \N__11000\,
            PACKAGEPIN => i_fpga_m_wire(1)
        );

    \i_fpga_m_ibuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__11002\,
            PADOUT => \N__11001\,
            PADIN => \N__11000\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_fpga_m_c_1,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_adc_sdo_ibuf_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__10993\,
            DIN => \N__10992\,
            DOUT => \N__10991\,
            PACKAGEPIN => i_adc_sdo_wire(3)
        );

    \i_adc_sdo_ibuf_3_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__10993\,
            PADOUT => \N__10992\,
            PADIN => \N__10991\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_adc_sdo_c_3,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_sclk_meas_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__10984\,
            DIN => \N__10983\,
            DOUT => \N__10982\,
            PACKAGEPIN => o_sclk_meas_wire
        );

    \o_sclk_meas_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__10984\,
            PADOUT => \N__10983\,
            PADIN => \N__10982\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__7671\,
            DIN0 => OPEN,
            DOUT0 => \N__7206\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_sdi_obuf_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__10975\,
            DIN => \N__10974\,
            DOUT => \N__10973\,
            PACKAGEPIN => o_fram_sdi_wire(3)
        );

    \o_fram_sdi_obuf_3_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__10975\,
            PADOUT => \N__10974\,
            PADIN => \N__10973\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__9864\,
            DIN0 => OPEN,
            DOUT0 => \N__7503\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_acq_pretrig_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__10966\,
            DIN => \N__10965\,
            DOUT => \N__10964\,
            PACKAGEPIN => i_acq_pretrig_wire
        );

    \i_acq_pretrig_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__10966\,
            PADOUT => \N__10965\,
            PADIN => \N__10964\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_acq_pretrig_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_ncs_obuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__10957\,
            DIN => \N__10956\,
            DOUT => \N__10955\,
            PACKAGEPIN => o_fram_ncs_wire(1)
        );

    \o_fram_ncs_obuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__10957\,
            PADOUT => \N__10956\,
            PADIN => \N__10955\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__5265\,
            DIN0 => OPEN,
            DOUT0 => \N__5832\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_fram_sclk_obuf_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__10948\,
            DIN => \N__10947\,
            DOUT => \N__10946\,
            PACKAGEPIN => o_fram_sclk_wire(2)
        );

    \o_fram_sclk_obuf_2_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__10948\,
            PADOUT => \N__10947\,
            PADIN => \N__10946\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__10896\,
            DIN0 => OPEN,
            DOUT0 => \N__6895\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_fpga_m_ibuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__10939\,
            DIN => \N__10938\,
            DOUT => \N__10937\,
            PACKAGEPIN => i_fpga_m_wire(0)
        );

    \i_fpga_m_ibuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__10939\,
            PADOUT => \N__10938\,
            PADIN => \N__10937\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_fpga_m_c_0,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_adc_sdo_ibuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__10930\,
            DIN => \N__10929\,
            DOUT => \N__10928\,
            PACKAGEPIN => i_adc_sdo_wire(0)
        );

    \i_adc_sdo_ibuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__10930\,
            PADOUT => \N__10929\,
            PADIN => \N__10928\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => i_adc_sdo_c_0,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \o_adc_nsc_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__10921\,
            DIN => \N__10920\,
            DOUT => \N__10919\,
            PACKAGEPIN => o_adc_nsc_wire
        );

    \o_adc_nsc_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__10921\,
            PADOUT => \N__10920\,
            PADIN => \N__10919\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__9267\,
            DIN0 => OPEN,
            DOUT0 => \N__8097\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__2571\ : IoInMux
    port map (
            O => \N__10902\,
            I => \N__10899\
        );

    \I__2570\ : LocalMux
    port map (
            O => \N__10899\,
            I => \o_fram_sclk_obuf_1LegalizeSB_DFFNet\
        );

    \I__2569\ : IoInMux
    port map (
            O => \N__10896\,
            I => \N__10893\
        );

    \I__2568\ : LocalMux
    port map (
            O => \N__10893\,
            I => \o_fram_sclk_obuf_2LegalizeSB_DFFNet\
        );

    \I__2567\ : IoInMux
    port map (
            O => \N__10890\,
            I => \N__10887\
        );

    \I__2566\ : LocalMux
    port map (
            O => \N__10887\,
            I => \o_fram_sclk_obuf_3LegalizeSB_DFFNet\
        );

    \I__2565\ : InMux
    port map (
            O => \N__10884\,
            I => \N__10879\
        );

    \I__2564\ : InMux
    port map (
            O => \N__10883\,
            I => \N__10875\
        );

    \I__2563\ : CascadeMux
    port map (
            O => \N__10882\,
            I => \N__10871\
        );

    \I__2562\ : LocalMux
    port map (
            O => \N__10879\,
            I => \N__10868\
        );

    \I__2561\ : InMux
    port map (
            O => \N__10878\,
            I => \N__10865\
        );

    \I__2560\ : LocalMux
    port map (
            O => \N__10875\,
            I => \N__10861\
        );

    \I__2559\ : InMux
    port map (
            O => \N__10874\,
            I => \N__10858\
        );

    \I__2558\ : InMux
    port map (
            O => \N__10871\,
            I => \N__10855\
        );

    \I__2557\ : Span4Mux_h
    port map (
            O => \N__10868\,
            I => \N__10846\
        );

    \I__2556\ : LocalMux
    port map (
            O => \N__10865\,
            I => \N__10846\
        );

    \I__2555\ : InMux
    port map (
            O => \N__10864\,
            I => \N__10839\
        );

    \I__2554\ : Span4Mux_v
    port map (
            O => \N__10861\,
            I => \N__10832\
        );

    \I__2553\ : LocalMux
    port map (
            O => \N__10858\,
            I => \N__10832\
        );

    \I__2552\ : LocalMux
    port map (
            O => \N__10855\,
            I => \N__10832\
        );

    \I__2551\ : InMux
    port map (
            O => \N__10854\,
            I => \N__10825\
        );

    \I__2550\ : InMux
    port map (
            O => \N__10853\,
            I => \N__10825\
        );

    \I__2549\ : InMux
    port map (
            O => \N__10852\,
            I => \N__10825\
        );

    \I__2548\ : CascadeMux
    port map (
            O => \N__10851\,
            I => \N__10822\
        );

    \I__2547\ : Span4Mux_h
    port map (
            O => \N__10846\,
            I => \N__10818\
        );

    \I__2546\ : InMux
    port map (
            O => \N__10845\,
            I => \N__10815\
        );

    \I__2545\ : InMux
    port map (
            O => \N__10844\,
            I => \N__10810\
        );

    \I__2544\ : InMux
    port map (
            O => \N__10843\,
            I => \N__10807\
        );

    \I__2543\ : CascadeMux
    port map (
            O => \N__10842\,
            I => \N__10804\
        );

    \I__2542\ : LocalMux
    port map (
            O => \N__10839\,
            I => \N__10800\
        );

    \I__2541\ : Span4Mux_v
    port map (
            O => \N__10832\,
            I => \N__10795\
        );

    \I__2540\ : LocalMux
    port map (
            O => \N__10825\,
            I => \N__10795\
        );

    \I__2539\ : InMux
    port map (
            O => \N__10822\,
            I => \N__10792\
        );

    \I__2538\ : InMux
    port map (
            O => \N__10821\,
            I => \N__10788\
        );

    \I__2537\ : Span4Mux_h
    port map (
            O => \N__10818\,
            I => \N__10784\
        );

    \I__2536\ : LocalMux
    port map (
            O => \N__10815\,
            I => \N__10781\
        );

    \I__2535\ : InMux
    port map (
            O => \N__10814\,
            I => \N__10778\
        );

    \I__2534\ : InMux
    port map (
            O => \N__10813\,
            I => \N__10775\
        );

    \I__2533\ : LocalMux
    port map (
            O => \N__10810\,
            I => \N__10772\
        );

    \I__2532\ : LocalMux
    port map (
            O => \N__10807\,
            I => \N__10769\
        );

    \I__2531\ : InMux
    port map (
            O => \N__10804\,
            I => \N__10766\
        );

    \I__2530\ : InMux
    port map (
            O => \N__10803\,
            I => \N__10763\
        );

    \I__2529\ : Span4Mux_h
    port map (
            O => \N__10800\,
            I => \N__10760\
        );

    \I__2528\ : Span4Mux_v
    port map (
            O => \N__10795\,
            I => \N__10755\
        );

    \I__2527\ : LocalMux
    port map (
            O => \N__10792\,
            I => \N__10755\
        );

    \I__2526\ : InMux
    port map (
            O => \N__10791\,
            I => \N__10752\
        );

    \I__2525\ : LocalMux
    port map (
            O => \N__10788\,
            I => \N__10749\
        );

    \I__2524\ : InMux
    port map (
            O => \N__10787\,
            I => \N__10746\
        );

    \I__2523\ : Span4Mux_v
    port map (
            O => \N__10784\,
            I => \N__10740\
        );

    \I__2522\ : Span4Mux_h
    port map (
            O => \N__10781\,
            I => \N__10740\
        );

    \I__2521\ : LocalMux
    port map (
            O => \N__10778\,
            I => \N__10735\
        );

    \I__2520\ : LocalMux
    port map (
            O => \N__10775\,
            I => \N__10735\
        );

    \I__2519\ : Span4Mux_v
    port map (
            O => \N__10772\,
            I => \N__10730\
        );

    \I__2518\ : Span4Mux_h
    port map (
            O => \N__10769\,
            I => \N__10730\
        );

    \I__2517\ : LocalMux
    port map (
            O => \N__10766\,
            I => \N__10725\
        );

    \I__2516\ : LocalMux
    port map (
            O => \N__10763\,
            I => \N__10725\
        );

    \I__2515\ : Span4Mux_v
    port map (
            O => \N__10760\,
            I => \N__10718\
        );

    \I__2514\ : Span4Mux_h
    port map (
            O => \N__10755\,
            I => \N__10718\
        );

    \I__2513\ : LocalMux
    port map (
            O => \N__10752\,
            I => \N__10718\
        );

    \I__2512\ : Span4Mux_v
    port map (
            O => \N__10749\,
            I => \N__10713\
        );

    \I__2511\ : LocalMux
    port map (
            O => \N__10746\,
            I => \N__10713\
        );

    \I__2510\ : InMux
    port map (
            O => \N__10745\,
            I => \N__10710\
        );

    \I__2509\ : Span4Mux_v
    port map (
            O => \N__10740\,
            I => \N__10705\
        );

    \I__2508\ : Span4Mux_h
    port map (
            O => \N__10735\,
            I => \N__10705\
        );

    \I__2507\ : Span4Mux_v
    port map (
            O => \N__10730\,
            I => \N__10700\
        );

    \I__2506\ : Span4Mux_h
    port map (
            O => \N__10725\,
            I => \N__10700\
        );

    \I__2505\ : Span4Mux_v
    port map (
            O => \N__10718\,
            I => \N__10695\
        );

    \I__2504\ : Span4Mux_s0_v
    port map (
            O => \N__10713\,
            I => \N__10695\
        );

    \I__2503\ : LocalMux
    port map (
            O => \N__10710\,
            I => \N__10692\
        );

    \I__2502\ : Span4Mux_h
    port map (
            O => \N__10705\,
            I => \N__10689\
        );

    \I__2501\ : Span4Mux_h
    port map (
            O => \N__10700\,
            I => \N__10686\
        );

    \I__2500\ : Span4Mux_h
    port map (
            O => \N__10695\,
            I => \N__10683\
        );

    \I__2499\ : Span12Mux_h
    port map (
            O => \N__10692\,
            I => \N__10679\
        );

    \I__2498\ : Span4Mux_h
    port map (
            O => \N__10689\,
            I => \N__10676\
        );

    \I__2497\ : Span4Mux_h
    port map (
            O => \N__10686\,
            I => \N__10673\
        );

    \I__2496\ : Span4Mux_h
    port map (
            O => \N__10683\,
            I => \N__10670\
        );

    \I__2495\ : InMux
    port map (
            O => \N__10682\,
            I => \N__10667\
        );

    \I__2494\ : Odrv12
    port map (
            O => \N__10679\,
            I => i_fpga_m_c_0
        );

    \I__2493\ : Odrv4
    port map (
            O => \N__10676\,
            I => i_fpga_m_c_0
        );

    \I__2492\ : Odrv4
    port map (
            O => \N__10673\,
            I => i_fpga_m_c_0
        );

    \I__2491\ : Odrv4
    port map (
            O => \N__10670\,
            I => i_fpga_m_c_0
        );

    \I__2490\ : LocalMux
    port map (
            O => \N__10667\,
            I => i_fpga_m_c_0
        );

    \I__2489\ : InMux
    port map (
            O => \N__10656\,
            I => \N__10648\
        );

    \I__2488\ : CascadeMux
    port map (
            O => \N__10655\,
            I => \N__10644\
        );

    \I__2487\ : InMux
    port map (
            O => \N__10654\,
            I => \N__10641\
        );

    \I__2486\ : CascadeMux
    port map (
            O => \N__10653\,
            I => \N__10638\
        );

    \I__2485\ : InMux
    port map (
            O => \N__10652\,
            I => \N__10634\
        );

    \I__2484\ : CascadeMux
    port map (
            O => \N__10651\,
            I => \N__10631\
        );

    \I__2483\ : LocalMux
    port map (
            O => \N__10648\,
            I => \N__10627\
        );

    \I__2482\ : InMux
    port map (
            O => \N__10647\,
            I => \N__10624\
        );

    \I__2481\ : InMux
    port map (
            O => \N__10644\,
            I => \N__10621\
        );

    \I__2480\ : LocalMux
    port map (
            O => \N__10641\,
            I => \N__10615\
        );

    \I__2479\ : InMux
    port map (
            O => \N__10638\,
            I => \N__10612\
        );

    \I__2478\ : InMux
    port map (
            O => \N__10637\,
            I => \N__10609\
        );

    \I__2477\ : LocalMux
    port map (
            O => \N__10634\,
            I => \N__10606\
        );

    \I__2476\ : InMux
    port map (
            O => \N__10631\,
            I => \N__10603\
        );

    \I__2475\ : CascadeMux
    port map (
            O => \N__10630\,
            I => \N__10600\
        );

    \I__2474\ : Span4Mux_s2_v
    port map (
            O => \N__10627\,
            I => \N__10595\
        );

    \I__2473\ : LocalMux
    port map (
            O => \N__10624\,
            I => \N__10595\
        );

    \I__2472\ : LocalMux
    port map (
            O => \N__10621\,
            I => \N__10592\
        );

    \I__2471\ : InMux
    port map (
            O => \N__10620\,
            I => \N__10589\
        );

    \I__2470\ : InMux
    port map (
            O => \N__10619\,
            I => \N__10583\
        );

    \I__2469\ : CascadeMux
    port map (
            O => \N__10618\,
            I => \N__10580\
        );

    \I__2468\ : Span4Mux_s2_v
    port map (
            O => \N__10615\,
            I => \N__10572\
        );

    \I__2467\ : LocalMux
    port map (
            O => \N__10612\,
            I => \N__10572\
        );

    \I__2466\ : LocalMux
    port map (
            O => \N__10609\,
            I => \N__10572\
        );

    \I__2465\ : Span4Mux_s2_v
    port map (
            O => \N__10606\,
            I => \N__10567\
        );

    \I__2464\ : LocalMux
    port map (
            O => \N__10603\,
            I => \N__10567\
        );

    \I__2463\ : InMux
    port map (
            O => \N__10600\,
            I => \N__10564\
        );

    \I__2462\ : Span4Mux_v
    port map (
            O => \N__10595\,
            I => \N__10557\
        );

    \I__2461\ : Span4Mux_v
    port map (
            O => \N__10592\,
            I => \N__10557\
        );

    \I__2460\ : LocalMux
    port map (
            O => \N__10589\,
            I => \N__10557\
        );

    \I__2459\ : InMux
    port map (
            O => \N__10588\,
            I => \N__10554\
        );

    \I__2458\ : InMux
    port map (
            O => \N__10587\,
            I => \N__10551\
        );

    \I__2457\ : CascadeMux
    port map (
            O => \N__10586\,
            I => \N__10548\
        );

    \I__2456\ : LocalMux
    port map (
            O => \N__10583\,
            I => \N__10544\
        );

    \I__2455\ : InMux
    port map (
            O => \N__10580\,
            I => \N__10541\
        );

    \I__2454\ : InMux
    port map (
            O => \N__10579\,
            I => \N__10535\
        );

    \I__2453\ : Span4Mux_v
    port map (
            O => \N__10572\,
            I => \N__10532\
        );

    \I__2452\ : Span4Mux_v
    port map (
            O => \N__10567\,
            I => \N__10527\
        );

    \I__2451\ : LocalMux
    port map (
            O => \N__10564\,
            I => \N__10527\
        );

    \I__2450\ : Span4Mux_v
    port map (
            O => \N__10557\,
            I => \N__10524\
        );

    \I__2449\ : LocalMux
    port map (
            O => \N__10554\,
            I => \N__10521\
        );

    \I__2448\ : LocalMux
    port map (
            O => \N__10551\,
            I => \N__10517\
        );

    \I__2447\ : InMux
    port map (
            O => \N__10548\,
            I => \N__10512\
        );

    \I__2446\ : InMux
    port map (
            O => \N__10547\,
            I => \N__10512\
        );

    \I__2445\ : Span4Mux_h
    port map (
            O => \N__10544\,
            I => \N__10507\
        );

    \I__2444\ : LocalMux
    port map (
            O => \N__10541\,
            I => \N__10507\
        );

    \I__2443\ : InMux
    port map (
            O => \N__10540\,
            I => \N__10500\
        );

    \I__2442\ : InMux
    port map (
            O => \N__10539\,
            I => \N__10500\
        );

    \I__2441\ : InMux
    port map (
            O => \N__10538\,
            I => \N__10500\
        );

    \I__2440\ : LocalMux
    port map (
            O => \N__10535\,
            I => \N__10497\
        );

    \I__2439\ : Span4Mux_v
    port map (
            O => \N__10532\,
            I => \N__10492\
        );

    \I__2438\ : Span4Mux_v
    port map (
            O => \N__10527\,
            I => \N__10492\
        );

    \I__2437\ : Span4Mux_h
    port map (
            O => \N__10524\,
            I => \N__10487\
        );

    \I__2436\ : Span4Mux_v
    port map (
            O => \N__10521\,
            I => \N__10487\
        );

    \I__2435\ : CascadeMux
    port map (
            O => \N__10520\,
            I => \N__10483\
        );

    \I__2434\ : Span12Mux_h
    port map (
            O => \N__10517\,
            I => \N__10480\
        );

    \I__2433\ : LocalMux
    port map (
            O => \N__10512\,
            I => \N__10473\
        );

    \I__2432\ : Sp12to4
    port map (
            O => \N__10507\,
            I => \N__10473\
        );

    \I__2431\ : LocalMux
    port map (
            O => \N__10500\,
            I => \N__10473\
        );

    \I__2430\ : Span12Mux_s10_v
    port map (
            O => \N__10497\,
            I => \N__10468\
        );

    \I__2429\ : Sp12to4
    port map (
            O => \N__10492\,
            I => \N__10468\
        );

    \I__2428\ : Sp12to4
    port map (
            O => \N__10487\,
            I => \N__10465\
        );

    \I__2427\ : InMux
    port map (
            O => \N__10486\,
            I => \N__10462\
        );

    \I__2426\ : InMux
    port map (
            O => \N__10483\,
            I => \N__10459\
        );

    \I__2425\ : Span12Mux_v
    port map (
            O => \N__10480\,
            I => \N__10456\
        );

    \I__2424\ : Span12Mux_v
    port map (
            O => \N__10473\,
            I => \N__10453\
        );

    \I__2423\ : Span12Mux_h
    port map (
            O => \N__10468\,
            I => \N__10444\
        );

    \I__2422\ : Span12Mux_s8_h
    port map (
            O => \N__10465\,
            I => \N__10444\
        );

    \I__2421\ : LocalMux
    port map (
            O => \N__10462\,
            I => \N__10444\
        );

    \I__2420\ : LocalMux
    port map (
            O => \N__10459\,
            I => \N__10444\
        );

    \I__2419\ : Odrv12
    port map (
            O => \N__10456\,
            I => i_fpga_m_c_2
        );

    \I__2418\ : Odrv12
    port map (
            O => \N__10453\,
            I => i_fpga_m_c_2
        );

    \I__2417\ : Odrv12
    port map (
            O => \N__10444\,
            I => i_fpga_m_c_2
        );

    \I__2416\ : CascadeMux
    port map (
            O => \N__10437\,
            I => \N__10434\
        );

    \I__2415\ : InMux
    port map (
            O => \N__10434\,
            I => \N__10428\
        );

    \I__2414\ : InMux
    port map (
            O => \N__10433\,
            I => \N__10423\
        );

    \I__2413\ : InMux
    port map (
            O => \N__10432\,
            I => \N__10414\
        );

    \I__2412\ : CascadeMux
    port map (
            O => \N__10431\,
            I => \N__10410\
        );

    \I__2411\ : LocalMux
    port map (
            O => \N__10428\,
            I => \N__10406\
        );

    \I__2410\ : InMux
    port map (
            O => \N__10427\,
            I => \N__10403\
        );

    \I__2409\ : CascadeMux
    port map (
            O => \N__10426\,
            I => \N__10400\
        );

    \I__2408\ : LocalMux
    port map (
            O => \N__10423\,
            I => \N__10397\
        );

    \I__2407\ : InMux
    port map (
            O => \N__10422\,
            I => \N__10394\
        );

    \I__2406\ : CascadeMux
    port map (
            O => \N__10421\,
            I => \N__10391\
        );

    \I__2405\ : InMux
    port map (
            O => \N__10420\,
            I => \N__10385\
        );

    \I__2404\ : InMux
    port map (
            O => \N__10419\,
            I => \N__10385\
        );

    \I__2403\ : InMux
    port map (
            O => \N__10418\,
            I => \N__10381\
        );

    \I__2402\ : InMux
    port map (
            O => \N__10417\,
            I => \N__10378\
        );

    \I__2401\ : LocalMux
    port map (
            O => \N__10414\,
            I => \N__10375\
        );

    \I__2400\ : InMux
    port map (
            O => \N__10413\,
            I => \N__10372\
        );

    \I__2399\ : InMux
    port map (
            O => \N__10410\,
            I => \N__10369\
        );

    \I__2398\ : InMux
    port map (
            O => \N__10409\,
            I => \N__10366\
        );

    \I__2397\ : Span4Mux_h
    port map (
            O => \N__10406\,
            I => \N__10360\
        );

    \I__2396\ : LocalMux
    port map (
            O => \N__10403\,
            I => \N__10360\
        );

    \I__2395\ : InMux
    port map (
            O => \N__10400\,
            I => \N__10357\
        );

    \I__2394\ : Sp12to4
    port map (
            O => \N__10397\,
            I => \N__10354\
        );

    \I__2393\ : LocalMux
    port map (
            O => \N__10394\,
            I => \N__10350\
        );

    \I__2392\ : InMux
    port map (
            O => \N__10391\,
            I => \N__10347\
        );

    \I__2391\ : InMux
    port map (
            O => \N__10390\,
            I => \N__10344\
        );

    \I__2390\ : LocalMux
    port map (
            O => \N__10385\,
            I => \N__10341\
        );

    \I__2389\ : InMux
    port map (
            O => \N__10384\,
            I => \N__10338\
        );

    \I__2388\ : LocalMux
    port map (
            O => \N__10381\,
            I => \N__10335\
        );

    \I__2387\ : LocalMux
    port map (
            O => \N__10378\,
            I => \N__10330\
        );

    \I__2386\ : Span4Mux_v
    port map (
            O => \N__10375\,
            I => \N__10323\
        );

    \I__2385\ : LocalMux
    port map (
            O => \N__10372\,
            I => \N__10323\
        );

    \I__2384\ : LocalMux
    port map (
            O => \N__10369\,
            I => \N__10323\
        );

    \I__2383\ : LocalMux
    port map (
            O => \N__10366\,
            I => \N__10320\
        );

    \I__2382\ : InMux
    port map (
            O => \N__10365\,
            I => \N__10317\
        );

    \I__2381\ : Span4Mux_h
    port map (
            O => \N__10360\,
            I => \N__10314\
        );

    \I__2380\ : LocalMux
    port map (
            O => \N__10357\,
            I => \N__10311\
        );

    \I__2379\ : Span12Mux_s10_v
    port map (
            O => \N__10354\,
            I => \N__10307\
        );

    \I__2378\ : InMux
    port map (
            O => \N__10353\,
            I => \N__10304\
        );

    \I__2377\ : Span4Mux_v
    port map (
            O => \N__10350\,
            I => \N__10297\
        );

    \I__2376\ : LocalMux
    port map (
            O => \N__10347\,
            I => \N__10297\
        );

    \I__2375\ : LocalMux
    port map (
            O => \N__10344\,
            I => \N__10297\
        );

    \I__2374\ : Span4Mux_h
    port map (
            O => \N__10341\,
            I => \N__10292\
        );

    \I__2373\ : LocalMux
    port map (
            O => \N__10338\,
            I => \N__10292\
        );

    \I__2372\ : Span4Mux_h
    port map (
            O => \N__10335\,
            I => \N__10289\
        );

    \I__2371\ : InMux
    port map (
            O => \N__10334\,
            I => \N__10286\
        );

    \I__2370\ : InMux
    port map (
            O => \N__10333\,
            I => \N__10283\
        );

    \I__2369\ : Span4Mux_h
    port map (
            O => \N__10330\,
            I => \N__10280\
        );

    \I__2368\ : Span4Mux_v
    port map (
            O => \N__10323\,
            I => \N__10273\
        );

    \I__2367\ : Span4Mux_s1_v
    port map (
            O => \N__10320\,
            I => \N__10273\
        );

    \I__2366\ : LocalMux
    port map (
            O => \N__10317\,
            I => \N__10273\
        );

    \I__2365\ : Span4Mux_v
    port map (
            O => \N__10314\,
            I => \N__10268\
        );

    \I__2364\ : Span4Mux_h
    port map (
            O => \N__10311\,
            I => \N__10268\
        );

    \I__2363\ : InMux
    port map (
            O => \N__10310\,
            I => \N__10265\
        );

    \I__2362\ : Span12Mux_h
    port map (
            O => \N__10307\,
            I => \N__10250\
        );

    \I__2361\ : LocalMux
    port map (
            O => \N__10304\,
            I => \N__10250\
        );

    \I__2360\ : Sp12to4
    port map (
            O => \N__10297\,
            I => \N__10250\
        );

    \I__2359\ : Sp12to4
    port map (
            O => \N__10292\,
            I => \N__10250\
        );

    \I__2358\ : Sp12to4
    port map (
            O => \N__10289\,
            I => \N__10250\
        );

    \I__2357\ : LocalMux
    port map (
            O => \N__10286\,
            I => \N__10250\
        );

    \I__2356\ : LocalMux
    port map (
            O => \N__10283\,
            I => \N__10250\
        );

    \I__2355\ : Span4Mux_v
    port map (
            O => \N__10280\,
            I => \N__10245\
        );

    \I__2354\ : Span4Mux_h
    port map (
            O => \N__10273\,
            I => \N__10245\
        );

    \I__2353\ : Span4Mux_v
    port map (
            O => \N__10268\,
            I => \N__10240\
        );

    \I__2352\ : LocalMux
    port map (
            O => \N__10265\,
            I => \N__10240\
        );

    \I__2351\ : Odrv12
    port map (
            O => \N__10250\,
            I => i_fpga_m_c_1
        );

    \I__2350\ : Odrv4
    port map (
            O => \N__10245\,
            I => i_fpga_m_c_1
        );

    \I__2349\ : Odrv4
    port map (
            O => \N__10240\,
            I => i_fpga_m_c_1
        );

    \I__2348\ : CascadeMux
    port map (
            O => \N__10233\,
            I => \N__10230\
        );

    \I__2347\ : InMux
    port map (
            O => \N__10230\,
            I => \N__10227\
        );

    \I__2346\ : LocalMux
    port map (
            O => \N__10227\,
            I => \N__10224\
        );

    \I__2345\ : Odrv4
    port map (
            O => \N__10224\,
            I => \I_DUT.U_4.fpga_m_retZ0\
        );

    \I__2344\ : ClkMux
    port map (
            O => \N__10221\,
            I => \N__10044\
        );

    \I__2343\ : ClkMux
    port map (
            O => \N__10220\,
            I => \N__10044\
        );

    \I__2342\ : ClkMux
    port map (
            O => \N__10219\,
            I => \N__10044\
        );

    \I__2341\ : ClkMux
    port map (
            O => \N__10218\,
            I => \N__10044\
        );

    \I__2340\ : ClkMux
    port map (
            O => \N__10217\,
            I => \N__10044\
        );

    \I__2339\ : ClkMux
    port map (
            O => \N__10216\,
            I => \N__10044\
        );

    \I__2338\ : ClkMux
    port map (
            O => \N__10215\,
            I => \N__10044\
        );

    \I__2337\ : ClkMux
    port map (
            O => \N__10214\,
            I => \N__10044\
        );

    \I__2336\ : ClkMux
    port map (
            O => \N__10213\,
            I => \N__10044\
        );

    \I__2335\ : ClkMux
    port map (
            O => \N__10212\,
            I => \N__10044\
        );

    \I__2334\ : ClkMux
    port map (
            O => \N__10211\,
            I => \N__10044\
        );

    \I__2333\ : ClkMux
    port map (
            O => \N__10210\,
            I => \N__10044\
        );

    \I__2332\ : ClkMux
    port map (
            O => \N__10209\,
            I => \N__10044\
        );

    \I__2331\ : ClkMux
    port map (
            O => \N__10208\,
            I => \N__10044\
        );

    \I__2330\ : ClkMux
    port map (
            O => \N__10207\,
            I => \N__10044\
        );

    \I__2329\ : ClkMux
    port map (
            O => \N__10206\,
            I => \N__10044\
        );

    \I__2328\ : ClkMux
    port map (
            O => \N__10205\,
            I => \N__10044\
        );

    \I__2327\ : ClkMux
    port map (
            O => \N__10204\,
            I => \N__10044\
        );

    \I__2326\ : ClkMux
    port map (
            O => \N__10203\,
            I => \N__10044\
        );

    \I__2325\ : ClkMux
    port map (
            O => \N__10202\,
            I => \N__10044\
        );

    \I__2324\ : ClkMux
    port map (
            O => \N__10201\,
            I => \N__10044\
        );

    \I__2323\ : ClkMux
    port map (
            O => \N__10200\,
            I => \N__10044\
        );

    \I__2322\ : ClkMux
    port map (
            O => \N__10199\,
            I => \N__10044\
        );

    \I__2321\ : ClkMux
    port map (
            O => \N__10198\,
            I => \N__10044\
        );

    \I__2320\ : ClkMux
    port map (
            O => \N__10197\,
            I => \N__10044\
        );

    \I__2319\ : ClkMux
    port map (
            O => \N__10196\,
            I => \N__10044\
        );

    \I__2318\ : ClkMux
    port map (
            O => \N__10195\,
            I => \N__10044\
        );

    \I__2317\ : ClkMux
    port map (
            O => \N__10194\,
            I => \N__10044\
        );

    \I__2316\ : ClkMux
    port map (
            O => \N__10193\,
            I => \N__10044\
        );

    \I__2315\ : ClkMux
    port map (
            O => \N__10192\,
            I => \N__10044\
        );

    \I__2314\ : ClkMux
    port map (
            O => \N__10191\,
            I => \N__10044\
        );

    \I__2313\ : ClkMux
    port map (
            O => \N__10190\,
            I => \N__10044\
        );

    \I__2312\ : ClkMux
    port map (
            O => \N__10189\,
            I => \N__10044\
        );

    \I__2311\ : ClkMux
    port map (
            O => \N__10188\,
            I => \N__10044\
        );

    \I__2310\ : ClkMux
    port map (
            O => \N__10187\,
            I => \N__10044\
        );

    \I__2309\ : ClkMux
    port map (
            O => \N__10186\,
            I => \N__10044\
        );

    \I__2308\ : ClkMux
    port map (
            O => \N__10185\,
            I => \N__10044\
        );

    \I__2307\ : ClkMux
    port map (
            O => \N__10184\,
            I => \N__10044\
        );

    \I__2306\ : ClkMux
    port map (
            O => \N__10183\,
            I => \N__10044\
        );

    \I__2305\ : ClkMux
    port map (
            O => \N__10182\,
            I => \N__10044\
        );

    \I__2304\ : ClkMux
    port map (
            O => \N__10181\,
            I => \N__10044\
        );

    \I__2303\ : ClkMux
    port map (
            O => \N__10180\,
            I => \N__10044\
        );

    \I__2302\ : ClkMux
    port map (
            O => \N__10179\,
            I => \N__10044\
        );

    \I__2301\ : ClkMux
    port map (
            O => \N__10178\,
            I => \N__10044\
        );

    \I__2300\ : ClkMux
    port map (
            O => \N__10177\,
            I => \N__10044\
        );

    \I__2299\ : ClkMux
    port map (
            O => \N__10176\,
            I => \N__10044\
        );

    \I__2298\ : ClkMux
    port map (
            O => \N__10175\,
            I => \N__10044\
        );

    \I__2297\ : ClkMux
    port map (
            O => \N__10174\,
            I => \N__10044\
        );

    \I__2296\ : ClkMux
    port map (
            O => \N__10173\,
            I => \N__10044\
        );

    \I__2295\ : ClkMux
    port map (
            O => \N__10172\,
            I => \N__10044\
        );

    \I__2294\ : ClkMux
    port map (
            O => \N__10171\,
            I => \N__10044\
        );

    \I__2293\ : ClkMux
    port map (
            O => \N__10170\,
            I => \N__10044\
        );

    \I__2292\ : ClkMux
    port map (
            O => \N__10169\,
            I => \N__10044\
        );

    \I__2291\ : ClkMux
    port map (
            O => \N__10168\,
            I => \N__10044\
        );

    \I__2290\ : ClkMux
    port map (
            O => \N__10167\,
            I => \N__10044\
        );

    \I__2289\ : ClkMux
    port map (
            O => \N__10166\,
            I => \N__10044\
        );

    \I__2288\ : ClkMux
    port map (
            O => \N__10165\,
            I => \N__10044\
        );

    \I__2287\ : ClkMux
    port map (
            O => \N__10164\,
            I => \N__10044\
        );

    \I__2286\ : ClkMux
    port map (
            O => \N__10163\,
            I => \N__10044\
        );

    \I__2285\ : GlobalMux
    port map (
            O => \N__10044\,
            I => \N__10041\
        );

    \I__2284\ : gio2CtrlBuf
    port map (
            O => \N__10041\,
            I => clk_0_c_g
        );

    \I__2283\ : SRMux
    port map (
            O => \N__10038\,
            I => \N__9870\
        );

    \I__2282\ : SRMux
    port map (
            O => \N__10037\,
            I => \N__9870\
        );

    \I__2281\ : SRMux
    port map (
            O => \N__10036\,
            I => \N__9870\
        );

    \I__2280\ : SRMux
    port map (
            O => \N__10035\,
            I => \N__9870\
        );

    \I__2279\ : SRMux
    port map (
            O => \N__10034\,
            I => \N__9870\
        );

    \I__2278\ : SRMux
    port map (
            O => \N__10033\,
            I => \N__9870\
        );

    \I__2277\ : SRMux
    port map (
            O => \N__10032\,
            I => \N__9870\
        );

    \I__2276\ : SRMux
    port map (
            O => \N__10031\,
            I => \N__9870\
        );

    \I__2275\ : SRMux
    port map (
            O => \N__10030\,
            I => \N__9870\
        );

    \I__2274\ : SRMux
    port map (
            O => \N__10029\,
            I => \N__9870\
        );

    \I__2273\ : SRMux
    port map (
            O => \N__10028\,
            I => \N__9870\
        );

    \I__2272\ : SRMux
    port map (
            O => \N__10027\,
            I => \N__9870\
        );

    \I__2271\ : SRMux
    port map (
            O => \N__10026\,
            I => \N__9870\
        );

    \I__2270\ : SRMux
    port map (
            O => \N__10025\,
            I => \N__9870\
        );

    \I__2269\ : SRMux
    port map (
            O => \N__10024\,
            I => \N__9870\
        );

    \I__2268\ : SRMux
    port map (
            O => \N__10023\,
            I => \N__9870\
        );

    \I__2267\ : SRMux
    port map (
            O => \N__10022\,
            I => \N__9870\
        );

    \I__2266\ : SRMux
    port map (
            O => \N__10021\,
            I => \N__9870\
        );

    \I__2265\ : SRMux
    port map (
            O => \N__10020\,
            I => \N__9870\
        );

    \I__2264\ : SRMux
    port map (
            O => \N__10019\,
            I => \N__9870\
        );

    \I__2263\ : SRMux
    port map (
            O => \N__10018\,
            I => \N__9870\
        );

    \I__2262\ : SRMux
    port map (
            O => \N__10017\,
            I => \N__9870\
        );

    \I__2261\ : SRMux
    port map (
            O => \N__10016\,
            I => \N__9870\
        );

    \I__2260\ : SRMux
    port map (
            O => \N__10015\,
            I => \N__9870\
        );

    \I__2259\ : SRMux
    port map (
            O => \N__10014\,
            I => \N__9870\
        );

    \I__2258\ : SRMux
    port map (
            O => \N__10013\,
            I => \N__9870\
        );

    \I__2257\ : SRMux
    port map (
            O => \N__10012\,
            I => \N__9870\
        );

    \I__2256\ : SRMux
    port map (
            O => \N__10011\,
            I => \N__9870\
        );

    \I__2255\ : SRMux
    port map (
            O => \N__10010\,
            I => \N__9870\
        );

    \I__2254\ : SRMux
    port map (
            O => \N__10009\,
            I => \N__9870\
        );

    \I__2253\ : SRMux
    port map (
            O => \N__10008\,
            I => \N__9870\
        );

    \I__2252\ : SRMux
    port map (
            O => \N__10007\,
            I => \N__9870\
        );

    \I__2251\ : SRMux
    port map (
            O => \N__10006\,
            I => \N__9870\
        );

    \I__2250\ : SRMux
    port map (
            O => \N__10005\,
            I => \N__9870\
        );

    \I__2249\ : SRMux
    port map (
            O => \N__10004\,
            I => \N__9870\
        );

    \I__2248\ : SRMux
    port map (
            O => \N__10003\,
            I => \N__9870\
        );

    \I__2247\ : SRMux
    port map (
            O => \N__10002\,
            I => \N__9870\
        );

    \I__2246\ : SRMux
    port map (
            O => \N__10001\,
            I => \N__9870\
        );

    \I__2245\ : SRMux
    port map (
            O => \N__10000\,
            I => \N__9870\
        );

    \I__2244\ : SRMux
    port map (
            O => \N__9999\,
            I => \N__9870\
        );

    \I__2243\ : SRMux
    port map (
            O => \N__9998\,
            I => \N__9870\
        );

    \I__2242\ : SRMux
    port map (
            O => \N__9997\,
            I => \N__9870\
        );

    \I__2241\ : SRMux
    port map (
            O => \N__9996\,
            I => \N__9870\
        );

    \I__2240\ : SRMux
    port map (
            O => \N__9995\,
            I => \N__9870\
        );

    \I__2239\ : SRMux
    port map (
            O => \N__9994\,
            I => \N__9870\
        );

    \I__2238\ : SRMux
    port map (
            O => \N__9993\,
            I => \N__9870\
        );

    \I__2237\ : SRMux
    port map (
            O => \N__9992\,
            I => \N__9870\
        );

    \I__2236\ : SRMux
    port map (
            O => \N__9991\,
            I => \N__9870\
        );

    \I__2235\ : SRMux
    port map (
            O => \N__9990\,
            I => \N__9870\
        );

    \I__2234\ : SRMux
    port map (
            O => \N__9989\,
            I => \N__9870\
        );

    \I__2233\ : SRMux
    port map (
            O => \N__9988\,
            I => \N__9870\
        );

    \I__2232\ : SRMux
    port map (
            O => \N__9987\,
            I => \N__9870\
        );

    \I__2231\ : SRMux
    port map (
            O => \N__9986\,
            I => \N__9870\
        );

    \I__2230\ : SRMux
    port map (
            O => \N__9985\,
            I => \N__9870\
        );

    \I__2229\ : SRMux
    port map (
            O => \N__9984\,
            I => \N__9870\
        );

    \I__2228\ : SRMux
    port map (
            O => \N__9983\,
            I => \N__9870\
        );

    \I__2227\ : GlobalMux
    port map (
            O => \N__9870\,
            I => \N__9867\
        );

    \I__2226\ : gio2CtrlBuf
    port map (
            O => \N__9867\,
            I => \lsig_resetSynch_n_i_g\
        );

    \I__2225\ : IoInMux
    port map (
            O => \N__9864\,
            I => \N__9861\
        );

    \I__2224\ : LocalMux
    port map (
            O => \N__9861\,
            I => \o_fram_sdi_obuf_3LegalizeSB_DFFNet\
        );

    \I__2223\ : ClkMux
    port map (
            O => \N__9858\,
            I => \N__9852\
        );

    \I__2222\ : ClkMux
    port map (
            O => \N__9857\,
            I => \N__9848\
        );

    \I__2221\ : ClkMux
    port map (
            O => \N__9856\,
            I => \N__9845\
        );

    \I__2220\ : ClkMux
    port map (
            O => \N__9855\,
            I => \N__9842\
        );

    \I__2219\ : LocalMux
    port map (
            O => \N__9852\,
            I => \N__9838\
        );

    \I__2218\ : ClkMux
    port map (
            O => \N__9851\,
            I => \N__9835\
        );

    \I__2217\ : LocalMux
    port map (
            O => \N__9848\,
            I => \N__9831\
        );

    \I__2216\ : LocalMux
    port map (
            O => \N__9845\,
            I => \N__9828\
        );

    \I__2215\ : LocalMux
    port map (
            O => \N__9842\,
            I => \N__9825\
        );

    \I__2214\ : ClkMux
    port map (
            O => \N__9841\,
            I => \N__9822\
        );

    \I__2213\ : Span4Mux_h
    port map (
            O => \N__9838\,
            I => \N__9817\
        );

    \I__2212\ : LocalMux
    port map (
            O => \N__9835\,
            I => \N__9817\
        );

    \I__2211\ : ClkMux
    port map (
            O => \N__9834\,
            I => \N__9814\
        );

    \I__2210\ : Span4Mux_h
    port map (
            O => \N__9831\,
            I => \N__9809\
        );

    \I__2209\ : Span4Mux_h
    port map (
            O => \N__9828\,
            I => \N__9809\
        );

    \I__2208\ : Sp12to4
    port map (
            O => \N__9825\,
            I => \N__9803\
        );

    \I__2207\ : LocalMux
    port map (
            O => \N__9822\,
            I => \N__9803\
        );

    \I__2206\ : Span4Mux_h
    port map (
            O => \N__9817\,
            I => \N__9798\
        );

    \I__2205\ : LocalMux
    port map (
            O => \N__9814\,
            I => \N__9798\
        );

    \I__2204\ : Span4Mux_h
    port map (
            O => \N__9809\,
            I => \N__9795\
        );

    \I__2203\ : ClkMux
    port map (
            O => \N__9808\,
            I => \N__9792\
        );

    \I__2202\ : Span12Mux_h
    port map (
            O => \N__9803\,
            I => \N__9788\
        );

    \I__2201\ : Sp12to4
    port map (
            O => \N__9798\,
            I => \N__9785\
        );

    \I__2200\ : Span4Mux_h
    port map (
            O => \N__9795\,
            I => \N__9780\
        );

    \I__2199\ : LocalMux
    port map (
            O => \N__9792\,
            I => \N__9780\
        );

    \I__2198\ : ClkMux
    port map (
            O => \N__9791\,
            I => \N__9777\
        );

    \I__2197\ : Span12Mux_v
    port map (
            O => \N__9788\,
            I => \N__9774\
        );

    \I__2196\ : Span12Mux_h
    port map (
            O => \N__9785\,
            I => \N__9771\
        );

    \I__2195\ : Span4Mux_h
    port map (
            O => \N__9780\,
            I => \N__9768\
        );

    \I__2194\ : LocalMux
    port map (
            O => \N__9777\,
            I => \N__9765\
        );

    \I__2193\ : Span12Mux_h
    port map (
            O => \N__9774\,
            I => \N__9760\
        );

    \I__2192\ : Span12Mux_v
    port map (
            O => \N__9771\,
            I => \N__9760\
        );

    \I__2191\ : Span4Mux_h
    port map (
            O => \N__9768\,
            I => \N__9755\
        );

    \I__2190\ : Span4Mux_h
    port map (
            O => \N__9765\,
            I => \N__9755\
        );

    \I__2189\ : Odrv12
    port map (
            O => \N__9760\,
            I => \internalOscilatorOutputNet\
        );

    \I__2188\ : Odrv4
    port map (
            O => \N__9755\,
            I => \internalOscilatorOutputNet\
        );

    \I__2187\ : InMux
    port map (
            O => \N__9750\,
            I => \N__9747\
        );

    \I__2186\ : LocalMux
    port map (
            O => \N__9747\,
            I => i_adc_sdo_c_0
        );

    \I__2185\ : InMux
    port map (
            O => \N__9744\,
            I => \N__9741\
        );

    \I__2184\ : LocalMux
    port map (
            O => \N__9741\,
            I => \N__9738\
        );

    \I__2183\ : Span4Mux_v
    port map (
            O => \N__9738\,
            I => \N__9735\
        );

    \I__2182\ : Span4Mux_h
    port map (
            O => \N__9735\,
            I => \N__9732\
        );

    \I__2181\ : Odrv4
    port map (
            O => \N__9732\,
            I => \adc_sdoZ0Z_0\
        );

    \I__2180\ : InMux
    port map (
            O => \N__9729\,
            I => \N__9726\
        );

    \I__2179\ : LocalMux
    port map (
            O => \N__9726\,
            I => \I_DUT.U_13.count_memoryZ0Z_15\
        );

    \I__2178\ : InMux
    port map (
            O => \N__9723\,
            I => \N__9720\
        );

    \I__2177\ : LocalMux
    port map (
            O => \N__9720\,
            I => \N__9717\
        );

    \I__2176\ : Odrv4
    port map (
            O => \N__9717\,
            I => \I_DUT.Memory_16\
        );

    \I__2175\ : InMux
    port map (
            O => \N__9714\,
            I => \N__9711\
        );

    \I__2174\ : LocalMux
    port map (
            O => \N__9711\,
            I => \I_DUT.U_13.count_memoryZ0Z_16\
        );

    \I__2173\ : InMux
    port map (
            O => \N__9708\,
            I => \N__9705\
        );

    \I__2172\ : LocalMux
    port map (
            O => \N__9705\,
            I => \I_DUT.Memory_17\
        );

    \I__2171\ : InMux
    port map (
            O => \N__9702\,
            I => \N__9699\
        );

    \I__2170\ : LocalMux
    port map (
            O => \N__9699\,
            I => \I_DUT.U_13.count_memoryZ0Z_17\
        );

    \I__2169\ : InMux
    port map (
            O => \N__9696\,
            I => \N__9693\
        );

    \I__2168\ : LocalMux
    port map (
            O => \N__9693\,
            I => \I_DUT.Memory_18\
        );

    \I__2167\ : InMux
    port map (
            O => \N__9690\,
            I => \N__9680\
        );

    \I__2166\ : InMux
    port map (
            O => \N__9689\,
            I => \N__9675\
        );

    \I__2165\ : InMux
    port map (
            O => \N__9688\,
            I => \N__9675\
        );

    \I__2164\ : InMux
    port map (
            O => \N__9687\,
            I => \N__9663\
        );

    \I__2163\ : InMux
    port map (
            O => \N__9686\,
            I => \N__9663\
        );

    \I__2162\ : InMux
    port map (
            O => \N__9685\,
            I => \N__9663\
        );

    \I__2161\ : InMux
    port map (
            O => \N__9684\,
            I => \N__9663\
        );

    \I__2160\ : InMux
    port map (
            O => \N__9683\,
            I => \N__9660\
        );

    \I__2159\ : LocalMux
    port map (
            O => \N__9680\,
            I => \N__9653\
        );

    \I__2158\ : LocalMux
    port map (
            O => \N__9675\,
            I => \N__9650\
        );

    \I__2157\ : InMux
    port map (
            O => \N__9674\,
            I => \N__9643\
        );

    \I__2156\ : InMux
    port map (
            O => \N__9673\,
            I => \N__9643\
        );

    \I__2155\ : InMux
    port map (
            O => \N__9672\,
            I => \N__9643\
        );

    \I__2154\ : LocalMux
    port map (
            O => \N__9663\,
            I => \N__9638\
        );

    \I__2153\ : LocalMux
    port map (
            O => \N__9660\,
            I => \N__9638\
        );

    \I__2152\ : InMux
    port map (
            O => \N__9659\,
            I => \N__9631\
        );

    \I__2151\ : InMux
    port map (
            O => \N__9658\,
            I => \N__9631\
        );

    \I__2150\ : InMux
    port map (
            O => \N__9657\,
            I => \N__9631\
        );

    \I__2149\ : InMux
    port map (
            O => \N__9656\,
            I => \N__9624\
        );

    \I__2148\ : Span4Mux_s2_v
    port map (
            O => \N__9653\,
            I => \N__9621\
        );

    \I__2147\ : Span4Mux_h
    port map (
            O => \N__9650\,
            I => \N__9618\
        );

    \I__2146\ : LocalMux
    port map (
            O => \N__9643\,
            I => \N__9611\
        );

    \I__2145\ : Span4Mux_h
    port map (
            O => \N__9638\,
            I => \N__9611\
        );

    \I__2144\ : LocalMux
    port map (
            O => \N__9631\,
            I => \N__9611\
        );

    \I__2143\ : InMux
    port map (
            O => \N__9630\,
            I => \N__9602\
        );

    \I__2142\ : InMux
    port map (
            O => \N__9629\,
            I => \N__9602\
        );

    \I__2141\ : InMux
    port map (
            O => \N__9628\,
            I => \N__9602\
        );

    \I__2140\ : InMux
    port map (
            O => \N__9627\,
            I => \N__9602\
        );

    \I__2139\ : LocalMux
    port map (
            O => \N__9624\,
            I => \N__9597\
        );

    \I__2138\ : Span4Mux_h
    port map (
            O => \N__9621\,
            I => \N__9594\
        );

    \I__2137\ : Span4Mux_h
    port map (
            O => \N__9618\,
            I => \N__9591\
        );

    \I__2136\ : Span4Mux_v
    port map (
            O => \N__9611\,
            I => \N__9586\
        );

    \I__2135\ : LocalMux
    port map (
            O => \N__9602\,
            I => \N__9586\
        );

    \I__2134\ : InMux
    port map (
            O => \N__9601\,
            I => \N__9583\
        );

    \I__2133\ : InMux
    port map (
            O => \N__9600\,
            I => \N__9580\
        );

    \I__2132\ : Odrv4
    port map (
            O => \N__9597\,
            I => \I_DUT.un1_m\
        );

    \I__2131\ : Odrv4
    port map (
            O => \N__9594\,
            I => \I_DUT.un1_m\
        );

    \I__2130\ : Odrv4
    port map (
            O => \N__9591\,
            I => \I_DUT.un1_m\
        );

    \I__2129\ : Odrv4
    port map (
            O => \N__9586\,
            I => \I_DUT.un1_m\
        );

    \I__2128\ : LocalMux
    port map (
            O => \N__9583\,
            I => \I_DUT.un1_m\
        );

    \I__2127\ : LocalMux
    port map (
            O => \N__9580\,
            I => \I_DUT.un1_m\
        );

    \I__2126\ : InMux
    port map (
            O => \N__9567\,
            I => \N__9564\
        );

    \I__2125\ : LocalMux
    port map (
            O => \N__9564\,
            I => \N__9561\
        );

    \I__2124\ : Odrv12
    port map (
            O => \N__9561\,
            I => \I_DUT.U_13.count_memoryZ0Z_18\
        );

    \I__2123\ : CEMux
    port map (
            O => \N__9558\,
            I => \N__9537\
        );

    \I__2122\ : CEMux
    port map (
            O => \N__9557\,
            I => \N__9537\
        );

    \I__2121\ : CEMux
    port map (
            O => \N__9556\,
            I => \N__9537\
        );

    \I__2120\ : CEMux
    port map (
            O => \N__9555\,
            I => \N__9537\
        );

    \I__2119\ : CEMux
    port map (
            O => \N__9554\,
            I => \N__9537\
        );

    \I__2118\ : CEMux
    port map (
            O => \N__9553\,
            I => \N__9537\
        );

    \I__2117\ : CEMux
    port map (
            O => \N__9552\,
            I => \N__9537\
        );

    \I__2116\ : GlobalMux
    port map (
            O => \N__9537\,
            I => \N__9534\
        );

    \I__2115\ : gio2CtrlBuf
    port map (
            O => \N__9534\,
            I => \I_DUT.U_13.MISO_OUT_1_sqmuxa_i_g\
        );

    \I__2114\ : IoInMux
    port map (
            O => \N__9531\,
            I => \N__9528\
        );

    \I__2113\ : LocalMux
    port map (
            O => \N__9528\,
            I => \o_fram_sdi_obuf_0LegalizeSB_DFFNet\
        );

    \I__2112\ : IoInMux
    port map (
            O => \N__9525\,
            I => \N__9522\
        );

    \I__2111\ : LocalMux
    port map (
            O => \N__9522\,
            I => \o_fram_sdi_obuf_1LegalizeSB_DFFNet\
        );

    \I__2110\ : IoInMux
    port map (
            O => \N__9519\,
            I => \N__9516\
        );

    \I__2109\ : LocalMux
    port map (
            O => \N__9516\,
            I => \o_fram_sdi_obuf_2LegalizeSB_DFFNet\
        );

    \I__2108\ : InMux
    port map (
            O => \N__9513\,
            I => \N__9510\
        );

    \I__2107\ : LocalMux
    port map (
            O => \N__9510\,
            I => \N__9507\
        );

    \I__2106\ : Span4Mux_s3_v
    port map (
            O => \N__9507\,
            I => \N__9501\
        );

    \I__2105\ : InMux
    port map (
            O => \N__9506\,
            I => \N__9498\
        );

    \I__2104\ : InMux
    port map (
            O => \N__9505\,
            I => \N__9495\
        );

    \I__2103\ : InMux
    port map (
            O => \N__9504\,
            I => \N__9492\
        );

    \I__2102\ : Span4Mux_h
    port map (
            O => \N__9501\,
            I => \N__9488\
        );

    \I__2101\ : LocalMux
    port map (
            O => \N__9498\,
            I => \N__9485\
        );

    \I__2100\ : LocalMux
    port map (
            O => \N__9495\,
            I => \N__9480\
        );

    \I__2099\ : LocalMux
    port map (
            O => \N__9492\,
            I => \N__9480\
        );

    \I__2098\ : InMux
    port map (
            O => \N__9491\,
            I => \N__9477\
        );

    \I__2097\ : Span4Mux_h
    port map (
            O => \N__9488\,
            I => \N__9474\
        );

    \I__2096\ : Span4Mux_v
    port map (
            O => \N__9485\,
            I => \N__9469\
        );

    \I__2095\ : Span4Mux_s3_v
    port map (
            O => \N__9480\,
            I => \N__9469\
        );

    \I__2094\ : LocalMux
    port map (
            O => \N__9477\,
            I => \N__9466\
        );

    \I__2093\ : Odrv4
    port map (
            O => \N__9474\,
            I => \I_DUT.U_4.fpga_m_retZ0Z_3\
        );

    \I__2092\ : Odrv4
    port map (
            O => \N__9469\,
            I => \I_DUT.U_4.fpga_m_retZ0Z_3\
        );

    \I__2091\ : Odrv4
    port map (
            O => \N__9466\,
            I => \I_DUT.U_4.fpga_m_retZ0Z_3\
        );

    \I__2090\ : InMux
    port map (
            O => \N__9459\,
            I => \N__9455\
        );

    \I__2089\ : CascadeMux
    port map (
            O => \N__9458\,
            I => \N__9452\
        );

    \I__2088\ : LocalMux
    port map (
            O => \N__9455\,
            I => \N__9448\
        );

    \I__2087\ : InMux
    port map (
            O => \N__9452\,
            I => \N__9445\
        );

    \I__2086\ : InMux
    port map (
            O => \N__9451\,
            I => \N__9440\
        );

    \I__2085\ : Span4Mux_v
    port map (
            O => \N__9448\,
            I => \N__9435\
        );

    \I__2084\ : LocalMux
    port map (
            O => \N__9445\,
            I => \N__9435\
        );

    \I__2083\ : InMux
    port map (
            O => \N__9444\,
            I => \N__9432\
        );

    \I__2082\ : CascadeMux
    port map (
            O => \N__9443\,
            I => \N__9429\
        );

    \I__2081\ : LocalMux
    port map (
            O => \N__9440\,
            I => \N__9426\
        );

    \I__2080\ : Span4Mux_v
    port map (
            O => \N__9435\,
            I => \N__9423\
        );

    \I__2079\ : LocalMux
    port map (
            O => \N__9432\,
            I => \N__9420\
        );

    \I__2078\ : InMux
    port map (
            O => \N__9429\,
            I => \N__9417\
        );

    \I__2077\ : Span12Mux_s7_v
    port map (
            O => \N__9426\,
            I => \N__9414\
        );

    \I__2076\ : Span4Mux_h
    port map (
            O => \N__9423\,
            I => \N__9411\
        );

    \I__2075\ : Span12Mux_h
    port map (
            O => \N__9420\,
            I => \N__9404\
        );

    \I__2074\ : LocalMux
    port map (
            O => \N__9417\,
            I => \N__9404\
        );

    \I__2073\ : Span12Mux_v
    port map (
            O => \N__9414\,
            I => \N__9404\
        );

    \I__2072\ : Odrv4
    port map (
            O => \N__9411\,
            I => \fpga_mosiZ0\
        );

    \I__2071\ : Odrv12
    port map (
            O => \N__9404\,
            I => \fpga_mosiZ0\
        );

    \I__2070\ : InMux
    port map (
            O => \N__9399\,
            I => \N__9395\
        );

    \I__2069\ : InMux
    port map (
            O => \N__9398\,
            I => \N__9392\
        );

    \I__2068\ : LocalMux
    port map (
            O => \N__9395\,
            I => \N__9389\
        );

    \I__2067\ : LocalMux
    port map (
            O => \N__9392\,
            I => \N__9386\
        );

    \I__2066\ : Span4Mux_v
    port map (
            O => \N__9389\,
            I => \N__9383\
        );

    \I__2065\ : Span12Mux_v
    port map (
            O => \N__9386\,
            I => \N__9379\
        );

    \I__2064\ : Span4Mux_h
    port map (
            O => \N__9383\,
            I => \N__9376\
        );

    \I__2063\ : InMux
    port map (
            O => \N__9382\,
            I => \N__9373\
        );

    \I__2062\ : Odrv12
    port map (
            O => \N__9379\,
            I => \I_DUT.fpga_m_ret_RNI15M5_0\
        );

    \I__2061\ : Odrv4
    port map (
            O => \N__9376\,
            I => \I_DUT.fpga_m_ret_RNI15M5_0\
        );

    \I__2060\ : LocalMux
    port map (
            O => \N__9373\,
            I => \I_DUT.fpga_m_ret_RNI15M5_0\
        );

    \I__2059\ : IoInMux
    port map (
            O => \N__9366\,
            I => \N__9363\
        );

    \I__2058\ : LocalMux
    port map (
            O => \N__9363\,
            I => \o_fram_sclk_obuf_0LegalizeSB_DFFNet\
        );

    \I__2057\ : InMux
    port map (
            O => \N__9360\,
            I => \N__9357\
        );

    \I__2056\ : LocalMux
    port map (
            O => \N__9357\,
            I => \I_DUT.Memory_15\
        );

    \I__2055\ : InMux
    port map (
            O => \N__9354\,
            I => \N__9351\
        );

    \I__2054\ : LocalMux
    port map (
            O => \N__9351\,
            I => \I_DUT.Memory_14\
        );

    \I__2053\ : InMux
    port map (
            O => \N__9348\,
            I => \N__9345\
        );

    \I__2052\ : LocalMux
    port map (
            O => \N__9345\,
            I => \I_DUT.U_13.count_memoryZ0Z_14\
        );

    \I__2051\ : InMux
    port map (
            O => \N__9342\,
            I => \N__9339\
        );

    \I__2050\ : LocalMux
    port map (
            O => \N__9339\,
            I => \N__9336\
        );

    \I__2049\ : Odrv4
    port map (
            O => \N__9336\,
            I => \I_DUT.U_13.count_memoryZ0Z_12\
        );

    \I__2048\ : InMux
    port map (
            O => \N__9333\,
            I => \N__9330\
        );

    \I__2047\ : LocalMux
    port map (
            O => \N__9330\,
            I => \I_DUT.Memory_13\
        );

    \I__2046\ : InMux
    port map (
            O => \N__9327\,
            I => \N__9324\
        );

    \I__2045\ : LocalMux
    port map (
            O => \N__9324\,
            I => \I_DUT.U_13.count_memoryZ0Z_13\
        );

    \I__2044\ : InMux
    port map (
            O => \N__9321\,
            I => \N__9318\
        );

    \I__2043\ : LocalMux
    port map (
            O => \N__9318\,
            I => \N__9314\
        );

    \I__2042\ : InMux
    port map (
            O => \N__9317\,
            I => \N__9311\
        );

    \I__2041\ : Odrv4
    port map (
            O => \N__9314\,
            I => \I_DUT.U_1.count_memoryZ0Z_17\
        );

    \I__2040\ : LocalMux
    port map (
            O => \N__9311\,
            I => \I_DUT.U_1.count_memoryZ0Z_17\
        );

    \I__2039\ : InMux
    port map (
            O => \N__9306\,
            I => \N__9303\
        );

    \I__2038\ : LocalMux
    port map (
            O => \N__9303\,
            I => \N__9299\
        );

    \I__2037\ : InMux
    port map (
            O => \N__9302\,
            I => \N__9296\
        );

    \I__2036\ : Odrv4
    port map (
            O => \N__9299\,
            I => \I_DUT.U_1.count_memoryZ0Z_18\
        );

    \I__2035\ : LocalMux
    port map (
            O => \N__9296\,
            I => \I_DUT.U_1.count_memoryZ0Z_18\
        );

    \I__2034\ : CEMux
    port map (
            O => \N__9291\,
            I => \N__9273\
        );

    \I__2033\ : CEMux
    port map (
            O => \N__9290\,
            I => \N__9273\
        );

    \I__2032\ : CEMux
    port map (
            O => \N__9289\,
            I => \N__9273\
        );

    \I__2031\ : CEMux
    port map (
            O => \N__9288\,
            I => \N__9273\
        );

    \I__2030\ : CEMux
    port map (
            O => \N__9287\,
            I => \N__9273\
        );

    \I__2029\ : CEMux
    port map (
            O => \N__9286\,
            I => \N__9273\
        );

    \I__2028\ : GlobalMux
    port map (
            O => \N__9273\,
            I => \N__9270\
        );

    \I__2027\ : gio2CtrlBuf
    port map (
            O => \N__9270\,
            I => \I_DUT.U_1.un13_count_pretrig_g\
        );

    \I__2026\ : IoInMux
    port map (
            O => \N__9267\,
            I => \N__9264\
        );

    \I__2025\ : LocalMux
    port map (
            O => \N__9264\,
            I => \o_adc_nsc_obufLegalizeSB_DFFNet\
        );

    \I__2024\ : IoInMux
    port map (
            O => \N__9261\,
            I => \N__9258\
        );

    \I__2023\ : LocalMux
    port map (
            O => \N__9258\,
            I => \o_adc_sclk_obufLegalizeSB_DFFNet\
        );

    \I__2022\ : IoInMux
    port map (
            O => \N__9255\,
            I => \N__9252\
        );

    \I__2021\ : LocalMux
    port map (
            O => \N__9252\,
            I => \o_meas_1mhz_obufLegalizeSB_DFFNet\
        );

    \I__2020\ : InMux
    port map (
            O => \N__9249\,
            I => \N__9245\
        );

    \I__2019\ : InMux
    port map (
            O => \N__9248\,
            I => \N__9242\
        );

    \I__2018\ : LocalMux
    port map (
            O => \N__9245\,
            I => \I_DUT.U_1.count_memoryZ0Z_13\
        );

    \I__2017\ : LocalMux
    port map (
            O => \N__9242\,
            I => \I_DUT.U_1.count_memoryZ0Z_13\
        );

    \I__2016\ : InMux
    port map (
            O => \N__9237\,
            I => \N__9234\
        );

    \I__2015\ : LocalMux
    port map (
            O => \N__9234\,
            I => \N__9231\
        );

    \I__2014\ : Odrv4
    port map (
            O => \N__9231\,
            I => \I_DUT.U_13.count_memoryZ0Z_5\
        );

    \I__2013\ : InMux
    port map (
            O => \N__9228\,
            I => \N__9225\
        );

    \I__2012\ : LocalMux
    port map (
            O => \N__9225\,
            I => \I_DUT.Memory_6\
        );

    \I__2011\ : InMux
    port map (
            O => \N__9222\,
            I => \N__9219\
        );

    \I__2010\ : LocalMux
    port map (
            O => \N__9219\,
            I => \I_DUT.Memory_8\
        );

    \I__2009\ : InMux
    port map (
            O => \N__9216\,
            I => \N__9213\
        );

    \I__2008\ : LocalMux
    port map (
            O => \N__9213\,
            I => \I_DUT.U_13.count_memoryZ0Z_6\
        );

    \I__2007\ : InMux
    port map (
            O => \N__9210\,
            I => \N__9207\
        );

    \I__2006\ : LocalMux
    port map (
            O => \N__9207\,
            I => \N__9204\
        );

    \I__2005\ : Odrv4
    port map (
            O => \N__9204\,
            I => \I_DUT.Memory_7\
        );

    \I__2004\ : InMux
    port map (
            O => \N__9201\,
            I => \N__9198\
        );

    \I__2003\ : LocalMux
    port map (
            O => \N__9198\,
            I => \I_DUT.U_13.count_memoryZ0Z_7\
        );

    \I__2002\ : InMux
    port map (
            O => \N__9195\,
            I => \N__9192\
        );

    \I__2001\ : LocalMux
    port map (
            O => \N__9192\,
            I => \I_DUT.Memory_11\
        );

    \I__2000\ : InMux
    port map (
            O => \N__9189\,
            I => \N__9186\
        );

    \I__1999\ : LocalMux
    port map (
            O => \N__9186\,
            I => \I_DUT.U_13.count_memoryZ0Z_8\
        );

    \I__1998\ : InMux
    port map (
            O => \N__9183\,
            I => \N__9180\
        );

    \I__1997\ : LocalMux
    port map (
            O => \N__9180\,
            I => \I_DUT.Memory_9\
        );

    \I__1996\ : InMux
    port map (
            O => \N__9177\,
            I => \N__9174\
        );

    \I__1995\ : LocalMux
    port map (
            O => \N__9174\,
            I => \I_DUT.U_13.count_memoryZ0Z_9\
        );

    \I__1994\ : InMux
    port map (
            O => \N__9171\,
            I => \N__9168\
        );

    \I__1993\ : LocalMux
    port map (
            O => \N__9168\,
            I => \I_DUT.Memory_10\
        );

    \I__1992\ : InMux
    port map (
            O => \N__9165\,
            I => \N__9162\
        );

    \I__1991\ : LocalMux
    port map (
            O => \N__9162\,
            I => \I_DUT.U_13.count_memoryZ0Z_10\
        );

    \I__1990\ : InMux
    port map (
            O => \N__9159\,
            I => \N__9156\
        );

    \I__1989\ : LocalMux
    port map (
            O => \N__9156\,
            I => \I_DUT.Memory_12\
        );

    \I__1988\ : InMux
    port map (
            O => \N__9153\,
            I => \N__9150\
        );

    \I__1987\ : LocalMux
    port map (
            O => \N__9150\,
            I => \I_DUT.U_13.count_memoryZ0Z_11\
        );

    \I__1986\ : InMux
    port map (
            O => \N__9147\,
            I => \N__9144\
        );

    \I__1985\ : LocalMux
    port map (
            O => \N__9144\,
            I => i_adc_sdo_c_1
        );

    \I__1984\ : InMux
    port map (
            O => \N__9141\,
            I => \N__9138\
        );

    \I__1983\ : LocalMux
    port map (
            O => \N__9138\,
            I => \N__9135\
        );

    \I__1982\ : Span12Mux_v
    port map (
            O => \N__9135\,
            I => \N__9132\
        );

    \I__1981\ : Odrv12
    port map (
            O => \N__9132\,
            I => \adc_sdoZ0Z_1\
        );

    \I__1980\ : InMux
    port map (
            O => \N__9129\,
            I => \N__9126\
        );

    \I__1979\ : LocalMux
    port map (
            O => \N__9126\,
            I => \I_DUT.U_13.count_memoryZ0Z_3\
        );

    \I__1978\ : InMux
    port map (
            O => \N__9123\,
            I => \N__9120\
        );

    \I__1977\ : LocalMux
    port map (
            O => \N__9120\,
            I => \I_DUT.Memory_4\
        );

    \I__1976\ : InMux
    port map (
            O => \N__9117\,
            I => \N__9114\
        );

    \I__1975\ : LocalMux
    port map (
            O => \N__9114\,
            I => \I_DUT.U_13.count_memoryZ0Z_4\
        );

    \I__1974\ : InMux
    port map (
            O => \N__9111\,
            I => \N__9107\
        );

    \I__1973\ : InMux
    port map (
            O => \N__9110\,
            I => \N__9104\
        );

    \I__1972\ : LocalMux
    port map (
            O => \N__9107\,
            I => \I_DUT.U_1.count_memoryZ0Z_7\
        );

    \I__1971\ : LocalMux
    port map (
            O => \N__9104\,
            I => \I_DUT.U_1.count_memoryZ0Z_7\
        );

    \I__1970\ : InMux
    port map (
            O => \N__9099\,
            I => \N__9095\
        );

    \I__1969\ : InMux
    port map (
            O => \N__9098\,
            I => \N__9092\
        );

    \I__1968\ : LocalMux
    port map (
            O => \N__9095\,
            I => \I_DUT.U_1.count_memoryZ0Z_5\
        );

    \I__1967\ : LocalMux
    port map (
            O => \N__9092\,
            I => \I_DUT.U_1.count_memoryZ0Z_5\
        );

    \I__1966\ : InMux
    port map (
            O => \N__9087\,
            I => \N__9084\
        );

    \I__1965\ : LocalMux
    port map (
            O => \N__9084\,
            I => \I_DUT.Memory_5\
        );

    \I__1964\ : InMux
    port map (
            O => \N__9081\,
            I => \N__9077\
        );

    \I__1963\ : InMux
    port map (
            O => \N__9080\,
            I => \N__9074\
        );

    \I__1962\ : LocalMux
    port map (
            O => \N__9077\,
            I => \I_DUT.U_1.count_memoryZ0Z_3\
        );

    \I__1961\ : LocalMux
    port map (
            O => \N__9074\,
            I => \I_DUT.U_1.count_memoryZ0Z_3\
        );

    \I__1960\ : InMux
    port map (
            O => \N__9069\,
            I => \N__9066\
        );

    \I__1959\ : LocalMux
    port map (
            O => \N__9066\,
            I => \I_DUT.Memory_3\
        );

    \I__1958\ : InMux
    port map (
            O => \N__9063\,
            I => \N__9059\
        );

    \I__1957\ : InMux
    port map (
            O => \N__9062\,
            I => \N__9056\
        );

    \I__1956\ : LocalMux
    port map (
            O => \N__9059\,
            I => \I_DUT.U_1.count_memoryZ0Z_15\
        );

    \I__1955\ : LocalMux
    port map (
            O => \N__9056\,
            I => \I_DUT.U_1.count_memoryZ0Z_15\
        );

    \I__1954\ : InMux
    port map (
            O => \N__9051\,
            I => \N__9047\
        );

    \I__1953\ : InMux
    port map (
            O => \N__9050\,
            I => \N__9044\
        );

    \I__1952\ : LocalMux
    port map (
            O => \N__9047\,
            I => \I_DUT.U_1.count_memoryZ0Z_8\
        );

    \I__1951\ : LocalMux
    port map (
            O => \N__9044\,
            I => \I_DUT.U_1.count_memoryZ0Z_8\
        );

    \I__1950\ : InMux
    port map (
            O => \N__9039\,
            I => \N__9035\
        );

    \I__1949\ : InMux
    port map (
            O => \N__9038\,
            I => \N__9032\
        );

    \I__1948\ : LocalMux
    port map (
            O => \N__9035\,
            I => \I_DUT.U_1.count_memoryZ0Z_14\
        );

    \I__1947\ : LocalMux
    port map (
            O => \N__9032\,
            I => \I_DUT.U_1.count_memoryZ0Z_14\
        );

    \I__1946\ : InMux
    port map (
            O => \N__9027\,
            I => \N__9023\
        );

    \I__1945\ : InMux
    port map (
            O => \N__9026\,
            I => \N__9020\
        );

    \I__1944\ : LocalMux
    port map (
            O => \N__9023\,
            I => \I_DUT.U_1.count_memoryZ0Z_6\
        );

    \I__1943\ : LocalMux
    port map (
            O => \N__9020\,
            I => \I_DUT.U_1.count_memoryZ0Z_6\
        );

    \I__1942\ : InMux
    port map (
            O => \N__9015\,
            I => \N__9011\
        );

    \I__1941\ : InMux
    port map (
            O => \N__9014\,
            I => \N__9008\
        );

    \I__1940\ : LocalMux
    port map (
            O => \N__9011\,
            I => \I_DUT.U_1.count_memoryZ0Z_16\
        );

    \I__1939\ : LocalMux
    port map (
            O => \N__9008\,
            I => \I_DUT.U_1.count_memoryZ0Z_16\
        );

    \I__1938\ : InMux
    port map (
            O => \N__9003\,
            I => \I_DUT.U_1.count_memory_cry_16\
        );

    \I__1937\ : InMux
    port map (
            O => \N__9000\,
            I => \N__8957\
        );

    \I__1936\ : InMux
    port map (
            O => \N__8999\,
            I => \N__8957\
        );

    \I__1935\ : InMux
    port map (
            O => \N__8998\,
            I => \N__8957\
        );

    \I__1934\ : InMux
    port map (
            O => \N__8997\,
            I => \N__8957\
        );

    \I__1933\ : InMux
    port map (
            O => \N__8996\,
            I => \N__8948\
        );

    \I__1932\ : InMux
    port map (
            O => \N__8995\,
            I => \N__8948\
        );

    \I__1931\ : InMux
    port map (
            O => \N__8994\,
            I => \N__8948\
        );

    \I__1930\ : InMux
    port map (
            O => \N__8993\,
            I => \N__8948\
        );

    \I__1929\ : InMux
    port map (
            O => \N__8992\,
            I => \N__8939\
        );

    \I__1928\ : InMux
    port map (
            O => \N__8991\,
            I => \N__8939\
        );

    \I__1927\ : InMux
    port map (
            O => \N__8990\,
            I => \N__8939\
        );

    \I__1926\ : InMux
    port map (
            O => \N__8989\,
            I => \N__8939\
        );

    \I__1925\ : InMux
    port map (
            O => \N__8988\,
            I => \N__8930\
        );

    \I__1924\ : InMux
    port map (
            O => \N__8987\,
            I => \N__8930\
        );

    \I__1923\ : InMux
    port map (
            O => \N__8986\,
            I => \N__8930\
        );

    \I__1922\ : InMux
    port map (
            O => \N__8985\,
            I => \N__8930\
        );

    \I__1921\ : InMux
    port map (
            O => \N__8984\,
            I => \N__8925\
        );

    \I__1920\ : InMux
    port map (
            O => \N__8983\,
            I => \N__8925\
        );

    \I__1919\ : InMux
    port map (
            O => \N__8982\,
            I => \N__8922\
        );

    \I__1918\ : InMux
    port map (
            O => \N__8981\,
            I => \N__8913\
        );

    \I__1917\ : InMux
    port map (
            O => \N__8980\,
            I => \N__8913\
        );

    \I__1916\ : InMux
    port map (
            O => \N__8979\,
            I => \N__8913\
        );

    \I__1915\ : InMux
    port map (
            O => \N__8978\,
            I => \N__8913\
        );

    \I__1914\ : InMux
    port map (
            O => \N__8977\,
            I => \N__8904\
        );

    \I__1913\ : InMux
    port map (
            O => \N__8976\,
            I => \N__8904\
        );

    \I__1912\ : InMux
    port map (
            O => \N__8975\,
            I => \N__8904\
        );

    \I__1911\ : InMux
    port map (
            O => \N__8974\,
            I => \N__8904\
        );

    \I__1910\ : InMux
    port map (
            O => \N__8973\,
            I => \N__8892\
        );

    \I__1909\ : InMux
    port map (
            O => \N__8972\,
            I => \N__8892\
        );

    \I__1908\ : InMux
    port map (
            O => \N__8971\,
            I => \N__8892\
        );

    \I__1907\ : InMux
    port map (
            O => \N__8970\,
            I => \N__8892\
        );

    \I__1906\ : InMux
    port map (
            O => \N__8969\,
            I => \N__8883\
        );

    \I__1905\ : InMux
    port map (
            O => \N__8968\,
            I => \N__8883\
        );

    \I__1904\ : InMux
    port map (
            O => \N__8967\,
            I => \N__8883\
        );

    \I__1903\ : InMux
    port map (
            O => \N__8966\,
            I => \N__8883\
        );

    \I__1902\ : LocalMux
    port map (
            O => \N__8957\,
            I => \N__8880\
        );

    \I__1901\ : LocalMux
    port map (
            O => \N__8948\,
            I => \N__8877\
        );

    \I__1900\ : LocalMux
    port map (
            O => \N__8939\,
            I => \N__8874\
        );

    \I__1899\ : LocalMux
    port map (
            O => \N__8930\,
            I => \N__8867\
        );

    \I__1898\ : LocalMux
    port map (
            O => \N__8925\,
            I => \N__8867\
        );

    \I__1897\ : LocalMux
    port map (
            O => \N__8922\,
            I => \N__8867\
        );

    \I__1896\ : LocalMux
    port map (
            O => \N__8913\,
            I => \N__8864\
        );

    \I__1895\ : LocalMux
    port map (
            O => \N__8904\,
            I => \N__8861\
        );

    \I__1894\ : InMux
    port map (
            O => \N__8903\,
            I => \N__8856\
        );

    \I__1893\ : InMux
    port map (
            O => \N__8902\,
            I => \N__8856\
        );

    \I__1892\ : InMux
    port map (
            O => \N__8901\,
            I => \N__8853\
        );

    \I__1891\ : LocalMux
    port map (
            O => \N__8892\,
            I => \N__8848\
        );

    \I__1890\ : LocalMux
    port map (
            O => \N__8883\,
            I => \N__8848\
        );

    \I__1889\ : Span4Mux_v
    port map (
            O => \N__8880\,
            I => \N__8839\
        );

    \I__1888\ : Span4Mux_v
    port map (
            O => \N__8877\,
            I => \N__8839\
        );

    \I__1887\ : Span4Mux_s3_h
    port map (
            O => \N__8874\,
            I => \N__8839\
        );

    \I__1886\ : Span4Mux_v
    port map (
            O => \N__8867\,
            I => \N__8839\
        );

    \I__1885\ : Span4Mux_h
    port map (
            O => \N__8864\,
            I => \N__8834\
        );

    \I__1884\ : Span4Mux_h
    port map (
            O => \N__8861\,
            I => \N__8834\
        );

    \I__1883\ : LocalMux
    port map (
            O => \N__8856\,
            I => \N__8829\
        );

    \I__1882\ : LocalMux
    port map (
            O => \N__8853\,
            I => \N__8829\
        );

    \I__1881\ : Span4Mux_h
    port map (
            O => \N__8848\,
            I => \N__8826\
        );

    \I__1880\ : Span4Mux_h
    port map (
            O => \N__8839\,
            I => \N__8823\
        );

    \I__1879\ : Sp12to4
    port map (
            O => \N__8834\,
            I => \N__8820\
        );

    \I__1878\ : Span4Mux_h
    port map (
            O => \N__8829\,
            I => \N__8817\
        );

    \I__1877\ : Span4Mux_v
    port map (
            O => \N__8826\,
            I => \N__8814\
        );

    \I__1876\ : Span4Mux_h
    port map (
            O => \N__8823\,
            I => \N__8811\
        );

    \I__1875\ : Span12Mux_s4_v
    port map (
            O => \N__8820\,
            I => \N__8806\
        );

    \I__1874\ : Sp12to4
    port map (
            O => \N__8817\,
            I => \N__8806\
        );

    \I__1873\ : Span4Mux_v
    port map (
            O => \N__8814\,
            I => \N__8803\
        );

    \I__1872\ : Odrv4
    port map (
            O => \N__8811\,
            I => \I_DUT.count_go_i\
        );

    \I__1871\ : Odrv12
    port map (
            O => \N__8806\,
            I => \I_DUT.count_go_i\
        );

    \I__1870\ : Odrv4
    port map (
            O => \N__8803\,
            I => \I_DUT.count_go_i\
        );

    \I__1869\ : InMux
    port map (
            O => \N__8796\,
            I => \I_DUT.U_1.count_memory_cry_17\
        );

    \I__1868\ : CEMux
    port map (
            O => \N__8793\,
            I => \N__8784\
        );

    \I__1867\ : CEMux
    port map (
            O => \N__8792\,
            I => \N__8784\
        );

    \I__1866\ : CEMux
    port map (
            O => \N__8791\,
            I => \N__8784\
        );

    \I__1865\ : GlobalMux
    port map (
            O => \N__8784\,
            I => \N__8781\
        );

    \I__1864\ : gio2CtrlBuf
    port map (
            O => \N__8781\,
            I => \I_DUT.U_1.N_22_g\
        );

    \I__1863\ : InMux
    port map (
            O => \N__8778\,
            I => \N__8775\
        );

    \I__1862\ : LocalMux
    port map (
            O => \N__8775\,
            I => \N__8771\
        );

    \I__1861\ : InMux
    port map (
            O => \N__8774\,
            I => \N__8768\
        );

    \I__1860\ : Odrv4
    port map (
            O => \N__8771\,
            I => \I_DUT.U_1.count_memoryZ0Z_12\
        );

    \I__1859\ : LocalMux
    port map (
            O => \N__8768\,
            I => \I_DUT.U_1.count_memoryZ0Z_12\
        );

    \I__1858\ : InMux
    port map (
            O => \N__8763\,
            I => \N__8760\
        );

    \I__1857\ : LocalMux
    port map (
            O => \N__8760\,
            I => \N__8756\
        );

    \I__1856\ : InMux
    port map (
            O => \N__8759\,
            I => \N__8753\
        );

    \I__1855\ : Odrv4
    port map (
            O => \N__8756\,
            I => \I_DUT.U_1.count_memoryZ0Z_9\
        );

    \I__1854\ : LocalMux
    port map (
            O => \N__8753\,
            I => \I_DUT.U_1.count_memoryZ0Z_9\
        );

    \I__1853\ : InMux
    port map (
            O => \N__8748\,
            I => \N__8745\
        );

    \I__1852\ : LocalMux
    port map (
            O => \N__8745\,
            I => \N__8741\
        );

    \I__1851\ : InMux
    port map (
            O => \N__8744\,
            I => \N__8738\
        );

    \I__1850\ : Odrv4
    port map (
            O => \N__8741\,
            I => \I_DUT.U_1.count_memoryZ0Z_11\
        );

    \I__1849\ : LocalMux
    port map (
            O => \N__8738\,
            I => \I_DUT.U_1.count_memoryZ0Z_11\
        );

    \I__1848\ : InMux
    port map (
            O => \N__8733\,
            I => \N__8730\
        );

    \I__1847\ : LocalMux
    port map (
            O => \N__8730\,
            I => \N__8726\
        );

    \I__1846\ : InMux
    port map (
            O => \N__8729\,
            I => \N__8723\
        );

    \I__1845\ : Odrv4
    port map (
            O => \N__8726\,
            I => \I_DUT.U_1.count_memoryZ0Z_10\
        );

    \I__1844\ : LocalMux
    port map (
            O => \N__8723\,
            I => \I_DUT.U_1.count_memoryZ0Z_10\
        );

    \I__1843\ : InMux
    port map (
            O => \N__8718\,
            I => \N__8715\
        );

    \I__1842\ : LocalMux
    port map (
            O => \N__8715\,
            I => \N__8712\
        );

    \I__1841\ : Span4Mux_s0_v
    port map (
            O => \N__8712\,
            I => \N__8709\
        );

    \I__1840\ : Odrv4
    port map (
            O => \N__8709\,
            I => \I_DUT.U_13.count_memoryZ0Z_1\
        );

    \I__1839\ : InMux
    port map (
            O => \N__8706\,
            I => \N__8703\
        );

    \I__1838\ : LocalMux
    port map (
            O => \N__8703\,
            I => \I_DUT.Memory_2\
        );

    \I__1837\ : InMux
    port map (
            O => \N__8700\,
            I => \N__8697\
        );

    \I__1836\ : LocalMux
    port map (
            O => \N__8697\,
            I => \I_DUT.U_13.count_memoryZ0Z_2\
        );

    \I__1835\ : InMux
    port map (
            O => \N__8694\,
            I => \bfn_14_3_0_\
        );

    \I__1834\ : InMux
    port map (
            O => \N__8691\,
            I => \I_DUT.U_1.count_memory_cry_8\
        );

    \I__1833\ : InMux
    port map (
            O => \N__8688\,
            I => \I_DUT.U_1.count_memory_cry_9\
        );

    \I__1832\ : InMux
    port map (
            O => \N__8685\,
            I => \I_DUT.U_1.count_memory_cry_10\
        );

    \I__1831\ : InMux
    port map (
            O => \N__8682\,
            I => \I_DUT.U_1.count_memory_cry_11\
        );

    \I__1830\ : InMux
    port map (
            O => \N__8679\,
            I => \I_DUT.U_1.count_memory_cry_12\
        );

    \I__1829\ : InMux
    port map (
            O => \N__8676\,
            I => \I_DUT.U_1.count_memory_cry_13\
        );

    \I__1828\ : InMux
    port map (
            O => \N__8673\,
            I => \I_DUT.U_1.count_memory_cry_14\
        );

    \I__1827\ : InMux
    port map (
            O => \N__8670\,
            I => \bfn_14_4_0_\
        );

    \I__1826\ : InMux
    port map (
            O => \N__8667\,
            I => \N__8663\
        );

    \I__1825\ : InMux
    port map (
            O => \N__8666\,
            I => \N__8660\
        );

    \I__1824\ : LocalMux
    port map (
            O => \N__8663\,
            I => \I_DUT.U_1.count_memoryZ0Z_0\
        );

    \I__1823\ : LocalMux
    port map (
            O => \N__8660\,
            I => \I_DUT.U_1.count_memoryZ0Z_0\
        );

    \I__1822\ : InMux
    port map (
            O => \N__8655\,
            I => \bfn_14_2_0_\
        );

    \I__1821\ : InMux
    port map (
            O => \N__8652\,
            I => \N__8648\
        );

    \I__1820\ : InMux
    port map (
            O => \N__8651\,
            I => \N__8645\
        );

    \I__1819\ : LocalMux
    port map (
            O => \N__8648\,
            I => \I_DUT.U_1.count_memoryZ0Z_1\
        );

    \I__1818\ : LocalMux
    port map (
            O => \N__8645\,
            I => \I_DUT.U_1.count_memoryZ0Z_1\
        );

    \I__1817\ : InMux
    port map (
            O => \N__8640\,
            I => \I_DUT.U_1.count_memory_cry_0\
        );

    \I__1816\ : InMux
    port map (
            O => \N__8637\,
            I => \N__8633\
        );

    \I__1815\ : InMux
    port map (
            O => \N__8636\,
            I => \N__8630\
        );

    \I__1814\ : LocalMux
    port map (
            O => \N__8633\,
            I => \I_DUT.U_1.count_memoryZ0Z_2\
        );

    \I__1813\ : LocalMux
    port map (
            O => \N__8630\,
            I => \I_DUT.U_1.count_memoryZ0Z_2\
        );

    \I__1812\ : InMux
    port map (
            O => \N__8625\,
            I => \I_DUT.U_1.count_memory_cry_1\
        );

    \I__1811\ : InMux
    port map (
            O => \N__8622\,
            I => \I_DUT.U_1.count_memory_cry_2\
        );

    \I__1810\ : InMux
    port map (
            O => \N__8619\,
            I => \N__8615\
        );

    \I__1809\ : InMux
    port map (
            O => \N__8618\,
            I => \N__8612\
        );

    \I__1808\ : LocalMux
    port map (
            O => \N__8615\,
            I => \I_DUT.U_1.count_memoryZ0Z_4\
        );

    \I__1807\ : LocalMux
    port map (
            O => \N__8612\,
            I => \I_DUT.U_1.count_memoryZ0Z_4\
        );

    \I__1806\ : InMux
    port map (
            O => \N__8607\,
            I => \I_DUT.U_1.count_memory_cry_3\
        );

    \I__1805\ : InMux
    port map (
            O => \N__8604\,
            I => \I_DUT.U_1.count_memory_cry_4\
        );

    \I__1804\ : InMux
    port map (
            O => \N__8601\,
            I => \I_DUT.U_1.count_memory_cry_5\
        );

    \I__1803\ : InMux
    port map (
            O => \N__8598\,
            I => \I_DUT.U_1.count_memory_cry_6\
        );

    \I__1802\ : InMux
    port map (
            O => \N__8595\,
            I => \N__8591\
        );

    \I__1801\ : CascadeMux
    port map (
            O => \N__8594\,
            I => \N__8588\
        );

    \I__1800\ : LocalMux
    port map (
            O => \N__8591\,
            I => \N__8585\
        );

    \I__1799\ : InMux
    port map (
            O => \N__8588\,
            I => \N__8582\
        );

    \I__1798\ : Span4Mux_s2_v
    port map (
            O => \N__8585\,
            I => \N__8579\
        );

    \I__1797\ : LocalMux
    port map (
            O => \N__8582\,
            I => \I_DUT.U_1.Trigg_in\
        );

    \I__1796\ : Odrv4
    port map (
            O => \N__8579\,
            I => \I_DUT.U_1.Trigg_in\
        );

    \I__1795\ : CascadeMux
    port map (
            O => \N__8574\,
            I => \N__8570\
        );

    \I__1794\ : IoInMux
    port map (
            O => \N__8573\,
            I => \N__8564\
        );

    \I__1793\ : InMux
    port map (
            O => \N__8570\,
            I => \N__8561\
        );

    \I__1792\ : InMux
    port map (
            O => \N__8569\,
            I => \N__8555\
        );

    \I__1791\ : InMux
    port map (
            O => \N__8568\,
            I => \N__8555\
        );

    \I__1790\ : CascadeMux
    port map (
            O => \N__8567\,
            I => \N__8551\
        );

    \I__1789\ : LocalMux
    port map (
            O => \N__8564\,
            I => \N__8547\
        );

    \I__1788\ : LocalMux
    port map (
            O => \N__8561\,
            I => \N__8544\
        );

    \I__1787\ : InMux
    port map (
            O => \N__8560\,
            I => \N__8541\
        );

    \I__1786\ : LocalMux
    port map (
            O => \N__8555\,
            I => \N__8537\
        );

    \I__1785\ : InMux
    port map (
            O => \N__8554\,
            I => \N__8534\
        );

    \I__1784\ : InMux
    port map (
            O => \N__8551\,
            I => \N__8531\
        );

    \I__1783\ : InMux
    port map (
            O => \N__8550\,
            I => \N__8527\
        );

    \I__1782\ : IoSpan4Mux
    port map (
            O => \N__8547\,
            I => \N__8524\
        );

    \I__1781\ : Span4Mux_s3_v
    port map (
            O => \N__8544\,
            I => \N__8521\
        );

    \I__1780\ : LocalMux
    port map (
            O => \N__8541\,
            I => \N__8518\
        );

    \I__1779\ : InMux
    port map (
            O => \N__8540\,
            I => \N__8515\
        );

    \I__1778\ : Span4Mux_v
    port map (
            O => \N__8537\,
            I => \N__8512\
        );

    \I__1777\ : LocalMux
    port map (
            O => \N__8534\,
            I => \N__8507\
        );

    \I__1776\ : LocalMux
    port map (
            O => \N__8531\,
            I => \N__8507\
        );

    \I__1775\ : InMux
    port map (
            O => \N__8530\,
            I => \N__8503\
        );

    \I__1774\ : LocalMux
    port map (
            O => \N__8527\,
            I => \N__8500\
        );

    \I__1773\ : Span4Mux_s3_v
    port map (
            O => \N__8524\,
            I => \N__8493\
        );

    \I__1772\ : Span4Mux_h
    port map (
            O => \N__8521\,
            I => \N__8493\
        );

    \I__1771\ : Span4Mux_s3_v
    port map (
            O => \N__8518\,
            I => \N__8493\
        );

    \I__1770\ : LocalMux
    port map (
            O => \N__8515\,
            I => \N__8490\
        );

    \I__1769\ : Span4Mux_h
    port map (
            O => \N__8512\,
            I => \N__8487\
        );

    \I__1768\ : Span4Mux_v
    port map (
            O => \N__8507\,
            I => \N__8484\
        );

    \I__1767\ : InMux
    port map (
            O => \N__8506\,
            I => \N__8481\
        );

    \I__1766\ : LocalMux
    port map (
            O => \N__8503\,
            I => \N__8472\
        );

    \I__1765\ : Span4Mux_v
    port map (
            O => \N__8500\,
            I => \N__8472\
        );

    \I__1764\ : Span4Mux_v
    port map (
            O => \N__8493\,
            I => \N__8472\
        );

    \I__1763\ : Span4Mux_v
    port map (
            O => \N__8490\,
            I => \N__8472\
        );

    \I__1762\ : Odrv4
    port map (
            O => \N__8487\,
            I => acq_done_o
        );

    \I__1761\ : Odrv4
    port map (
            O => \N__8484\,
            I => acq_done_o
        );

    \I__1760\ : LocalMux
    port map (
            O => \N__8481\,
            I => acq_done_o
        );

    \I__1759\ : Odrv4
    port map (
            O => \N__8472\,
            I => acq_done_o
        );

    \I__1758\ : InMux
    port map (
            O => \N__8463\,
            I => \N__8460\
        );

    \I__1757\ : LocalMux
    port map (
            O => \N__8460\,
            I => \N__8457\
        );

    \I__1756\ : Span4Mux_v
    port map (
            O => \N__8457\,
            I => \N__8454\
        );

    \I__1755\ : Span4Mux_h
    port map (
            O => \N__8454\,
            I => \N__8449\
        );

    \I__1754\ : InMux
    port map (
            O => \N__8453\,
            I => \N__8446\
        );

    \I__1753\ : InMux
    port map (
            O => \N__8452\,
            I => \N__8443\
        );

    \I__1752\ : Span4Mux_h
    port map (
            O => \N__8449\,
            I => \N__8440\
        );

    \I__1751\ : LocalMux
    port map (
            O => \N__8446\,
            I => \I_DUT.U_1.un3_go_0_N_2_THRU_CO\
        );

    \I__1750\ : LocalMux
    port map (
            O => \N__8443\,
            I => \I_DUT.U_1.un3_go_0_N_2_THRU_CO\
        );

    \I__1749\ : Odrv4
    port map (
            O => \N__8440\,
            I => \I_DUT.U_1.un3_go_0_N_2_THRU_CO\
        );

    \I__1748\ : IoInMux
    port map (
            O => \N__8433\,
            I => \N__8430\
        );

    \I__1747\ : LocalMux
    port map (
            O => \N__8430\,
            I => \I_DUT.U_1.N_24\
        );

    \I__1746\ : InMux
    port map (
            O => \N__8427\,
            I => \N__8424\
        );

    \I__1745\ : LocalMux
    port map (
            O => \N__8424\,
            I => \I_DUT.U_13.count_memoryZ0Z_0\
        );

    \I__1744\ : InMux
    port map (
            O => \N__8421\,
            I => \N__8418\
        );

    \I__1743\ : LocalMux
    port map (
            O => \N__8418\,
            I => \I_DUT.Memory_0\
        );

    \I__1742\ : InMux
    port map (
            O => \N__8415\,
            I => \N__8412\
        );

    \I__1741\ : LocalMux
    port map (
            O => \N__8412\,
            I => \I_DUT.Memory_1\
        );

    \I__1740\ : InMux
    port map (
            O => \N__8409\,
            I => \N__8406\
        );

    \I__1739\ : LocalMux
    port map (
            O => \N__8406\,
            I => \N__8403\
        );

    \I__1738\ : Odrv4
    port map (
            O => \N__8403\,
            I => \I_DUT.U_13.un1_m_i_4\
        );

    \I__1737\ : InMux
    port map (
            O => \N__8400\,
            I => \N__8397\
        );

    \I__1736\ : LocalMux
    port map (
            O => \N__8397\,
            I => \N__8389\
        );

    \I__1735\ : InMux
    port map (
            O => \N__8396\,
            I => \N__8386\
        );

    \I__1734\ : InMux
    port map (
            O => \N__8395\,
            I => \N__8383\
        );

    \I__1733\ : InMux
    port map (
            O => \N__8394\,
            I => \N__8380\
        );

    \I__1732\ : InMux
    port map (
            O => \N__8393\,
            I => \N__8377\
        );

    \I__1731\ : InMux
    port map (
            O => \N__8392\,
            I => \N__8374\
        );

    \I__1730\ : Span4Mux_v
    port map (
            O => \N__8389\,
            I => \N__8366\
        );

    \I__1729\ : LocalMux
    port map (
            O => \N__8386\,
            I => \N__8366\
        );

    \I__1728\ : LocalMux
    port map (
            O => \N__8383\,
            I => \N__8366\
        );

    \I__1727\ : LocalMux
    port map (
            O => \N__8380\,
            I => \N__8361\
        );

    \I__1726\ : LocalMux
    port map (
            O => \N__8377\,
            I => \N__8356\
        );

    \I__1725\ : LocalMux
    port map (
            O => \N__8374\,
            I => \N__8356\
        );

    \I__1724\ : InMux
    port map (
            O => \N__8373\,
            I => \N__8352\
        );

    \I__1723\ : Span4Mux_v
    port map (
            O => \N__8366\,
            I => \N__8349\
        );

    \I__1722\ : InMux
    port map (
            O => \N__8365\,
            I => \N__8346\
        );

    \I__1721\ : InMux
    port map (
            O => \N__8364\,
            I => \N__8341\
        );

    \I__1720\ : Span4Mux_v
    port map (
            O => \N__8361\,
            I => \N__8336\
        );

    \I__1719\ : Span4Mux_v
    port map (
            O => \N__8356\,
            I => \N__8336\
        );

    \I__1718\ : InMux
    port map (
            O => \N__8355\,
            I => \N__8333\
        );

    \I__1717\ : LocalMux
    port map (
            O => \N__8352\,
            I => \N__8326\
        );

    \I__1716\ : Span4Mux_v
    port map (
            O => \N__8349\,
            I => \N__8323\
        );

    \I__1715\ : LocalMux
    port map (
            O => \N__8346\,
            I => \N__8320\
        );

    \I__1714\ : InMux
    port map (
            O => \N__8345\,
            I => \N__8315\
        );

    \I__1713\ : InMux
    port map (
            O => \N__8344\,
            I => \N__8315\
        );

    \I__1712\ : LocalMux
    port map (
            O => \N__8341\,
            I => \N__8307\
        );

    \I__1711\ : Sp12to4
    port map (
            O => \N__8336\,
            I => \N__8307\
        );

    \I__1710\ : LocalMux
    port map (
            O => \N__8333\,
            I => \N__8307\
        );

    \I__1709\ : InMux
    port map (
            O => \N__8332\,
            I => \N__8304\
        );

    \I__1708\ : InMux
    port map (
            O => \N__8331\,
            I => \N__8301\
        );

    \I__1707\ : InMux
    port map (
            O => \N__8330\,
            I => \N__8296\
        );

    \I__1706\ : InMux
    port map (
            O => \N__8329\,
            I => \N__8296\
        );

    \I__1705\ : Span4Mux_v
    port map (
            O => \N__8326\,
            I => \N__8293\
        );

    \I__1704\ : Span4Mux_h
    port map (
            O => \N__8323\,
            I => \N__8288\
        );

    \I__1703\ : Span4Mux_v
    port map (
            O => \N__8320\,
            I => \N__8288\
        );

    \I__1702\ : LocalMux
    port map (
            O => \N__8315\,
            I => \N__8285\
        );

    \I__1701\ : InMux
    port map (
            O => \N__8314\,
            I => \N__8282\
        );

    \I__1700\ : Span12Mux_h
    port map (
            O => \N__8307\,
            I => \N__8272\
        );

    \I__1699\ : LocalMux
    port map (
            O => \N__8304\,
            I => \N__8272\
        );

    \I__1698\ : LocalMux
    port map (
            O => \N__8301\,
            I => \N__8272\
        );

    \I__1697\ : LocalMux
    port map (
            O => \N__8296\,
            I => \N__8272\
        );

    \I__1696\ : Sp12to4
    port map (
            O => \N__8293\,
            I => \N__8269\
        );

    \I__1695\ : Sp12to4
    port map (
            O => \N__8288\,
            I => \N__8266\
        );

    \I__1694\ : Span4Mux_h
    port map (
            O => \N__8285\,
            I => \N__8261\
        );

    \I__1693\ : LocalMux
    port map (
            O => \N__8282\,
            I => \N__8261\
        );

    \I__1692\ : InMux
    port map (
            O => \N__8281\,
            I => \N__8258\
        );

    \I__1691\ : Span12Mux_v
    port map (
            O => \N__8272\,
            I => \N__8255\
        );

    \I__1690\ : Span12Mux_h
    port map (
            O => \N__8269\,
            I => \N__8246\
        );

    \I__1689\ : Span12Mux_s8_h
    port map (
            O => \N__8266\,
            I => \N__8246\
        );

    \I__1688\ : Sp12to4
    port map (
            O => \N__8261\,
            I => \N__8246\
        );

    \I__1687\ : LocalMux
    port map (
            O => \N__8258\,
            I => \N__8246\
        );

    \I__1686\ : Odrv12
    port map (
            O => \N__8255\,
            I => i_fpga_m_c_3
        );

    \I__1685\ : Odrv12
    port map (
            O => \N__8246\,
            I => i_fpga_m_c_3
        );

    \I__1684\ : InMux
    port map (
            O => \N__8241\,
            I => \N__8233\
        );

    \I__1683\ : InMux
    port map (
            O => \N__8240\,
            I => \N__8233\
        );

    \I__1682\ : InMux
    port map (
            O => \N__8239\,
            I => \N__8228\
        );

    \I__1681\ : InMux
    port map (
            O => \N__8238\,
            I => \N__8228\
        );

    \I__1680\ : LocalMux
    port map (
            O => \N__8233\,
            I => \N__8222\
        );

    \I__1679\ : LocalMux
    port map (
            O => \N__8228\,
            I => \N__8222\
        );

    \I__1678\ : InMux
    port map (
            O => \N__8227\,
            I => \N__8219\
        );

    \I__1677\ : Span4Mux_v
    port map (
            O => \N__8222\,
            I => \N__8216\
        );

    \I__1676\ : LocalMux
    port map (
            O => \N__8219\,
            I => \N__8213\
        );

    \I__1675\ : Odrv4
    port map (
            O => \N__8216\,
            I => \I_DUT.U_5.adc_clock11_i_0\
        );

    \I__1674\ : Odrv4
    port map (
            O => \N__8213\,
            I => \I_DUT.U_5.adc_clock11_i_0\
        );

    \I__1673\ : IoInMux
    port map (
            O => \N__8208\,
            I => \N__8205\
        );

    \I__1672\ : LocalMux
    port map (
            O => \N__8205\,
            I => \N__8202\
        );

    \I__1671\ : Span4Mux_s1_v
    port map (
            O => \N__8202\,
            I => \N__8199\
        );

    \I__1670\ : Sp12to4
    port map (
            O => \N__8199\,
            I => \N__8195\
        );

    \I__1669\ : InMux
    port map (
            O => \N__8198\,
            I => \N__8192\
        );

    \I__1668\ : Span12Mux_h
    port map (
            O => \N__8195\,
            I => \N__8189\
        );

    \I__1667\ : LocalMux
    port map (
            O => \N__8192\,
            I => \N__8186\
        );

    \I__1666\ : Odrv12
    port map (
            O => \N__8189\,
            I => o_meas_1mhz_c
        );

    \I__1665\ : Odrv12
    port map (
            O => \N__8186\,
            I => o_meas_1mhz_c
        );

    \I__1664\ : InMux
    port map (
            O => \N__8181\,
            I => \N__8177\
        );

    \I__1663\ : InMux
    port map (
            O => \N__8180\,
            I => \N__8174\
        );

    \I__1662\ : LocalMux
    port map (
            O => \N__8177\,
            I => \N__8169\
        );

    \I__1661\ : LocalMux
    port map (
            O => \N__8174\,
            I => \N__8166\
        );

    \I__1660\ : InMux
    port map (
            O => \N__8173\,
            I => \N__8163\
        );

    \I__1659\ : CascadeMux
    port map (
            O => \N__8172\,
            I => \N__8160\
        );

    \I__1658\ : Span4Mux_s2_v
    port map (
            O => \N__8169\,
            I => \N__8152\
        );

    \I__1657\ : Span4Mux_s2_v
    port map (
            O => \N__8166\,
            I => \N__8152\
        );

    \I__1656\ : LocalMux
    port map (
            O => \N__8163\,
            I => \N__8152\
        );

    \I__1655\ : InMux
    port map (
            O => \N__8160\,
            I => \N__8149\
        );

    \I__1654\ : InMux
    port map (
            O => \N__8159\,
            I => \N__8145\
        );

    \I__1653\ : Span4Mux_h
    port map (
            O => \N__8152\,
            I => \N__8140\
        );

    \I__1652\ : LocalMux
    port map (
            O => \N__8149\,
            I => \N__8140\
        );

    \I__1651\ : InMux
    port map (
            O => \N__8148\,
            I => \N__8137\
        );

    \I__1650\ : LocalMux
    port map (
            O => \N__8145\,
            I => \N__8132\
        );

    \I__1649\ : Span4Mux_v
    port map (
            O => \N__8140\,
            I => \N__8127\
        );

    \I__1648\ : LocalMux
    port map (
            O => \N__8137\,
            I => \N__8127\
        );

    \I__1647\ : InMux
    port map (
            O => \N__8136\,
            I => \N__8124\
        );

    \I__1646\ : CascadeMux
    port map (
            O => \N__8135\,
            I => \N__8121\
        );

    \I__1645\ : Span4Mux_h
    port map (
            O => \N__8132\,
            I => \N__8117\
        );

    \I__1644\ : Span4Mux_v
    port map (
            O => \N__8127\,
            I => \N__8114\
        );

    \I__1643\ : LocalMux
    port map (
            O => \N__8124\,
            I => \N__8111\
        );

    \I__1642\ : InMux
    port map (
            O => \N__8121\,
            I => \N__8106\
        );

    \I__1641\ : InMux
    port map (
            O => \N__8120\,
            I => \N__8106\
        );

    \I__1640\ : Odrv4
    port map (
            O => \N__8117\,
            I => \I_DUT.m_i_0_i_1\
        );

    \I__1639\ : Odrv4
    port map (
            O => \N__8114\,
            I => \I_DUT.m_i_0_i_1\
        );

    \I__1638\ : Odrv4
    port map (
            O => \N__8111\,
            I => \I_DUT.m_i_0_i_1\
        );

    \I__1637\ : LocalMux
    port map (
            O => \N__8106\,
            I => \I_DUT.m_i_0_i_1\
        );

    \I__1636\ : IoInMux
    port map (
            O => \N__8097\,
            I => \N__8094\
        );

    \I__1635\ : LocalMux
    port map (
            O => \N__8094\,
            I => \N__8091\
        );

    \I__1634\ : Span4Mux_s0_v
    port map (
            O => \N__8091\,
            I => \N__8088\
        );

    \I__1633\ : Span4Mux_v
    port map (
            O => \N__8088\,
            I => \N__8085\
        );

    \I__1632\ : Span4Mux_v
    port map (
            O => \N__8085\,
            I => \N__8082\
        );

    \I__1631\ : Odrv4
    port map (
            O => \N__8082\,
            I => o_adc_nsc_c
        );

    \I__1630\ : InMux
    port map (
            O => \N__8079\,
            I => \N__8075\
        );

    \I__1629\ : InMux
    port map (
            O => \N__8078\,
            I => \N__8072\
        );

    \I__1628\ : LocalMux
    port map (
            O => \N__8075\,
            I => \N__8066\
        );

    \I__1627\ : LocalMux
    port map (
            O => \N__8072\,
            I => \N__8066\
        );

    \I__1626\ : InMux
    port map (
            O => \N__8071\,
            I => \N__8063\
        );

    \I__1625\ : Span4Mux_v
    port map (
            O => \N__8066\,
            I => \N__8060\
        );

    \I__1624\ : LocalMux
    port map (
            O => \N__8063\,
            I => \I_DUT.stmClk_old\
        );

    \I__1623\ : Odrv4
    port map (
            O => \N__8060\,
            I => \I_DUT.stmClk_old\
        );

    \I__1622\ : IoInMux
    port map (
            O => \N__8055\,
            I => \N__8052\
        );

    \I__1621\ : LocalMux
    port map (
            O => \N__8052\,
            I => \N__8049\
        );

    \I__1620\ : Odrv12
    port map (
            O => \N__8049\,
            I => \I_DUT.U_13.MISO_OUT_1_sqmuxa_i\
        );

    \I__1619\ : InMux
    port map (
            O => \N__8046\,
            I => \N__8042\
        );

    \I__1618\ : InMux
    port map (
            O => \N__8045\,
            I => \N__8039\
        );

    \I__1617\ : LocalMux
    port map (
            O => \N__8042\,
            I => \N__8035\
        );

    \I__1616\ : LocalMux
    port map (
            O => \N__8039\,
            I => \N__8032\
        );

    \I__1615\ : InMux
    port map (
            O => \N__8038\,
            I => \N__8029\
        );

    \I__1614\ : Span4Mux_v
    port map (
            O => \N__8035\,
            I => \N__8026\
        );

    \I__1613\ : Sp12to4
    port map (
            O => \N__8032\,
            I => \N__8021\
        );

    \I__1612\ : LocalMux
    port map (
            O => \N__8029\,
            I => \N__8021\
        );

    \I__1611\ : Odrv4
    port map (
            O => \N__8026\,
            I => \I_DUT.stmClk_old_rst\
        );

    \I__1610\ : Odrv12
    port map (
            O => \N__8021\,
            I => \I_DUT.stmClk_old_rst\
        );

    \I__1609\ : InMux
    port map (
            O => \N__8016\,
            I => \N__8012\
        );

    \I__1608\ : CascadeMux
    port map (
            O => \N__8015\,
            I => \N__8006\
        );

    \I__1607\ : LocalMux
    port map (
            O => \N__8012\,
            I => \N__8003\
        );

    \I__1606\ : CascadeMux
    port map (
            O => \N__8011\,
            I => \N__8000\
        );

    \I__1605\ : InMux
    port map (
            O => \N__8010\,
            I => \N__7992\
        );

    \I__1604\ : InMux
    port map (
            O => \N__8009\,
            I => \N__7992\
        );

    \I__1603\ : InMux
    port map (
            O => \N__8006\,
            I => \N__7989\
        );

    \I__1602\ : Span4Mux_v
    port map (
            O => \N__8003\,
            I => \N__7986\
        );

    \I__1601\ : InMux
    port map (
            O => \N__8000\,
            I => \N__7983\
        );

    \I__1600\ : IoInMux
    port map (
            O => \N__7999\,
            I => \N__7980\
        );

    \I__1599\ : InMux
    port map (
            O => \N__7998\,
            I => \N__7977\
        );

    \I__1598\ : InMux
    port map (
            O => \N__7997\,
            I => \N__7974\
        );

    \I__1597\ : LocalMux
    port map (
            O => \N__7992\,
            I => \N__7971\
        );

    \I__1596\ : LocalMux
    port map (
            O => \N__7989\,
            I => \N__7964\
        );

    \I__1595\ : Span4Mux_v
    port map (
            O => \N__7986\,
            I => \N__7964\
        );

    \I__1594\ : LocalMux
    port map (
            O => \N__7983\,
            I => \N__7964\
        );

    \I__1593\ : LocalMux
    port map (
            O => \N__7980\,
            I => \N__7961\
        );

    \I__1592\ : LocalMux
    port map (
            O => \N__7977\,
            I => \N__7956\
        );

    \I__1591\ : LocalMux
    port map (
            O => \N__7974\,
            I => \N__7956\
        );

    \I__1590\ : Span4Mux_v
    port map (
            O => \N__7971\,
            I => \N__7953\
        );

    \I__1589\ : Span4Mux_h
    port map (
            O => \N__7964\,
            I => \N__7950\
        );

    \I__1588\ : Span12Mux_s3_v
    port map (
            O => \N__7961\,
            I => \N__7947\
        );

    \I__1587\ : Span12Mux_v
    port map (
            O => \N__7956\,
            I => \N__7944\
        );

    \I__1586\ : Span4Mux_h
    port map (
            O => \N__7953\,
            I => \N__7941\
        );

    \I__1585\ : Span4Mux_h
    port map (
            O => \N__7950\,
            I => \N__7938\
        );

    \I__1584\ : Odrv12
    port map (
            O => \N__7947\,
            I => cal_o_2
        );

    \I__1583\ : Odrv12
    port map (
            O => \N__7944\,
            I => cal_o_2
        );

    \I__1582\ : Odrv4
    port map (
            O => \N__7941\,
            I => cal_o_2
        );

    \I__1581\ : Odrv4
    port map (
            O => \N__7938\,
            I => cal_o_2
        );

    \I__1580\ : SRMux
    port map (
            O => \N__7929\,
            I => \N__7926\
        );

    \I__1579\ : LocalMux
    port map (
            O => \N__7926\,
            I => \I_DUT.U_12.stmClk_old_rst_RNOZ0\
        );

    \I__1578\ : CascadeMux
    port map (
            O => \N__7923\,
            I => \N__7916\
        );

    \I__1577\ : InMux
    port map (
            O => \N__7922\,
            I => \N__7898\
        );

    \I__1576\ : InMux
    port map (
            O => \N__7921\,
            I => \N__7895\
        );

    \I__1575\ : InMux
    port map (
            O => \N__7920\,
            I => \N__7891\
        );

    \I__1574\ : InMux
    port map (
            O => \N__7919\,
            I => \N__7888\
        );

    \I__1573\ : InMux
    port map (
            O => \N__7916\,
            I => \N__7883\
        );

    \I__1572\ : InMux
    port map (
            O => \N__7915\,
            I => \N__7883\
        );

    \I__1571\ : CascadeMux
    port map (
            O => \N__7914\,
            I => \N__7879\
        );

    \I__1570\ : CascadeMux
    port map (
            O => \N__7913\,
            I => \N__7874\
        );

    \I__1569\ : InMux
    port map (
            O => \N__7912\,
            I => \N__7870\
        );

    \I__1568\ : InMux
    port map (
            O => \N__7911\,
            I => \N__7867\
        );

    \I__1567\ : InMux
    port map (
            O => \N__7910\,
            I => \N__7860\
        );

    \I__1566\ : InMux
    port map (
            O => \N__7909\,
            I => \N__7860\
        );

    \I__1565\ : InMux
    port map (
            O => \N__7908\,
            I => \N__7860\
        );

    \I__1564\ : InMux
    port map (
            O => \N__7907\,
            I => \N__7849\
        );

    \I__1563\ : InMux
    port map (
            O => \N__7906\,
            I => \N__7849\
        );

    \I__1562\ : InMux
    port map (
            O => \N__7905\,
            I => \N__7849\
        );

    \I__1561\ : InMux
    port map (
            O => \N__7904\,
            I => \N__7849\
        );

    \I__1560\ : InMux
    port map (
            O => \N__7903\,
            I => \N__7849\
        );

    \I__1559\ : CascadeMux
    port map (
            O => \N__7902\,
            I => \N__7846\
        );

    \I__1558\ : CascadeMux
    port map (
            O => \N__7901\,
            I => \N__7842\
        );

    \I__1557\ : LocalMux
    port map (
            O => \N__7898\,
            I => \N__7839\
        );

    \I__1556\ : LocalMux
    port map (
            O => \N__7895\,
            I => \N__7836\
        );

    \I__1555\ : InMux
    port map (
            O => \N__7894\,
            I => \N__7833\
        );

    \I__1554\ : LocalMux
    port map (
            O => \N__7891\,
            I => \N__7826\
        );

    \I__1553\ : LocalMux
    port map (
            O => \N__7888\,
            I => \N__7826\
        );

    \I__1552\ : LocalMux
    port map (
            O => \N__7883\,
            I => \N__7823\
        );

    \I__1551\ : InMux
    port map (
            O => \N__7882\,
            I => \N__7812\
        );

    \I__1550\ : InMux
    port map (
            O => \N__7879\,
            I => \N__7812\
        );

    \I__1549\ : InMux
    port map (
            O => \N__7878\,
            I => \N__7812\
        );

    \I__1548\ : InMux
    port map (
            O => \N__7877\,
            I => \N__7812\
        );

    \I__1547\ : InMux
    port map (
            O => \N__7874\,
            I => \N__7812\
        );

    \I__1546\ : CascadeMux
    port map (
            O => \N__7873\,
            I => \N__7809\
        );

    \I__1545\ : LocalMux
    port map (
            O => \N__7870\,
            I => \N__7805\
        );

    \I__1544\ : LocalMux
    port map (
            O => \N__7867\,
            I => \N__7798\
        );

    \I__1543\ : LocalMux
    port map (
            O => \N__7860\,
            I => \N__7798\
        );

    \I__1542\ : LocalMux
    port map (
            O => \N__7849\,
            I => \N__7798\
        );

    \I__1541\ : InMux
    port map (
            O => \N__7846\,
            I => \N__7791\
        );

    \I__1540\ : InMux
    port map (
            O => \N__7845\,
            I => \N__7791\
        );

    \I__1539\ : InMux
    port map (
            O => \N__7842\,
            I => \N__7791\
        );

    \I__1538\ : Span4Mux_h
    port map (
            O => \N__7839\,
            I => \N__7788\
        );

    \I__1537\ : Span4Mux_v
    port map (
            O => \N__7836\,
            I => \N__7783\
        );

    \I__1536\ : LocalMux
    port map (
            O => \N__7833\,
            I => \N__7783\
        );

    \I__1535\ : InMux
    port map (
            O => \N__7832\,
            I => \N__7778\
        );

    \I__1534\ : InMux
    port map (
            O => \N__7831\,
            I => \N__7778\
        );

    \I__1533\ : Span4Mux_v
    port map (
            O => \N__7826\,
            I => \N__7771\
        );

    \I__1532\ : Span4Mux_v
    port map (
            O => \N__7823\,
            I => \N__7771\
        );

    \I__1531\ : LocalMux
    port map (
            O => \N__7812\,
            I => \N__7771\
        );

    \I__1530\ : InMux
    port map (
            O => \N__7809\,
            I => \N__7766\
        );

    \I__1529\ : InMux
    port map (
            O => \N__7808\,
            I => \N__7766\
        );

    \I__1528\ : Span12Mux_s9_v
    port map (
            O => \N__7805\,
            I => \N__7757\
        );

    \I__1527\ : Span12Mux_s9_v
    port map (
            O => \N__7798\,
            I => \N__7757\
        );

    \I__1526\ : LocalMux
    port map (
            O => \N__7791\,
            I => \N__7757\
        );

    \I__1525\ : Span4Mux_v
    port map (
            O => \N__7788\,
            I => \N__7750\
        );

    \I__1524\ : Span4Mux_h
    port map (
            O => \N__7783\,
            I => \N__7750\
        );

    \I__1523\ : LocalMux
    port map (
            O => \N__7778\,
            I => \N__7750\
        );

    \I__1522\ : Span4Mux_h
    port map (
            O => \N__7771\,
            I => \N__7745\
        );

    \I__1521\ : LocalMux
    port map (
            O => \N__7766\,
            I => \N__7745\
        );

    \I__1520\ : InMux
    port map (
            O => \N__7765\,
            I => \N__7742\
        );

    \I__1519\ : InMux
    port map (
            O => \N__7764\,
            I => \N__7739\
        );

    \I__1518\ : Odrv12
    port map (
            O => \N__7757\,
            I => \CONSTANT_ONE_NET\
        );

    \I__1517\ : Odrv4
    port map (
            O => \N__7750\,
            I => \CONSTANT_ONE_NET\
        );

    \I__1516\ : Odrv4
    port map (
            O => \N__7745\,
            I => \CONSTANT_ONE_NET\
        );

    \I__1515\ : LocalMux
    port map (
            O => \N__7742\,
            I => \CONSTANT_ONE_NET\
        );

    \I__1514\ : LocalMux
    port map (
            O => \N__7739\,
            I => \CONSTANT_ONE_NET\
        );

    \I__1513\ : InMux
    port map (
            O => \N__7728\,
            I => \N__7725\
        );

    \I__1512\ : LocalMux
    port map (
            O => \N__7725\,
            I => \N__7722\
        );

    \I__1511\ : Odrv4
    port map (
            O => \N__7722\,
            I => \iRST_rst_n_c\
        );

    \I__1510\ : SRMux
    port map (
            O => \N__7719\,
            I => \N__7716\
        );

    \I__1509\ : LocalMux
    port map (
            O => \N__7716\,
            I => \N__7713\
        );

    \I__1508\ : Odrv4
    port map (
            O => \N__7713\,
            I => \I6.iRST_rst_n_c_i\
        );

    \I__1507\ : InMux
    port map (
            O => \N__7710\,
            I => \N__7707\
        );

    \I__1506\ : LocalMux
    port map (
            O => \N__7707\,
            I => \N__7704\
        );

    \I__1505\ : Span4Mux_h
    port map (
            O => \N__7704\,
            I => \N__7700\
        );

    \I__1504\ : InMux
    port map (
            O => \N__7703\,
            I => \N__7697\
        );

    \I__1503\ : Span4Mux_v
    port map (
            O => \N__7700\,
            I => \N__7693\
        );

    \I__1502\ : LocalMux
    port map (
            O => \N__7697\,
            I => \N__7690\
        );

    \I__1501\ : InMux
    port map (
            O => \N__7696\,
            I => \N__7687\
        );

    \I__1500\ : Odrv4
    port map (
            O => \N__7693\,
            I => \lsig_resetSynch_n\
        );

    \I__1499\ : Odrv12
    port map (
            O => \N__7690\,
            I => \lsig_resetSynch_n\
        );

    \I__1498\ : LocalMux
    port map (
            O => \N__7687\,
            I => \lsig_resetSynch_n\
        );

    \I__1497\ : IoInMux
    port map (
            O => \N__7680\,
            I => \N__7677\
        );

    \I__1496\ : LocalMux
    port map (
            O => \N__7677\,
            I => \N__7674\
        );

    \I__1495\ : Odrv4
    port map (
            O => \N__7674\,
            I => \I6.lsig_resetSynch_n_i\
        );

    \I__1494\ : IoInMux
    port map (
            O => \N__7671\,
            I => \N__7668\
        );

    \I__1493\ : LocalMux
    port map (
            O => \N__7668\,
            I => \o_sclk_meas_obufLegalizeSB_DFFNet\
        );

    \I__1492\ : InMux
    port map (
            O => \N__7665\,
            I => \N__7658\
        );

    \I__1491\ : InMux
    port map (
            O => \N__7664\,
            I => \N__7655\
        );

    \I__1490\ : InMux
    port map (
            O => \N__7663\,
            I => \N__7652\
        );

    \I__1489\ : InMux
    port map (
            O => \N__7662\,
            I => \N__7649\
        );

    \I__1488\ : InMux
    port map (
            O => \N__7661\,
            I => \N__7645\
        );

    \I__1487\ : LocalMux
    port map (
            O => \N__7658\,
            I => \N__7642\
        );

    \I__1486\ : LocalMux
    port map (
            O => \N__7655\,
            I => \N__7639\
        );

    \I__1485\ : LocalMux
    port map (
            O => \N__7652\,
            I => \N__7636\
        );

    \I__1484\ : LocalMux
    port map (
            O => \N__7649\,
            I => \N__7632\
        );

    \I__1483\ : InMux
    port map (
            O => \N__7648\,
            I => \N__7629\
        );

    \I__1482\ : LocalMux
    port map (
            O => \N__7645\,
            I => \N__7626\
        );

    \I__1481\ : Span4Mux_v
    port map (
            O => \N__7642\,
            I => \N__7623\
        );

    \I__1480\ : Span4Mux_s2_v
    port map (
            O => \N__7639\,
            I => \N__7620\
        );

    \I__1479\ : Span4Mux_v
    port map (
            O => \N__7636\,
            I => \N__7617\
        );

    \I__1478\ : InMux
    port map (
            O => \N__7635\,
            I => \N__7614\
        );

    \I__1477\ : Span4Mux_s2_v
    port map (
            O => \N__7632\,
            I => \N__7611\
        );

    \I__1476\ : LocalMux
    port map (
            O => \N__7629\,
            I => \N__7608\
        );

    \I__1475\ : Span4Mux_v
    port map (
            O => \N__7626\,
            I => \N__7601\
        );

    \I__1474\ : Span4Mux_h
    port map (
            O => \N__7623\,
            I => \N__7601\
        );

    \I__1473\ : Span4Mux_v
    port map (
            O => \N__7620\,
            I => \N__7601\
        );

    \I__1472\ : Span4Mux_h
    port map (
            O => \N__7617\,
            I => \N__7594\
        );

    \I__1471\ : LocalMux
    port map (
            O => \N__7614\,
            I => \N__7594\
        );

    \I__1470\ : Span4Mux_v
    port map (
            O => \N__7611\,
            I => \N__7594\
        );

    \I__1469\ : Odrv4
    port map (
            O => \N__7608\,
            I => \I_DUT.count_go\
        );

    \I__1468\ : Odrv4
    port map (
            O => \N__7601\,
            I => \I_DUT.count_go\
        );

    \I__1467\ : Odrv4
    port map (
            O => \N__7594\,
            I => \I_DUT.count_go\
        );

    \I__1466\ : CascadeMux
    port map (
            O => \N__7587\,
            I => \I_DUT.U_5.fpga_m_ret_5_RNIL0EZ0Z3_cascade_\
        );

    \I__1465\ : CascadeMux
    port map (
            O => \N__7584\,
            I => \N__7581\
        );

    \I__1464\ : InMux
    port map (
            O => \N__7581\,
            I => \N__7574\
        );

    \I__1463\ : InMux
    port map (
            O => \N__7580\,
            I => \N__7574\
        );

    \I__1462\ : InMux
    port map (
            O => \N__7579\,
            I => \N__7571\
        );

    \I__1461\ : LocalMux
    port map (
            O => \N__7574\,
            I => \I_DUT.fpga_m_2_ret_RNIIIGK_0\
        );

    \I__1460\ : LocalMux
    port map (
            O => \N__7571\,
            I => \I_DUT.fpga_m_2_ret_RNIIIGK_0\
        );

    \I__1459\ : InMux
    port map (
            O => \N__7566\,
            I => \N__7563\
        );

    \I__1458\ : LocalMux
    port map (
            O => \N__7563\,
            I => \I_DUT.U_5.FRAM_SDI_1_2\
        );

    \I__1457\ : IoInMux
    port map (
            O => \N__7560\,
            I => \N__7557\
        );

    \I__1456\ : LocalMux
    port map (
            O => \N__7557\,
            I => \N__7554\
        );

    \I__1455\ : Span4Mux_s2_v
    port map (
            O => \N__7554\,
            I => \N__7551\
        );

    \I__1454\ : Span4Mux_h
    port map (
            O => \N__7551\,
            I => \N__7547\
        );

    \I__1453\ : InMux
    port map (
            O => \N__7550\,
            I => \N__7544\
        );

    \I__1452\ : Odrv4
    port map (
            O => \N__7547\,
            I => \fpga_m_0_ret_4_RNIDV2F_0\
        );

    \I__1451\ : LocalMux
    port map (
            O => \N__7544\,
            I => \fpga_m_0_ret_4_RNIDV2F_0\
        );

    \I__1450\ : CascadeMux
    port map (
            O => \N__7539\,
            I => \N__7536\
        );

    \I__1449\ : InMux
    port map (
            O => \N__7536\,
            I => \N__7532\
        );

    \I__1448\ : InMux
    port map (
            O => \N__7535\,
            I => \N__7529\
        );

    \I__1447\ : LocalMux
    port map (
            O => \N__7532\,
            I => \N__7525\
        );

    \I__1446\ : LocalMux
    port map (
            O => \N__7529\,
            I => \N__7522\
        );

    \I__1445\ : InMux
    port map (
            O => \N__7528\,
            I => \N__7519\
        );

    \I__1444\ : Odrv4
    port map (
            O => \N__7525\,
            I => \I_DUT.fpga_m_1_ret_RNIHEAG_0\
        );

    \I__1443\ : Odrv4
    port map (
            O => \N__7522\,
            I => \I_DUT.fpga_m_1_ret_RNIHEAG_0\
        );

    \I__1442\ : LocalMux
    port map (
            O => \N__7519\,
            I => \I_DUT.fpga_m_1_ret_RNIHEAG_0\
        );

    \I__1441\ : InMux
    port map (
            O => \N__7512\,
            I => \N__7509\
        );

    \I__1440\ : LocalMux
    port map (
            O => \N__7509\,
            I => \I_DUT.U_5.fpga_m_ret_5_RNIN2EZ0Z3\
        );

    \I__1439\ : CascadeMux
    port map (
            O => \N__7506\,
            I => \I_DUT.U_5.FRAM_SDI_1_3_cascade_\
        );

    \I__1438\ : IoInMux
    port map (
            O => \N__7503\,
            I => \N__7500\
        );

    \I__1437\ : LocalMux
    port map (
            O => \N__7500\,
            I => \N__7497\
        );

    \I__1436\ : Span4Mux_s2_v
    port map (
            O => \N__7497\,
            I => \N__7494\
        );

    \I__1435\ : Span4Mux_h
    port map (
            O => \N__7494\,
            I => \N__7491\
        );

    \I__1434\ : Span4Mux_h
    port map (
            O => \N__7491\,
            I => \N__7487\
        );

    \I__1433\ : InMux
    port map (
            O => \N__7490\,
            I => \N__7484\
        );

    \I__1432\ : Odrv4
    port map (
            O => \N__7487\,
            I => \fpga_m_0_ret_4_RNIE03F_0\
        );

    \I__1431\ : LocalMux
    port map (
            O => \N__7484\,
            I => \fpga_m_0_ret_4_RNIE03F_0\
        );

    \I__1430\ : InMux
    port map (
            O => \N__7479\,
            I => \N__7476\
        );

    \I__1429\ : LocalMux
    port map (
            O => \N__7476\,
            I => \N__7473\
        );

    \I__1428\ : Odrv4
    port map (
            O => \N__7473\,
            I => \I_DUT.U_5.FRAM_SDI_1_1\
        );

    \I__1427\ : IoInMux
    port map (
            O => \N__7470\,
            I => \N__7467\
        );

    \I__1426\ : LocalMux
    port map (
            O => \N__7467\,
            I => \N__7464\
        );

    \I__1425\ : Span4Mux_s3_v
    port map (
            O => \N__7464\,
            I => \N__7461\
        );

    \I__1424\ : Span4Mux_h
    port map (
            O => \N__7461\,
            I => \N__7457\
        );

    \I__1423\ : InMux
    port map (
            O => \N__7460\,
            I => \N__7454\
        );

    \I__1422\ : Odrv4
    port map (
            O => \N__7457\,
            I => \fpga_m_0_ret_4_RNICU2F_0\
        );

    \I__1421\ : LocalMux
    port map (
            O => \N__7454\,
            I => \fpga_m_0_ret_4_RNICU2F_0\
        );

    \I__1420\ : InMux
    port map (
            O => \N__7449\,
            I => \N__7446\
        );

    \I__1419\ : LocalMux
    port map (
            O => \N__7446\,
            I => \N__7439\
        );

    \I__1418\ : InMux
    port map (
            O => \N__7445\,
            I => \N__7436\
        );

    \I__1417\ : InMux
    port map (
            O => \N__7444\,
            I => \N__7433\
        );

    \I__1416\ : InMux
    port map (
            O => \N__7443\,
            I => \N__7428\
        );

    \I__1415\ : InMux
    port map (
            O => \N__7442\,
            I => \N__7428\
        );

    \I__1414\ : Span4Mux_v
    port map (
            O => \N__7439\,
            I => \N__7420\
        );

    \I__1413\ : LocalMux
    port map (
            O => \N__7436\,
            I => \N__7420\
        );

    \I__1412\ : LocalMux
    port map (
            O => \N__7433\,
            I => \N__7420\
        );

    \I__1411\ : LocalMux
    port map (
            O => \N__7428\,
            I => \N__7417\
        );

    \I__1410\ : InMux
    port map (
            O => \N__7427\,
            I => \N__7414\
        );

    \I__1409\ : Span4Mux_v
    port map (
            O => \N__7420\,
            I => \N__7411\
        );

    \I__1408\ : Span12Mux_h
    port map (
            O => \N__7417\,
            I => \N__7406\
        );

    \I__1407\ : LocalMux
    port map (
            O => \N__7414\,
            I => \N__7406\
        );

    \I__1406\ : Odrv4
    port map (
            O => \N__7411\,
            I => \I_DUT.U_5.fr_clock7_i_0\
        );

    \I__1405\ : Odrv12
    port map (
            O => \N__7406\,
            I => \I_DUT.U_5.fr_clock7_i_0\
        );

    \I__1404\ : CascadeMux
    port map (
            O => \N__7401\,
            I => \N__7394\
        );

    \I__1403\ : CascadeMux
    port map (
            O => \N__7400\,
            I => \N__7390\
        );

    \I__1402\ : InMux
    port map (
            O => \N__7399\,
            I => \N__7383\
        );

    \I__1401\ : InMux
    port map (
            O => \N__7398\,
            I => \N__7383\
        );

    \I__1400\ : InMux
    port map (
            O => \N__7397\,
            I => \N__7383\
        );

    \I__1399\ : InMux
    port map (
            O => \N__7394\,
            I => \N__7378\
        );

    \I__1398\ : InMux
    port map (
            O => \N__7393\,
            I => \N__7375\
        );

    \I__1397\ : InMux
    port map (
            O => \N__7390\,
            I => \N__7372\
        );

    \I__1396\ : LocalMux
    port map (
            O => \N__7383\,
            I => \N__7368\
        );

    \I__1395\ : InMux
    port map (
            O => \N__7382\,
            I => \N__7365\
        );

    \I__1394\ : InMux
    port map (
            O => \N__7381\,
            I => \N__7362\
        );

    \I__1393\ : LocalMux
    port map (
            O => \N__7378\,
            I => \N__7359\
        );

    \I__1392\ : LocalMux
    port map (
            O => \N__7375\,
            I => \N__7354\
        );

    \I__1391\ : LocalMux
    port map (
            O => \N__7372\,
            I => \N__7354\
        );

    \I__1390\ : InMux
    port map (
            O => \N__7371\,
            I => \N__7351\
        );

    \I__1389\ : Span4Mux_s3_v
    port map (
            O => \N__7368\,
            I => \N__7344\
        );

    \I__1388\ : LocalMux
    port map (
            O => \N__7365\,
            I => \N__7344\
        );

    \I__1387\ : LocalMux
    port map (
            O => \N__7362\,
            I => \N__7344\
        );

    \I__1386\ : Span4Mux_s2_v
    port map (
            O => \N__7359\,
            I => \N__7339\
        );

    \I__1385\ : Span4Mux_h
    port map (
            O => \N__7354\,
            I => \N__7339\
        );

    \I__1384\ : LocalMux
    port map (
            O => \N__7351\,
            I => \N__7336\
        );

    \I__1383\ : Span4Mux_h
    port map (
            O => \N__7344\,
            I => \N__7333\
        );

    \I__1382\ : Span4Mux_v
    port map (
            O => \N__7339\,
            I => \N__7328\
        );

    \I__1381\ : Span4Mux_v
    port map (
            O => \N__7336\,
            I => \N__7328\
        );

    \I__1380\ : Odrv4
    port map (
            O => \N__7333\,
            I => \I_DUT.U_5.fr_clock7_i_0_i_1\
        );

    \I__1379\ : Odrv4
    port map (
            O => \N__7328\,
            I => \I_DUT.U_5.fr_clock7_i_0_i_1\
        );

    \I__1378\ : CascadeMux
    port map (
            O => \N__7323\,
            I => \I_DUT.U_5.fpga_m_ret_5_RNIKVDZ0Z3_cascade_\
        );

    \I__1377\ : InMux
    port map (
            O => \N__7320\,
            I => \N__7314\
        );

    \I__1376\ : InMux
    port map (
            O => \N__7319\,
            I => \N__7314\
        );

    \I__1375\ : LocalMux
    port map (
            O => \N__7314\,
            I => \N__7310\
        );

    \I__1374\ : InMux
    port map (
            O => \N__7313\,
            I => \N__7307\
        );

    \I__1373\ : Odrv4
    port map (
            O => \N__7310\,
            I => \I_DUT.fpga_m_ret_6_RNIM2D7_0\
        );

    \I__1372\ : LocalMux
    port map (
            O => \N__7307\,
            I => \I_DUT.fpga_m_ret_6_RNIM2D7_0\
        );

    \I__1371\ : CascadeMux
    port map (
            O => \N__7302\,
            I => \I_DUT.U_5.FRAM_SDI_1_0_cascade_\
        );

    \I__1370\ : CascadeMux
    port map (
            O => \N__7299\,
            I => \N__7294\
        );

    \I__1369\ : CascadeMux
    port map (
            O => \N__7298\,
            I => \N__7289\
        );

    \I__1368\ : InMux
    port map (
            O => \N__7297\,
            I => \N__7284\
        );

    \I__1367\ : InMux
    port map (
            O => \N__7294\,
            I => \N__7284\
        );

    \I__1366\ : CascadeMux
    port map (
            O => \N__7293\,
            I => \N__7281\
        );

    \I__1365\ : InMux
    port map (
            O => \N__7292\,
            I => \N__7275\
        );

    \I__1364\ : InMux
    port map (
            O => \N__7289\,
            I => \N__7275\
        );

    \I__1363\ : LocalMux
    port map (
            O => \N__7284\,
            I => \N__7272\
        );

    \I__1362\ : InMux
    port map (
            O => \N__7281\,
            I => \N__7267\
        );

    \I__1361\ : InMux
    port map (
            O => \N__7280\,
            I => \N__7267\
        );

    \I__1360\ : LocalMux
    port map (
            O => \N__7275\,
            I => \N__7262\
        );

    \I__1359\ : Span4Mux_s3_v
    port map (
            O => \N__7272\,
            I => \N__7257\
        );

    \I__1358\ : LocalMux
    port map (
            O => \N__7267\,
            I => \N__7257\
        );

    \I__1357\ : InMux
    port map (
            O => \N__7266\,
            I => \N__7252\
        );

    \I__1356\ : InMux
    port map (
            O => \N__7265\,
            I => \N__7252\
        );

    \I__1355\ : Odrv4
    port map (
            O => \N__7262\,
            I => \I_DUT.U_5.N_62_i_0\
        );

    \I__1354\ : Odrv4
    port map (
            O => \N__7257\,
            I => \I_DUT.U_5.N_62_i_0\
        );

    \I__1353\ : LocalMux
    port map (
            O => \N__7252\,
            I => \I_DUT.U_5.N_62_i_0\
        );

    \I__1352\ : IoInMux
    port map (
            O => \N__7245\,
            I => \N__7242\
        );

    \I__1351\ : LocalMux
    port map (
            O => \N__7242\,
            I => \N__7239\
        );

    \I__1350\ : Span4Mux_s3_v
    port map (
            O => \N__7239\,
            I => \N__7236\
        );

    \I__1349\ : Span4Mux_h
    port map (
            O => \N__7236\,
            I => \N__7232\
        );

    \I__1348\ : InMux
    port map (
            O => \N__7235\,
            I => \N__7229\
        );

    \I__1347\ : Odrv4
    port map (
            O => \N__7232\,
            I => \fpga_m_0_ret_4_RNIBT2F_0\
        );

    \I__1346\ : LocalMux
    port map (
            O => \N__7229\,
            I => \fpga_m_0_ret_4_RNIBT2F_0\
        );

    \I__1345\ : InMux
    port map (
            O => \N__7224\,
            I => \I_DUT.U_2.count_cry_2\
        );

    \I__1344\ : InMux
    port map (
            O => \N__7221\,
            I => \I_DUT.U_2.count_cry_3\
        );

    \I__1343\ : InMux
    port map (
            O => \N__7218\,
            I => \N__7214\
        );

    \I__1342\ : InMux
    port map (
            O => \N__7217\,
            I => \N__7211\
        );

    \I__1341\ : LocalMux
    port map (
            O => \N__7214\,
            I => \I_DUT.U_2.countZ0Z_4\
        );

    \I__1340\ : LocalMux
    port map (
            O => \N__7211\,
            I => \I_DUT.U_2.countZ0Z_4\
        );

    \I__1339\ : IoInMux
    port map (
            O => \N__7206\,
            I => \N__7203\
        );

    \I__1338\ : LocalMux
    port map (
            O => \N__7203\,
            I => \N__7198\
        );

    \I__1337\ : InMux
    port map (
            O => \N__7202\,
            I => \N__7195\
        );

    \I__1336\ : InMux
    port map (
            O => \N__7201\,
            I => \N__7192\
        );

    \I__1335\ : Span4Mux_s2_v
    port map (
            O => \N__7198\,
            I => \N__7188\
        );

    \I__1334\ : LocalMux
    port map (
            O => \N__7195\,
            I => \N__7185\
        );

    \I__1333\ : LocalMux
    port map (
            O => \N__7192\,
            I => \N__7181\
        );

    \I__1332\ : InMux
    port map (
            O => \N__7191\,
            I => \N__7178\
        );

    \I__1331\ : Span4Mux_h
    port map (
            O => \N__7188\,
            I => \N__7173\
        );

    \I__1330\ : Span4Mux_h
    port map (
            O => \N__7185\,
            I => \N__7170\
        );

    \I__1329\ : InMux
    port map (
            O => \N__7184\,
            I => \N__7167\
        );

    \I__1328\ : Span12Mux_h
    port map (
            O => \N__7181\,
            I => \N__7162\
        );

    \I__1327\ : LocalMux
    port map (
            O => \N__7178\,
            I => \N__7162\
        );

    \I__1326\ : InMux
    port map (
            O => \N__7177\,
            I => \N__7157\
        );

    \I__1325\ : InMux
    port map (
            O => \N__7176\,
            I => \N__7157\
        );

    \I__1324\ : Odrv4
    port map (
            O => \N__7173\,
            I => o_sclk_meas_c
        );

    \I__1323\ : Odrv4
    port map (
            O => \N__7170\,
            I => o_sclk_meas_c
        );

    \I__1322\ : LocalMux
    port map (
            O => \N__7167\,
            I => o_sclk_meas_c
        );

    \I__1321\ : Odrv12
    port map (
            O => \N__7162\,
            I => o_sclk_meas_c
        );

    \I__1320\ : LocalMux
    port map (
            O => \N__7157\,
            I => o_sclk_meas_c
        );

    \I__1319\ : InMux
    port map (
            O => \N__7146\,
            I => \N__7143\
        );

    \I__1318\ : LocalMux
    port map (
            O => \N__7143\,
            I => \N__7136\
        );

    \I__1317\ : CascadeMux
    port map (
            O => \N__7142\,
            I => \N__7131\
        );

    \I__1316\ : CascadeMux
    port map (
            O => \N__7141\,
            I => \N__7128\
        );

    \I__1315\ : InMux
    port map (
            O => \N__7140\,
            I => \N__7122\
        );

    \I__1314\ : InMux
    port map (
            O => \N__7139\,
            I => \N__7119\
        );

    \I__1313\ : Span4Mux_h
    port map (
            O => \N__7136\,
            I => \N__7116\
        );

    \I__1312\ : InMux
    port map (
            O => \N__7135\,
            I => \N__7113\
        );

    \I__1311\ : InMux
    port map (
            O => \N__7134\,
            I => \N__7110\
        );

    \I__1310\ : InMux
    port map (
            O => \N__7131\,
            I => \N__7103\
        );

    \I__1309\ : InMux
    port map (
            O => \N__7128\,
            I => \N__7103\
        );

    \I__1308\ : InMux
    port map (
            O => \N__7127\,
            I => \N__7103\
        );

    \I__1307\ : InMux
    port map (
            O => \N__7126\,
            I => \N__7098\
        );

    \I__1306\ : InMux
    port map (
            O => \N__7125\,
            I => \N__7098\
        );

    \I__1305\ : LocalMux
    port map (
            O => \N__7122\,
            I => \I_DUT.U_6.countZ0Z_4\
        );

    \I__1304\ : LocalMux
    port map (
            O => \N__7119\,
            I => \I_DUT.U_6.countZ0Z_4\
        );

    \I__1303\ : Odrv4
    port map (
            O => \N__7116\,
            I => \I_DUT.U_6.countZ0Z_4\
        );

    \I__1302\ : LocalMux
    port map (
            O => \N__7113\,
            I => \I_DUT.U_6.countZ0Z_4\
        );

    \I__1301\ : LocalMux
    port map (
            O => \N__7110\,
            I => \I_DUT.U_6.countZ0Z_4\
        );

    \I__1300\ : LocalMux
    port map (
            O => \N__7103\,
            I => \I_DUT.U_6.countZ0Z_4\
        );

    \I__1299\ : LocalMux
    port map (
            O => \N__7098\,
            I => \I_DUT.U_6.countZ0Z_4\
        );

    \I__1298\ : InMux
    port map (
            O => \N__7083\,
            I => \N__7080\
        );

    \I__1297\ : LocalMux
    port map (
            O => \N__7080\,
            I => \N__7077\
        );

    \I__1296\ : Span4Mux_v
    port map (
            O => \N__7077\,
            I => \N__7067\
        );

    \I__1295\ : InMux
    port map (
            O => \N__7076\,
            I => \N__7064\
        );

    \I__1294\ : InMux
    port map (
            O => \N__7075\,
            I => \N__7061\
        );

    \I__1293\ : InMux
    port map (
            O => \N__7074\,
            I => \N__7054\
        );

    \I__1292\ : InMux
    port map (
            O => \N__7073\,
            I => \N__7054\
        );

    \I__1291\ : InMux
    port map (
            O => \N__7072\,
            I => \N__7054\
        );

    \I__1290\ : InMux
    port map (
            O => \N__7071\,
            I => \N__7049\
        );

    \I__1289\ : InMux
    port map (
            O => \N__7070\,
            I => \N__7049\
        );

    \I__1288\ : Odrv4
    port map (
            O => \N__7067\,
            I => \I_DUT.U_6.countZ0Z_0\
        );

    \I__1287\ : LocalMux
    port map (
            O => \N__7064\,
            I => \I_DUT.U_6.countZ0Z_0\
        );

    \I__1286\ : LocalMux
    port map (
            O => \N__7061\,
            I => \I_DUT.U_6.countZ0Z_0\
        );

    \I__1285\ : LocalMux
    port map (
            O => \N__7054\,
            I => \I_DUT.U_6.countZ0Z_0\
        );

    \I__1284\ : LocalMux
    port map (
            O => \N__7049\,
            I => \I_DUT.U_6.countZ0Z_0\
        );

    \I__1283\ : InMux
    port map (
            O => \N__7038\,
            I => \N__7035\
        );

    \I__1282\ : LocalMux
    port map (
            O => \N__7035\,
            I => \N__7032\
        );

    \I__1281\ : Odrv4
    port map (
            O => \N__7032\,
            I => \I_DUT.fram_sclkAF_0\
        );

    \I__1280\ : CEMux
    port map (
            O => \N__7029\,
            I => \N__7026\
        );

    \I__1279\ : LocalMux
    port map (
            O => \N__7026\,
            I => \N__7023\
        );

    \I__1278\ : Odrv12
    port map (
            O => \N__7023\,
            I => \I_DUT.U_6.N_42_i\
        );

    \I__1277\ : SRMux
    port map (
            O => \N__7020\,
            I => \N__7017\
        );

    \I__1276\ : LocalMux
    port map (
            O => \N__7017\,
            I => \N__7014\
        );

    \I__1275\ : Sp12to4
    port map (
            O => \N__7014\,
            I => \N__7011\
        );

    \I__1274\ : Odrv12
    port map (
            O => \N__7011\,
            I => \I_DUT.U_12.stmClk_old_RNOZ0\
        );

    \I__1273\ : InMux
    port map (
            O => \N__7008\,
            I => \N__7005\
        );

    \I__1272\ : LocalMux
    port map (
            O => \N__7005\,
            I => i_adc_sdo_c_3
        );

    \I__1271\ : InMux
    port map (
            O => \N__7002\,
            I => \N__6999\
        );

    \I__1270\ : LocalMux
    port map (
            O => \N__6999\,
            I => \N__6996\
        );

    \I__1269\ : Odrv4
    port map (
            O => \N__6996\,
            I => \adc_sdoZ0Z_3\
        );

    \I__1268\ : InMux
    port map (
            O => \N__6993\,
            I => \N__6990\
        );

    \I__1267\ : LocalMux
    port map (
            O => \N__6990\,
            I => \I_DUT.U_4.fpga_m_1_retZ0\
        );

    \I__1266\ : InMux
    port map (
            O => \N__6987\,
            I => \N__6984\
        );

    \I__1265\ : LocalMux
    port map (
            O => \N__6984\,
            I => \N__6981\
        );

    \I__1264\ : Span4Mux_h
    port map (
            O => \N__6981\,
            I => \N__6978\
        );

    \I__1263\ : Odrv4
    port map (
            O => \N__6978\,
            I => i_adc_sdo_c_2
        );

    \I__1262\ : InMux
    port map (
            O => \N__6975\,
            I => \N__6972\
        );

    \I__1261\ : LocalMux
    port map (
            O => \N__6972\,
            I => \adc_sdoZ0Z_2\
        );

    \I__1260\ : CascadeMux
    port map (
            O => \N__6969\,
            I => \N__6966\
        );

    \I__1259\ : InMux
    port map (
            O => \N__6966\,
            I => \N__6963\
        );

    \I__1258\ : LocalMux
    port map (
            O => \N__6963\,
            I => \I_DUT.U_5.fpga_m_ret_5_RNIM1EZ0Z3\
        );

    \I__1257\ : InMux
    port map (
            O => \N__6960\,
            I => \N__6957\
        );

    \I__1256\ : LocalMux
    port map (
            O => \N__6957\,
            I => \N__6954\
        );

    \I__1255\ : Odrv4
    port map (
            O => \N__6954\,
            I => \I_DUT.MISO_AF\
        );

    \I__1254\ : CEMux
    port map (
            O => \N__6951\,
            I => \N__6948\
        );

    \I__1253\ : LocalMux
    port map (
            O => \N__6948\,
            I => \N__6945\
        );

    \I__1252\ : Odrv4
    port map (
            O => \N__6945\,
            I => \I_DUT.U_13.MISO_OUT_0_sqmuxa\
        );

    \I__1251\ : InMux
    port map (
            O => \N__6942\,
            I => \N__6937\
        );

    \I__1250\ : InMux
    port map (
            O => \N__6941\,
            I => \N__6932\
        );

    \I__1249\ : InMux
    port map (
            O => \N__6940\,
            I => \N__6932\
        );

    \I__1248\ : LocalMux
    port map (
            O => \N__6937\,
            I => \N__6928\
        );

    \I__1247\ : LocalMux
    port map (
            O => \N__6932\,
            I => \N__6925\
        );

    \I__1246\ : CascadeMux
    port map (
            O => \N__6931\,
            I => \N__6922\
        );

    \I__1245\ : Span4Mux_v
    port map (
            O => \N__6928\,
            I => \N__6919\
        );

    \I__1244\ : Span4Mux_v
    port map (
            O => \N__6925\,
            I => \N__6916\
        );

    \I__1243\ : InMux
    port map (
            O => \N__6922\,
            I => \N__6913\
        );

    \I__1242\ : Odrv4
    port map (
            O => \N__6919\,
            I => \I_DUT.U_4.un18_m_2\
        );

    \I__1241\ : Odrv4
    port map (
            O => \N__6916\,
            I => \I_DUT.U_4.un18_m_2\
        );

    \I__1240\ : LocalMux
    port map (
            O => \N__6913\,
            I => \I_DUT.U_4.un18_m_2\
        );

    \I__1239\ : CascadeMux
    port map (
            O => \N__6906\,
            I => \I_DUT.U_5.N_98_cascade_\
        );

    \I__1238\ : IoInMux
    port map (
            O => \N__6903\,
            I => \N__6899\
        );

    \I__1237\ : IoInMux
    port map (
            O => \N__6902\,
            I => \N__6896\
        );

    \I__1236\ : LocalMux
    port map (
            O => \N__6899\,
            I => \N__6889\
        );

    \I__1235\ : LocalMux
    port map (
            O => \N__6896\,
            I => \N__6889\
        );

    \I__1234\ : IoInMux
    port map (
            O => \N__6895\,
            I => \N__6886\
        );

    \I__1233\ : IoInMux
    port map (
            O => \N__6894\,
            I => \N__6883\
        );

    \I__1232\ : IoSpan4Mux
    port map (
            O => \N__6889\,
            I => \N__6880\
        );

    \I__1231\ : LocalMux
    port map (
            O => \N__6886\,
            I => \N__6875\
        );

    \I__1230\ : LocalMux
    port map (
            O => \N__6883\,
            I => \N__6875\
        );

    \I__1229\ : Span4Mux_s2_v
    port map (
            O => \N__6880\,
            I => \N__6870\
        );

    \I__1228\ : Span4Mux_s2_v
    port map (
            O => \N__6875\,
            I => \N__6870\
        );

    \I__1227\ : Span4Mux_v
    port map (
            O => \N__6870\,
            I => \N__6867\
        );

    \I__1226\ : Span4Mux_v
    port map (
            O => \N__6867\,
            I => \N__6864\
        );

    \I__1225\ : Sp12to4
    port map (
            O => \N__6864\,
            I => \N__6861\
        );

    \I__1224\ : Odrv12
    port map (
            O => \N__6861\,
            I => \I_DUT_U_5_FR_CLOCK_0_i_0\
        );

    \I__1223\ : InMux
    port map (
            O => \N__6858\,
            I => \N__6852\
        );

    \I__1222\ : InMux
    port map (
            O => \N__6857\,
            I => \N__6849\
        );

    \I__1221\ : InMux
    port map (
            O => \N__6856\,
            I => \N__6846\
        );

    \I__1220\ : InMux
    port map (
            O => \N__6855\,
            I => \N__6843\
        );

    \I__1219\ : LocalMux
    port map (
            O => \N__6852\,
            I => \I_DUT.count_0\
        );

    \I__1218\ : LocalMux
    port map (
            O => \N__6849\,
            I => \I_DUT.count_0\
        );

    \I__1217\ : LocalMux
    port map (
            O => \N__6846\,
            I => \I_DUT.count_0\
        );

    \I__1216\ : LocalMux
    port map (
            O => \N__6843\,
            I => \I_DUT.count_0\
        );

    \I__1215\ : InMux
    port map (
            O => \N__6834\,
            I => \N__6831\
        );

    \I__1214\ : LocalMux
    port map (
            O => \N__6831\,
            I => \N__6826\
        );

    \I__1213\ : InMux
    port map (
            O => \N__6830\,
            I => \N__6823\
        );

    \I__1212\ : InMux
    port map (
            O => \N__6829\,
            I => \N__6820\
        );

    \I__1211\ : Odrv4
    port map (
            O => \N__6826\,
            I => \I_DUT.count_1\
        );

    \I__1210\ : LocalMux
    port map (
            O => \N__6823\,
            I => \I_DUT.count_1\
        );

    \I__1209\ : LocalMux
    port map (
            O => \N__6820\,
            I => \I_DUT.count_1\
        );

    \I__1208\ : InMux
    port map (
            O => \N__6813\,
            I => \I_DUT.U_2.count_cry_0\
        );

    \I__1207\ : CascadeMux
    port map (
            O => \N__6810\,
            I => \N__6807\
        );

    \I__1206\ : InMux
    port map (
            O => \N__6807\,
            I => \N__6803\
        );

    \I__1205\ : InMux
    port map (
            O => \N__6806\,
            I => \N__6800\
        );

    \I__1204\ : LocalMux
    port map (
            O => \N__6803\,
            I => \I_DUT.U_2.countZ0Z_2\
        );

    \I__1203\ : LocalMux
    port map (
            O => \N__6800\,
            I => \I_DUT.U_2.countZ0Z_2\
        );

    \I__1202\ : InMux
    port map (
            O => \N__6795\,
            I => \I_DUT.U_2.count_cry_1\
        );

    \I__1201\ : InMux
    port map (
            O => \N__6792\,
            I => \N__6788\
        );

    \I__1200\ : InMux
    port map (
            O => \N__6791\,
            I => \N__6785\
        );

    \I__1199\ : LocalMux
    port map (
            O => \N__6788\,
            I => \I_DUT.U_2.countZ0Z_3\
        );

    \I__1198\ : LocalMux
    port map (
            O => \N__6785\,
            I => \I_DUT.U_2.countZ0Z_3\
        );

    \I__1197\ : CascadeMux
    port map (
            O => \N__6780\,
            I => \N__6774\
        );

    \I__1196\ : InMux
    port map (
            O => \N__6779\,
            I => \N__6770\
        );

    \I__1195\ : InMux
    port map (
            O => \N__6778\,
            I => \N__6767\
        );

    \I__1194\ : InMux
    port map (
            O => \N__6777\,
            I => \N__6764\
        );

    \I__1193\ : InMux
    port map (
            O => \N__6774\,
            I => \N__6759\
        );

    \I__1192\ : InMux
    port map (
            O => \N__6773\,
            I => \N__6759\
        );

    \I__1191\ : LocalMux
    port map (
            O => \N__6770\,
            I => \I_DUT.U_6.countZ0Z_2\
        );

    \I__1190\ : LocalMux
    port map (
            O => \N__6767\,
            I => \I_DUT.U_6.countZ0Z_2\
        );

    \I__1189\ : LocalMux
    port map (
            O => \N__6764\,
            I => \I_DUT.U_6.countZ0Z_2\
        );

    \I__1188\ : LocalMux
    port map (
            O => \N__6759\,
            I => \I_DUT.U_6.countZ0Z_2\
        );

    \I__1187\ : CascadeMux
    port map (
            O => \N__6750\,
            I => \N__6747\
        );

    \I__1186\ : InMux
    port map (
            O => \N__6747\,
            I => \N__6742\
        );

    \I__1185\ : InMux
    port map (
            O => \N__6746\,
            I => \N__6737\
        );

    \I__1184\ : InMux
    port map (
            O => \N__6745\,
            I => \N__6737\
        );

    \I__1183\ : LocalMux
    port map (
            O => \N__6742\,
            I => \I_DUT.U_6.N_53\
        );

    \I__1182\ : LocalMux
    port map (
            O => \N__6737\,
            I => \I_DUT.U_6.N_53\
        );

    \I__1181\ : CascadeMux
    port map (
            O => \N__6732\,
            I => \I_DUT.U_6.N_53_cascade_\
        );

    \I__1180\ : CascadeMux
    port map (
            O => \N__6729\,
            I => \N__6726\
        );

    \I__1179\ : InMux
    port map (
            O => \N__6726\,
            I => \N__6723\
        );

    \I__1178\ : LocalMux
    port map (
            O => \N__6723\,
            I => \N__6720\
        );

    \I__1177\ : Span4Mux_h
    port map (
            O => \N__6720\,
            I => \N__6717\
        );

    \I__1176\ : Odrv4
    port map (
            O => \N__6717\,
            I => \acq_pretrigZ0\
        );

    \I__1175\ : CEMux
    port map (
            O => \N__6714\,
            I => \N__6711\
        );

    \I__1174\ : LocalMux
    port map (
            O => \N__6711\,
            I => \N__6708\
        );

    \I__1173\ : Sp12to4
    port map (
            O => \N__6708\,
            I => \N__6705\
        );

    \I__1172\ : Span12Mux_s7_v
    port map (
            O => \N__6705\,
            I => \N__6702\
        );

    \I__1171\ : Odrv12
    port map (
            O => \N__6702\,
            I => \I_DUT.U_12.valuePreTrig_int_0_sqmuxa\
        );

    \I__1170\ : InMux
    port map (
            O => \N__6699\,
            I => \N__6696\
        );

    \I__1169\ : LocalMux
    port map (
            O => \N__6696\,
            I => \I_DUT.U_6.count_go_3_i_0_1\
        );

    \I__1168\ : CascadeMux
    port map (
            O => \N__6693\,
            I => \N__6690\
        );

    \I__1167\ : InMux
    port map (
            O => \N__6690\,
            I => \N__6687\
        );

    \I__1166\ : LocalMux
    port map (
            O => \N__6687\,
            I => \I_DUT.U_6.count_go_3_i_0_a3_0_4_1\
        );

    \I__1165\ : InMux
    port map (
            O => \N__6684\,
            I => \N__6681\
        );

    \I__1164\ : LocalMux
    port map (
            O => \N__6681\,
            I => \N__6677\
        );

    \I__1163\ : InMux
    port map (
            O => \N__6680\,
            I => \N__6674\
        );

    \I__1162\ : Span4Mux_h
    port map (
            O => \N__6677\,
            I => \N__6670\
        );

    \I__1161\ : LocalMux
    port map (
            O => \N__6674\,
            I => \N__6667\
        );

    \I__1160\ : InMux
    port map (
            O => \N__6673\,
            I => \N__6664\
        );

    \I__1159\ : Odrv4
    port map (
            O => \N__6670\,
            I => \I_DUT.U_6.N_59\
        );

    \I__1158\ : Odrv12
    port map (
            O => \N__6667\,
            I => \I_DUT.U_6.N_59\
        );

    \I__1157\ : LocalMux
    port map (
            O => \N__6664\,
            I => \I_DUT.U_6.N_59\
        );

    \I__1156\ : InMux
    port map (
            O => \N__6657\,
            I => \N__6654\
        );

    \I__1155\ : LocalMux
    port map (
            O => \N__6654\,
            I => \I_DUT.U_4.fpga_m_2_retZ0\
        );

    \I__1154\ : InMux
    port map (
            O => \N__6651\,
            I => \N__6648\
        );

    \I__1153\ : LocalMux
    port map (
            O => \N__6648\,
            I => \N__6645\
        );

    \I__1152\ : Span4Mux_h
    port map (
            O => \N__6645\,
            I => \N__6642\
        );

    \I__1151\ : Odrv4
    port map (
            O => \N__6642\,
            I => \I_DUT_U_5_MISO_0_i\
        );

    \I__1150\ : InMux
    port map (
            O => \N__6639\,
            I => \N__6636\
        );

    \I__1149\ : LocalMux
    port map (
            O => \N__6636\,
            I => \I_DUT.fpga_m_i_3_0\
        );

    \I__1148\ : InMux
    port map (
            O => \N__6633\,
            I => \N__6630\
        );

    \I__1147\ : LocalMux
    port map (
            O => \N__6630\,
            I => \I_DUT.fpga_m_i_2_1\
        );

    \I__1146\ : InMux
    port map (
            O => \N__6627\,
            I => \N__6624\
        );

    \I__1145\ : LocalMux
    port map (
            O => \N__6624\,
            I => \I_DUT.count11_0_2\
        );

    \I__1144\ : CascadeMux
    port map (
            O => \N__6621\,
            I => \N__6618\
        );

    \I__1143\ : InMux
    port map (
            O => \N__6618\,
            I => \N__6613\
        );

    \I__1142\ : InMux
    port map (
            O => \N__6617\,
            I => \N__6610\
        );

    \I__1141\ : InMux
    port map (
            O => \N__6616\,
            I => \N__6607\
        );

    \I__1140\ : LocalMux
    port map (
            O => \N__6613\,
            I => \I_DUT.q_int_i\
        );

    \I__1139\ : LocalMux
    port map (
            O => \N__6610\,
            I => \I_DUT.q_int_i\
        );

    \I__1138\ : LocalMux
    port map (
            O => \N__6607\,
            I => \I_DUT.q_int_i\
        );

    \I__1137\ : CascadeMux
    port map (
            O => \N__6600\,
            I => \I_DUT.count11_0_2_cascade_\
        );

    \I__1136\ : InMux
    port map (
            O => \N__6597\,
            I => \N__6594\
        );

    \I__1135\ : LocalMux
    port map (
            O => \N__6594\,
            I => \I_DUT.q_int_RNI5U9M\
        );

    \I__1134\ : InMux
    port map (
            O => \N__6591\,
            I => \N__6585\
        );

    \I__1133\ : InMux
    port map (
            O => \N__6590\,
            I => \N__6580\
        );

    \I__1132\ : InMux
    port map (
            O => \N__6589\,
            I => \N__6580\
        );

    \I__1131\ : InMux
    port map (
            O => \N__6588\,
            I => \N__6577\
        );

    \I__1130\ : LocalMux
    port map (
            O => \N__6585\,
            I => \N__6574\
        );

    \I__1129\ : LocalMux
    port map (
            O => \N__6580\,
            I => \N__6571\
        );

    \I__1128\ : LocalMux
    port map (
            O => \N__6577\,
            I => \N__6568\
        );

    \I__1127\ : Span4Mux_h
    port map (
            O => \N__6574\,
            I => \N__6565\
        );

    \I__1126\ : Span4Mux_v
    port map (
            O => \N__6571\,
            I => \N__6560\
        );

    \I__1125\ : Span4Mux_h
    port map (
            O => \N__6568\,
            I => \N__6560\
        );

    \I__1124\ : Odrv4
    port map (
            O => \N__6565\,
            I => \I_DUT.fram_ncsAF_0\
        );

    \I__1123\ : Odrv4
    port map (
            O => \N__6560\,
            I => \I_DUT.fram_ncsAF_0\
        );

    \I__1122\ : CascadeMux
    port map (
            O => \N__6555\,
            I => \N__6552\
        );

    \I__1121\ : InMux
    port map (
            O => \N__6552\,
            I => \N__6549\
        );

    \I__1120\ : LocalMux
    port map (
            O => \N__6549\,
            I => \I_DUT.U_6.un1_done_sig_1_i_a3_1\
        );

    \I__1119\ : CEMux
    port map (
            O => \N__6546\,
            I => \N__6543\
        );

    \I__1118\ : LocalMux
    port map (
            O => \N__6543\,
            I => \N__6540\
        );

    \I__1117\ : Odrv12
    port map (
            O => \N__6540\,
            I => \I_DUT.U_6.N_45\
        );

    \I__1116\ : InMux
    port map (
            O => \N__6537\,
            I => \N__6530\
        );

    \I__1115\ : InMux
    port map (
            O => \N__6536\,
            I => \N__6527\
        );

    \I__1114\ : InMux
    port map (
            O => \N__6535\,
            I => \N__6524\
        );

    \I__1113\ : InMux
    port map (
            O => \N__6534\,
            I => \N__6519\
        );

    \I__1112\ : InMux
    port map (
            O => \N__6533\,
            I => \N__6519\
        );

    \I__1111\ : LocalMux
    port map (
            O => \N__6530\,
            I => \I_DUT.U_6.countZ0Z_3\
        );

    \I__1110\ : LocalMux
    port map (
            O => \N__6527\,
            I => \I_DUT.U_6.countZ0Z_3\
        );

    \I__1109\ : LocalMux
    port map (
            O => \N__6524\,
            I => \I_DUT.U_6.countZ0Z_3\
        );

    \I__1108\ : LocalMux
    port map (
            O => \N__6519\,
            I => \I_DUT.U_6.countZ0Z_3\
        );

    \I__1107\ : InMux
    port map (
            O => \N__6510\,
            I => \N__6504\
        );

    \I__1106\ : InMux
    port map (
            O => \N__6509\,
            I => \N__6501\
        );

    \I__1105\ : InMux
    port map (
            O => \N__6508\,
            I => \N__6496\
        );

    \I__1104\ : InMux
    port map (
            O => \N__6507\,
            I => \N__6496\
        );

    \I__1103\ : LocalMux
    port map (
            O => \N__6504\,
            I => \I_DUT.U_6.countZ0Z_1\
        );

    \I__1102\ : LocalMux
    port map (
            O => \N__6501\,
            I => \I_DUT.U_6.countZ0Z_1\
        );

    \I__1101\ : LocalMux
    port map (
            O => \N__6496\,
            I => \I_DUT.U_6.countZ0Z_1\
        );

    \I__1100\ : InMux
    port map (
            O => \N__6489\,
            I => \N__6486\
        );

    \I__1099\ : LocalMux
    port map (
            O => \N__6486\,
            I => \N__6483\
        );

    \I__1098\ : Odrv4
    port map (
            O => \N__6483\,
            I => \I_DUT.U_6.countlde_i_o3_0_0\
        );

    \I__1097\ : InMux
    port map (
            O => \N__6480\,
            I => \N__6477\
        );

    \I__1096\ : LocalMux
    port map (
            O => \N__6477\,
            I => \N__6474\
        );

    \I__1095\ : Odrv12
    port map (
            O => \N__6474\,
            I => i_acq_pretrig_c
        );

    \I__1094\ : InMux
    port map (
            O => \N__6471\,
            I => \N__6463\
        );

    \I__1093\ : InMux
    port map (
            O => \N__6470\,
            I => \N__6463\
        );

    \I__1092\ : InMux
    port map (
            O => \N__6469\,
            I => \N__6458\
        );

    \I__1091\ : InMux
    port map (
            O => \N__6468\,
            I => \N__6453\
        );

    \I__1090\ : LocalMux
    port map (
            O => \N__6463\,
            I => \N__6448\
        );

    \I__1089\ : InMux
    port map (
            O => \N__6462\,
            I => \N__6443\
        );

    \I__1088\ : InMux
    port map (
            O => \N__6461\,
            I => \N__6443\
        );

    \I__1087\ : LocalMux
    port map (
            O => \N__6458\,
            I => \N__6440\
        );

    \I__1086\ : InMux
    port map (
            O => \N__6457\,
            I => \N__6437\
        );

    \I__1085\ : InMux
    port map (
            O => \N__6456\,
            I => \N__6434\
        );

    \I__1084\ : LocalMux
    port map (
            O => \N__6453\,
            I => \N__6431\
        );

    \I__1083\ : InMux
    port map (
            O => \N__6452\,
            I => \N__6426\
        );

    \I__1082\ : InMux
    port map (
            O => \N__6451\,
            I => \N__6426\
        );

    \I__1081\ : Span4Mux_v
    port map (
            O => \N__6448\,
            I => \N__6421\
        );

    \I__1080\ : LocalMux
    port map (
            O => \N__6443\,
            I => \N__6421\
        );

    \I__1079\ : Span4Mux_v
    port map (
            O => \N__6440\,
            I => \N__6418\
        );

    \I__1078\ : LocalMux
    port map (
            O => \N__6437\,
            I => \N__6412\
        );

    \I__1077\ : LocalMux
    port map (
            O => \N__6434\,
            I => \N__6405\
        );

    \I__1076\ : Span4Mux_h
    port map (
            O => \N__6431\,
            I => \N__6405\
        );

    \I__1075\ : LocalMux
    port map (
            O => \N__6426\,
            I => \N__6405\
        );

    \I__1074\ : Span4Mux_h
    port map (
            O => \N__6421\,
            I => \N__6402\
        );

    \I__1073\ : Span4Mux_h
    port map (
            O => \N__6418\,
            I => \N__6399\
        );

    \I__1072\ : CascadeMux
    port map (
            O => \N__6417\,
            I => \N__6391\
        );

    \I__1071\ : CascadeMux
    port map (
            O => \N__6416\,
            I => \N__6386\
        );

    \I__1070\ : CascadeMux
    port map (
            O => \N__6415\,
            I => \N__6376\
        );

    \I__1069\ : Span12Mux_s11_v
    port map (
            O => \N__6412\,
            I => \N__6372\
        );

    \I__1068\ : Span4Mux_h
    port map (
            O => \N__6405\,
            I => \N__6369\
        );

    \I__1067\ : Span4Mux_h
    port map (
            O => \N__6402\,
            I => \N__6364\
        );

    \I__1066\ : Span4Mux_h
    port map (
            O => \N__6399\,
            I => \N__6364\
        );

    \I__1065\ : InMux
    port map (
            O => \N__6398\,
            I => \N__6353\
        );

    \I__1064\ : InMux
    port map (
            O => \N__6397\,
            I => \N__6353\
        );

    \I__1063\ : InMux
    port map (
            O => \N__6396\,
            I => \N__6353\
        );

    \I__1062\ : InMux
    port map (
            O => \N__6395\,
            I => \N__6353\
        );

    \I__1061\ : InMux
    port map (
            O => \N__6394\,
            I => \N__6353\
        );

    \I__1060\ : InMux
    port map (
            O => \N__6391\,
            I => \N__6346\
        );

    \I__1059\ : InMux
    port map (
            O => \N__6390\,
            I => \N__6346\
        );

    \I__1058\ : InMux
    port map (
            O => \N__6389\,
            I => \N__6346\
        );

    \I__1057\ : InMux
    port map (
            O => \N__6386\,
            I => \N__6335\
        );

    \I__1056\ : InMux
    port map (
            O => \N__6385\,
            I => \N__6335\
        );

    \I__1055\ : InMux
    port map (
            O => \N__6384\,
            I => \N__6335\
        );

    \I__1054\ : InMux
    port map (
            O => \N__6383\,
            I => \N__6335\
        );

    \I__1053\ : InMux
    port map (
            O => \N__6382\,
            I => \N__6335\
        );

    \I__1052\ : InMux
    port map (
            O => \N__6381\,
            I => \N__6332\
        );

    \I__1051\ : InMux
    port map (
            O => \N__6380\,
            I => \N__6323\
        );

    \I__1050\ : InMux
    port map (
            O => \N__6379\,
            I => \N__6323\
        );

    \I__1049\ : InMux
    port map (
            O => \N__6376\,
            I => \N__6323\
        );

    \I__1048\ : InMux
    port map (
            O => \N__6375\,
            I => \N__6323\
        );

    \I__1047\ : Odrv12
    port map (
            O => \N__6372\,
            I => \I_DUT.m_i_0\
        );

    \I__1046\ : Odrv4
    port map (
            O => \N__6369\,
            I => \I_DUT.m_i_0\
        );

    \I__1045\ : Odrv4
    port map (
            O => \N__6364\,
            I => \I_DUT.m_i_0\
        );

    \I__1044\ : LocalMux
    port map (
            O => \N__6353\,
            I => \I_DUT.m_i_0\
        );

    \I__1043\ : LocalMux
    port map (
            O => \N__6346\,
            I => \I_DUT.m_i_0\
        );

    \I__1042\ : LocalMux
    port map (
            O => \N__6335\,
            I => \I_DUT.m_i_0\
        );

    \I__1041\ : LocalMux
    port map (
            O => \N__6332\,
            I => \I_DUT.m_i_0\
        );

    \I__1040\ : LocalMux
    port map (
            O => \N__6323\,
            I => \I_DUT.m_i_0\
        );

    \I__1039\ : InMux
    port map (
            O => \N__6306\,
            I => \N__6303\
        );

    \I__1038\ : LocalMux
    port map (
            O => \N__6303\,
            I => i_acq_trig_c
        );

    \I__1037\ : InMux
    port map (
            O => \N__6300\,
            I => \N__6297\
        );

    \I__1036\ : LocalMux
    port map (
            O => \N__6297\,
            I => \N__6294\
        );

    \I__1035\ : Odrv4
    port map (
            O => \N__6294\,
            I => \acq_trigZ0\
        );

    \I__1034\ : InMux
    port map (
            O => \N__6291\,
            I => \N__6288\
        );

    \I__1033\ : LocalMux
    port map (
            O => \N__6288\,
            I => \N__6283\
        );

    \I__1032\ : InMux
    port map (
            O => \N__6287\,
            I => \N__6280\
        );

    \I__1031\ : InMux
    port map (
            O => \N__6286\,
            I => \N__6277\
        );

    \I__1030\ : Odrv4
    port map (
            O => \N__6283\,
            I => \I_DUT.U_5.N_54i\
        );

    \I__1029\ : LocalMux
    port map (
            O => \N__6280\,
            I => \I_DUT.U_5.N_54i\
        );

    \I__1028\ : LocalMux
    port map (
            O => \N__6277\,
            I => \I_DUT.U_5.N_54i\
        );

    \I__1027\ : CascadeMux
    port map (
            O => \N__6270\,
            I => \N__6267\
        );

    \I__1026\ : InMux
    port map (
            O => \N__6267\,
            I => \N__6264\
        );

    \I__1025\ : LocalMux
    port map (
            O => \N__6264\,
            I => \I_DUT.m_i_0_reti\
        );

    \I__1024\ : InMux
    port map (
            O => \N__6261\,
            I => \N__6258\
        );

    \I__1023\ : LocalMux
    port map (
            O => \N__6258\,
            I => \I_DUT.U_5.adc_clock11_i_0_i_1\
        );

    \I__1022\ : InMux
    port map (
            O => \N__6255\,
            I => \N__6252\
        );

    \I__1021\ : LocalMux
    port map (
            O => \N__6252\,
            I => \fpga_mZ0Z_1\
        );

    \I__1020\ : CascadeMux
    port map (
            O => \N__6249\,
            I => \N__6244\
        );

    \I__1019\ : InMux
    port map (
            O => \N__6248\,
            I => \N__6238\
        );

    \I__1018\ : InMux
    port map (
            O => \N__6247\,
            I => \N__6238\
        );

    \I__1017\ : InMux
    port map (
            O => \N__6244\,
            I => \N__6233\
        );

    \I__1016\ : InMux
    port map (
            O => \N__6243\,
            I => \N__6233\
        );

    \I__1015\ : LocalMux
    port map (
            O => \N__6238\,
            I => \I_DUT.U_6.un4_m\
        );

    \I__1014\ : LocalMux
    port map (
            O => \N__6233\,
            I => \I_DUT.U_6.un4_m\
        );

    \I__1013\ : CascadeMux
    port map (
            O => \N__6228\,
            I => \I_DUT.U_6.un1_done_sig_1_i_a3_1_cascade_\
        );

    \I__1012\ : InMux
    port map (
            O => \N__6225\,
            I => \N__6222\
        );

    \I__1011\ : LocalMux
    port map (
            O => \N__6222\,
            I => \N__6219\
        );

    \I__1010\ : Odrv4
    port map (
            O => \N__6219\,
            I => \I_DUT.U_6.N_95\
        );

    \I__1009\ : InMux
    port map (
            O => \N__6216\,
            I => \bfn_9_13_0_\
        );

    \I__1008\ : InMux
    port map (
            O => \N__6213\,
            I => \I_DUT.U_6.count_cry_0\
        );

    \I__1007\ : InMux
    port map (
            O => \N__6210\,
            I => \I_DUT.U_6.count_cry_1\
        );

    \I__1006\ : InMux
    port map (
            O => \N__6207\,
            I => \I_DUT.U_6.count_cry_2\
        );

    \I__1005\ : InMux
    port map (
            O => \N__6204\,
            I => \N__6196\
        );

    \I__1004\ : InMux
    port map (
            O => \N__6203\,
            I => \N__6196\
        );

    \I__1003\ : InMux
    port map (
            O => \N__6202\,
            I => \N__6188\
        );

    \I__1002\ : InMux
    port map (
            O => \N__6201\,
            I => \N__6188\
        );

    \I__1001\ : LocalMux
    port map (
            O => \N__6196\,
            I => \N__6185\
        );

    \I__1000\ : InMux
    port map (
            O => \N__6195\,
            I => \N__6178\
        );

    \I__999\ : InMux
    port map (
            O => \N__6194\,
            I => \N__6178\
        );

    \I__998\ : InMux
    port map (
            O => \N__6193\,
            I => \N__6178\
        );

    \I__997\ : LocalMux
    port map (
            O => \N__6188\,
            I => \N__6175\
        );

    \I__996\ : Odrv4
    port map (
            O => \N__6185\,
            I => \I_DUT.U_6.un3_is_up_i_0\
        );

    \I__995\ : LocalMux
    port map (
            O => \N__6178\,
            I => \I_DUT.U_6.un3_is_up_i_0\
        );

    \I__994\ : Odrv4
    port map (
            O => \N__6175\,
            I => \I_DUT.U_6.un3_is_up_i_0\
        );

    \I__993\ : InMux
    port map (
            O => \N__6168\,
            I => \I_DUT.U_6.count_cry_3\
        );

    \I__992\ : CEMux
    port map (
            O => \N__6165\,
            I => \N__6162\
        );

    \I__991\ : LocalMux
    port map (
            O => \N__6162\,
            I => \N__6159\
        );

    \I__990\ : Span4Mux_h
    port map (
            O => \N__6159\,
            I => \N__6156\
        );

    \I__989\ : Odrv4
    port map (
            O => \N__6156\,
            I => \I_DUT.U_6.N_40\
        );

    \I__988\ : InMux
    port map (
            O => \N__6153\,
            I => \N__6150\
        );

    \I__987\ : LocalMux
    port map (
            O => \N__6150\,
            I => \I_DUT.U_6.N_37\
        );

    \I__986\ : CascadeMux
    port map (
            O => \N__6147\,
            I => \N__6144\
        );

    \I__985\ : InMux
    port map (
            O => \N__6144\,
            I => \N__6140\
        );

    \I__984\ : CascadeMux
    port map (
            O => \N__6143\,
            I => \N__6137\
        );

    \I__983\ : LocalMux
    port map (
            O => \N__6140\,
            I => \N__6134\
        );

    \I__982\ : InMux
    port map (
            O => \N__6137\,
            I => \N__6131\
        );

    \I__981\ : Odrv4
    port map (
            O => \N__6134\,
            I => \I_DUT.fpga_m_i_3_3\
        );

    \I__980\ : LocalMux
    port map (
            O => \N__6131\,
            I => \I_DUT.fpga_m_i_3_3\
        );

    \I__979\ : InMux
    port map (
            O => \N__6126\,
            I => \N__6123\
        );

    \I__978\ : LocalMux
    port map (
            O => \N__6123\,
            I => \N__6118\
        );

    \I__977\ : InMux
    port map (
            O => \N__6122\,
            I => \N__6115\
        );

    \I__976\ : InMux
    port map (
            O => \N__6121\,
            I => \N__6111\
        );

    \I__975\ : Span4Mux_v
    port map (
            O => \N__6118\,
            I => \N__6106\
        );

    \I__974\ : LocalMux
    port map (
            O => \N__6115\,
            I => \N__6106\
        );

    \I__973\ : InMux
    port map (
            O => \N__6114\,
            I => \N__6103\
        );

    \I__972\ : LocalMux
    port map (
            O => \N__6111\,
            I => \I_DUT.U_6.down_ncsZ0\
        );

    \I__971\ : Odrv4
    port map (
            O => \N__6106\,
            I => \I_DUT.U_6.down_ncsZ0\
        );

    \I__970\ : LocalMux
    port map (
            O => \N__6103\,
            I => \I_DUT.U_6.down_ncsZ0\
        );

    \I__969\ : InMux
    port map (
            O => \N__6096\,
            I => \N__6093\
        );

    \I__968\ : LocalMux
    port map (
            O => \N__6093\,
            I => \I_DUT.U_6.N_91\
        );

    \I__967\ : CascadeMux
    port map (
            O => \N__6090\,
            I => \N__6087\
        );

    \I__966\ : InMux
    port map (
            O => \N__6087\,
            I => \N__6082\
        );

    \I__965\ : CascadeMux
    port map (
            O => \N__6086\,
            I => \N__6079\
        );

    \I__964\ : InMux
    port map (
            O => \N__6085\,
            I => \N__6075\
        );

    \I__963\ : LocalMux
    port map (
            O => \N__6082\,
            I => \N__6072\
        );

    \I__962\ : InMux
    port map (
            O => \N__6079\,
            I => \N__6069\
        );

    \I__961\ : InMux
    port map (
            O => \N__6078\,
            I => \N__6064\
        );

    \I__960\ : LocalMux
    port map (
            O => \N__6075\,
            I => \N__6061\
        );

    \I__959\ : Span4Mux_v
    port map (
            O => \N__6072\,
            I => \N__6056\
        );

    \I__958\ : LocalMux
    port map (
            O => \N__6069\,
            I => \N__6056\
        );

    \I__957\ : InMux
    port map (
            O => \N__6068\,
            I => \N__6053\
        );

    \I__956\ : InMux
    port map (
            O => \N__6067\,
            I => \N__6050\
        );

    \I__955\ : LocalMux
    port map (
            O => \N__6064\,
            I => \I_DUT.U_6.finish_dZ0\
        );

    \I__954\ : Odrv4
    port map (
            O => \N__6061\,
            I => \I_DUT.U_6.finish_dZ0\
        );

    \I__953\ : Odrv4
    port map (
            O => \N__6056\,
            I => \I_DUT.U_6.finish_dZ0\
        );

    \I__952\ : LocalMux
    port map (
            O => \N__6053\,
            I => \I_DUT.U_6.finish_dZ0\
        );

    \I__951\ : LocalMux
    port map (
            O => \N__6050\,
            I => \I_DUT.U_6.finish_dZ0\
        );

    \I__950\ : CascadeMux
    port map (
            O => \N__6039\,
            I => \I_DUT.U_6.N_92_cascade_\
        );

    \I__949\ : CascadeMux
    port map (
            O => \N__6036\,
            I => \N__6033\
        );

    \I__948\ : InMux
    port map (
            O => \N__6033\,
            I => \N__6030\
        );

    \I__947\ : LocalMux
    port map (
            O => \N__6030\,
            I => \I_DUT.U_6.N_99\
        );

    \I__946\ : InMux
    port map (
            O => \N__6027\,
            I => \N__6024\
        );

    \I__945\ : LocalMux
    port map (
            O => \N__6024\,
            I => \N__6021\
        );

    \I__944\ : Odrv12
    port map (
            O => \N__6021\,
            I => \fpga_sck_fastZ0\
        );

    \I__943\ : InMux
    port map (
            O => \N__6018\,
            I => \N__6015\
        );

    \I__942\ : LocalMux
    port map (
            O => \N__6015\,
            I => \N__6011\
        );

    \I__941\ : InMux
    port map (
            O => \N__6014\,
            I => \N__6008\
        );

    \I__940\ : Odrv4
    port map (
            O => \N__6011\,
            I => \I_DUT.fpga_m_ret_9_RNI797L1_0\
        );

    \I__939\ : LocalMux
    port map (
            O => \N__6008\,
            I => \I_DUT.fpga_m_ret_9_RNI797L1_0\
        );

    \I__938\ : CascadeMux
    port map (
            O => \N__6003\,
            I => \N__6000\
        );

    \I__937\ : InMux
    port map (
            O => \N__6000\,
            I => \N__5997\
        );

    \I__936\ : LocalMux
    port map (
            O => \N__5997\,
            I => \N__5994\
        );

    \I__935\ : Odrv4
    port map (
            O => \N__5994\,
            I => \I_DUT.U_5.FR_NCS_1Z0Z_1\
        );

    \I__934\ : InMux
    port map (
            O => \N__5991\,
            I => \N__5987\
        );

    \I__933\ : InMux
    port map (
            O => \N__5990\,
            I => \N__5984\
        );

    \I__932\ : LocalMux
    port map (
            O => \N__5987\,
            I => \I_DUT.fpga_m_ret_3_RNIK5EN1_0\
        );

    \I__931\ : LocalMux
    port map (
            O => \N__5984\,
            I => \I_DUT.fpga_m_ret_3_RNIK5EN1_0\
        );

    \I__930\ : InMux
    port map (
            O => \N__5979\,
            I => \N__5976\
        );

    \I__929\ : LocalMux
    port map (
            O => \N__5976\,
            I => \N__5973\
        );

    \I__928\ : Span4Mux_v
    port map (
            O => \N__5973\,
            I => \N__5970\
        );

    \I__927\ : Odrv4
    port map (
            O => \N__5970\,
            I => \I_DUT.U_5.FR_NCS_1Z0Z_3\
        );

    \I__926\ : InMux
    port map (
            O => \N__5967\,
            I => \N__5964\
        );

    \I__925\ : LocalMux
    port map (
            O => \N__5964\,
            I => \N__5961\
        );

    \I__924\ : Odrv4
    port map (
            O => \N__5961\,
            I => \I_DUT.U_4.un2_m_8_0\
        );

    \I__923\ : InMux
    port map (
            O => \N__5958\,
            I => \N__5955\
        );

    \I__922\ : LocalMux
    port map (
            O => \N__5955\,
            I => \N__5952\
        );

    \I__921\ : Odrv4
    port map (
            O => \N__5952\,
            I => \I_DUT.U_4.un9_m_0_i\
        );

    \I__920\ : InMux
    port map (
            O => \N__5949\,
            I => \N__5944\
        );

    \I__919\ : InMux
    port map (
            O => \N__5948\,
            I => \N__5941\
        );

    \I__918\ : CascadeMux
    port map (
            O => \N__5947\,
            I => \N__5938\
        );

    \I__917\ : LocalMux
    port map (
            O => \N__5944\,
            I => \N__5934\
        );

    \I__916\ : LocalMux
    port map (
            O => \N__5941\,
            I => \N__5931\
        );

    \I__915\ : InMux
    port map (
            O => \N__5938\,
            I => \N__5926\
        );

    \I__914\ : InMux
    port map (
            O => \N__5937\,
            I => \N__5926\
        );

    \I__913\ : Odrv4
    port map (
            O => \N__5934\,
            I => \fpga_mZ0Z_3\
        );

    \I__912\ : Odrv4
    port map (
            O => \N__5931\,
            I => \fpga_mZ0Z_3\
        );

    \I__911\ : LocalMux
    port map (
            O => \N__5926\,
            I => \fpga_mZ0Z_3\
        );

    \I__910\ : InMux
    port map (
            O => \N__5919\,
            I => \N__5916\
        );

    \I__909\ : LocalMux
    port map (
            O => \N__5916\,
            I => \I_DUT.U_5.ADC_CLOCK_1_iv_i_a3_0_1\
        );

    \I__908\ : CascadeMux
    port map (
            O => \N__5913\,
            I => \I_DUT.un3_ac0_5_cascade_\
        );

    \I__907\ : CascadeMux
    port map (
            O => \N__5910\,
            I => \I_DUT.U_5.N_32_i_cascade_\
        );

    \I__906\ : IoInMux
    port map (
            O => \N__5907\,
            I => \N__5904\
        );

    \I__905\ : LocalMux
    port map (
            O => \N__5904\,
            I => \N__5901\
        );

    \I__904\ : Span4Mux_s3_v
    port map (
            O => \N__5901\,
            I => \N__5898\
        );

    \I__903\ : Span4Mux_h
    port map (
            O => \N__5898\,
            I => \N__5895\
        );

    \I__902\ : Span4Mux_v
    port map (
            O => \N__5895\,
            I => \N__5892\
        );

    \I__901\ : Span4Mux_v
    port map (
            O => \N__5892\,
            I => \N__5888\
        );

    \I__900\ : InMux
    port map (
            O => \N__5891\,
            I => \N__5885\
        );

    \I__899\ : Odrv4
    port map (
            O => \N__5888\,
            I => \fpga_m_ret_4_RNIQT5I2_0\
        );

    \I__898\ : LocalMux
    port map (
            O => \N__5885\,
            I => \fpga_m_ret_4_RNIQT5I2_0\
        );

    \I__897\ : CascadeMux
    port map (
            O => \N__5880\,
            I => \N__5876\
        );

    \I__896\ : InMux
    port map (
            O => \N__5879\,
            I => \N__5871\
        );

    \I__895\ : InMux
    port map (
            O => \N__5876\,
            I => \N__5871\
        );

    \I__894\ : LocalMux
    port map (
            O => \N__5871\,
            I => \N__5865\
        );

    \I__893\ : InMux
    port map (
            O => \N__5870\,
            I => \N__5862\
        );

    \I__892\ : InMux
    port map (
            O => \N__5869\,
            I => \N__5857\
        );

    \I__891\ : InMux
    port map (
            O => \N__5868\,
            I => \N__5857\
        );

    \I__890\ : Odrv4
    port map (
            O => \N__5865\,
            I => \fpga_mZ0Z_2\
        );

    \I__889\ : LocalMux
    port map (
            O => \N__5862\,
            I => \fpga_mZ0Z_2\
        );

    \I__888\ : LocalMux
    port map (
            O => \N__5857\,
            I => \fpga_mZ0Z_2\
        );

    \I__887\ : InMux
    port map (
            O => \N__5850\,
            I => \N__5846\
        );

    \I__886\ : InMux
    port map (
            O => \N__5849\,
            I => \N__5843\
        );

    \I__885\ : LocalMux
    port map (
            O => \N__5846\,
            I => \fpga_mZ0Z_0\
        );

    \I__884\ : LocalMux
    port map (
            O => \N__5843\,
            I => \fpga_mZ0Z_0\
        );

    \I__883\ : InMux
    port map (
            O => \N__5838\,
            I => \N__5835\
        );

    \I__882\ : LocalMux
    port map (
            O => \N__5835\,
            I => \I_DUT.U_4.un3_m\
        );

    \I__881\ : IoInMux
    port map (
            O => \N__5832\,
            I => \N__5829\
        );

    \I__880\ : LocalMux
    port map (
            O => \N__5829\,
            I => \N__5826\
        );

    \I__879\ : Span4Mux_s0_v
    port map (
            O => \N__5826\,
            I => \N__5823\
        );

    \I__878\ : Span4Mux_v
    port map (
            O => \N__5823\,
            I => \N__5819\
        );

    \I__877\ : InMux
    port map (
            O => \N__5822\,
            I => \N__5816\
        );

    \I__876\ : Odrv4
    port map (
            O => \N__5819\,
            I => \fpga_m_ret_8_RNI1CV5_4\
        );

    \I__875\ : LocalMux
    port map (
            O => \N__5816\,
            I => \fpga_m_ret_8_RNI1CV5_4\
        );

    \I__874\ : IoInMux
    port map (
            O => \N__5811\,
            I => \N__5808\
        );

    \I__873\ : LocalMux
    port map (
            O => \N__5808\,
            I => \N__5804\
        );

    \I__872\ : InMux
    port map (
            O => \N__5807\,
            I => \N__5801\
        );

    \I__871\ : Odrv12
    port map (
            O => \N__5804\,
            I => \fpga_m_ret_8_RNI1CV5_6\
        );

    \I__870\ : LocalMux
    port map (
            O => \N__5801\,
            I => \fpga_m_ret_8_RNI1CV5_6\
        );

    \I__869\ : InMux
    port map (
            O => \N__5796\,
            I => \N__5793\
        );

    \I__868\ : LocalMux
    port map (
            O => \N__5793\,
            I => \I_DUT.U_5.adc_clock11_i_0_reti\
        );

    \I__867\ : CascadeMux
    port map (
            O => \N__5790\,
            I => \I_DUT.U_5.adc_clock11_i_0_reti_cascade_\
        );

    \I__866\ : InMux
    port map (
            O => \N__5787\,
            I => \N__5783\
        );

    \I__865\ : InMux
    port map (
            O => \N__5786\,
            I => \N__5780\
        );

    \I__864\ : LocalMux
    port map (
            O => \N__5783\,
            I => \N__5775\
        );

    \I__863\ : LocalMux
    port map (
            O => \N__5780\,
            I => \N__5775\
        );

    \I__862\ : Odrv4
    port map (
            O => \N__5775\,
            I => \I_DUT.un1_m_reti\
        );

    \I__861\ : InMux
    port map (
            O => \N__5772\,
            I => \N__5769\
        );

    \I__860\ : LocalMux
    port map (
            O => \N__5769\,
            I => \I_DUT.U_5.N_62_0\
        );

    \I__859\ : CascadeMux
    port map (
            O => \N__5766\,
            I => \N__5763\
        );

    \I__858\ : InMux
    port map (
            O => \N__5763\,
            I => \N__5755\
        );

    \I__857\ : InMux
    port map (
            O => \N__5762\,
            I => \N__5755\
        );

    \I__856\ : InMux
    port map (
            O => \N__5761\,
            I => \N__5750\
        );

    \I__855\ : InMux
    port map (
            O => \N__5760\,
            I => \N__5750\
        );

    \I__854\ : LocalMux
    port map (
            O => \N__5755\,
            I => \I_DUT.U_5.un1_adc_clock11_1_0\
        );

    \I__853\ : LocalMux
    port map (
            O => \N__5750\,
            I => \I_DUT.U_5.un1_adc_clock11_1_0\
        );

    \I__852\ : InMux
    port map (
            O => \N__5745\,
            I => \N__5741\
        );

    \I__851\ : InMux
    port map (
            O => \N__5744\,
            I => \N__5738\
        );

    \I__850\ : LocalMux
    port map (
            O => \N__5741\,
            I => \N__5735\
        );

    \I__849\ : LocalMux
    port map (
            O => \N__5738\,
            I => \N__5732\
        );

    \I__848\ : Odrv4
    port map (
            O => \N__5735\,
            I => \I_DUT.U_5.un3_0_THRU_CO\
        );

    \I__847\ : Odrv4
    port map (
            O => \N__5732\,
            I => \I_DUT.U_5.un3_0_THRU_CO\
        );

    \I__846\ : InMux
    port map (
            O => \N__5727\,
            I => \N__5723\
        );

    \I__845\ : InMux
    port map (
            O => \N__5726\,
            I => \N__5720\
        );

    \I__844\ : LocalMux
    port map (
            O => \N__5723\,
            I => \I_DUT.U_5.un1_m_0_THRU_CO\
        );

    \I__843\ : LocalMux
    port map (
            O => \N__5720\,
            I => \I_DUT.U_5.un1_m_0_THRU_CO\
        );

    \I__842\ : InMux
    port map (
            O => \N__5715\,
            I => \N__5709\
        );

    \I__841\ : InMux
    port map (
            O => \N__5714\,
            I => \N__5709\
        );

    \I__840\ : LocalMux
    port map (
            O => \N__5709\,
            I => \I_DUT.U_5.fr_clock7_i_0_reti\
        );

    \I__839\ : CascadeMux
    port map (
            O => \N__5706\,
            I => \N__5701\
        );

    \I__838\ : InMux
    port map (
            O => \N__5705\,
            I => \N__5697\
        );

    \I__837\ : InMux
    port map (
            O => \N__5704\,
            I => \N__5690\
        );

    \I__836\ : InMux
    port map (
            O => \N__5701\,
            I => \N__5690\
        );

    \I__835\ : InMux
    port map (
            O => \N__5700\,
            I => \N__5690\
        );

    \I__834\ : LocalMux
    port map (
            O => \N__5697\,
            I => \I_DUT.U_6.is_upZ0\
        );

    \I__833\ : LocalMux
    port map (
            O => \N__5690\,
            I => \I_DUT.U_6.is_upZ0\
        );

    \I__832\ : InMux
    port map (
            O => \N__5685\,
            I => \N__5680\
        );

    \I__831\ : InMux
    port map (
            O => \N__5684\,
            I => \N__5677\
        );

    \I__830\ : InMux
    port map (
            O => \N__5683\,
            I => \N__5674\
        );

    \I__829\ : LocalMux
    port map (
            O => \N__5680\,
            I => \I_DUT.U_6.down_ncs_oldZ0\
        );

    \I__828\ : LocalMux
    port map (
            O => \N__5677\,
            I => \I_DUT.U_6.down_ncs_oldZ0\
        );

    \I__827\ : LocalMux
    port map (
            O => \N__5674\,
            I => \I_DUT.U_6.down_ncs_oldZ0\
        );

    \I__826\ : InMux
    port map (
            O => \N__5667\,
            I => \N__5664\
        );

    \I__825\ : LocalMux
    port map (
            O => \N__5664\,
            I => \N__5661\
        );

    \I__824\ : Odrv4
    port map (
            O => \N__5661\,
            I => \I_DUT.U_4.fpga_m_ret_6_RNIVMVAZ0Z1\
        );

    \I__823\ : InMux
    port map (
            O => \N__5658\,
            I => \N__5655\
        );

    \I__822\ : LocalMux
    port map (
            O => \N__5655\,
            I => \N__5652\
        );

    \I__821\ : Span4Mux_v
    port map (
            O => \N__5652\,
            I => \N__5648\
        );

    \I__820\ : InMux
    port map (
            O => \N__5651\,
            I => \N__5645\
        );

    \I__819\ : Odrv4
    port map (
            O => \N__5648\,
            I => \I_DUT.fpga_m_ret_7_RNI2OTC1_0\
        );

    \I__818\ : LocalMux
    port map (
            O => \N__5645\,
            I => \I_DUT.fpga_m_ret_7_RNI2OTC1_0\
        );

    \I__817\ : InMux
    port map (
            O => \N__5640\,
            I => \N__5636\
        );

    \I__816\ : InMux
    port map (
            O => \N__5639\,
            I => \N__5633\
        );

    \I__815\ : LocalMux
    port map (
            O => \N__5636\,
            I => \N__5629\
        );

    \I__814\ : LocalMux
    port map (
            O => \N__5633\,
            I => \N__5626\
        );

    \I__813\ : InMux
    port map (
            O => \N__5632\,
            I => \N__5623\
        );

    \I__812\ : Odrv12
    port map (
            O => \N__5629\,
            I => \I_DUT.U_5.i_fpga_m_c_i_2\
        );

    \I__811\ : Odrv4
    port map (
            O => \N__5626\,
            I => \I_DUT.U_5.i_fpga_m_c_i_2\
        );

    \I__810\ : LocalMux
    port map (
            O => \N__5623\,
            I => \I_DUT.U_5.i_fpga_m_c_i_2\
        );

    \I__809\ : CascadeMux
    port map (
            O => \N__5616\,
            I => \N__5613\
        );

    \I__808\ : InMux
    port map (
            O => \N__5613\,
            I => \N__5610\
        );

    \I__807\ : LocalMux
    port map (
            O => \N__5610\,
            I => \I_DUT.U_4.fpga_m_retZ0Z_7\
        );

    \I__806\ : InMux
    port map (
            O => \N__5607\,
            I => \I_DUT.U_5.un3_0\
        );

    \I__805\ : InMux
    port map (
            O => \N__5604\,
            I => \N__5601\
        );

    \I__804\ : LocalMux
    port map (
            O => \N__5601\,
            I => \I_DUT.un18_m_1\
        );

    \I__803\ : CascadeMux
    port map (
            O => \N__5598\,
            I => \I_DUT.U_4.un2_m_19_0_i_cascade_\
        );

    \I__802\ : InMux
    port map (
            O => \N__5595\,
            I => \N__5592\
        );

    \I__801\ : LocalMux
    port map (
            O => \N__5592\,
            I => \I_DUT.U_4.N_4\
        );

    \I__800\ : CascadeMux
    port map (
            O => \N__5589\,
            I => \I_DUT.U_4.un1_m_inv_2_cascade_\
        );

    \I__799\ : InMux
    port map (
            O => \N__5586\,
            I => \N__5583\
        );

    \I__798\ : LocalMux
    port map (
            O => \N__5583\,
            I => \I_DUT.U_4.fpga_m_ret_4_RNIVNTCZ0Z1\
        );

    \I__797\ : InMux
    port map (
            O => \N__5580\,
            I => \N__5577\
        );

    \I__796\ : LocalMux
    port map (
            O => \N__5577\,
            I => \I_DUT.U_4.fpga_m_retZ0Z_9\
        );

    \I__795\ : InMux
    port map (
            O => \N__5574\,
            I => \N__5568\
        );

    \I__794\ : InMux
    port map (
            O => \N__5573\,
            I => \N__5568\
        );

    \I__793\ : LocalMux
    port map (
            O => \N__5568\,
            I => \I_DUT.fpga_m_i_3_2\
        );

    \I__792\ : CascadeMux
    port map (
            O => \N__5565\,
            I => \N__5562\
        );

    \I__791\ : InMux
    port map (
            O => \N__5562\,
            I => \N__5559\
        );

    \I__790\ : LocalMux
    port map (
            O => \N__5559\,
            I => \N__5556\
        );

    \I__789\ : Odrv4
    port map (
            O => \N__5556\,
            I => \I_DUT.U_5.FR_NCS_1Z0Z_0\
        );

    \I__788\ : IoInMux
    port map (
            O => \N__5553\,
            I => \N__5550\
        );

    \I__787\ : LocalMux
    port map (
            O => \N__5550\,
            I => \N__5547\
        );

    \I__786\ : Span12Mux_s5_v
    port map (
            O => \N__5547\,
            I => \N__5543\
        );

    \I__785\ : InMux
    port map (
            O => \N__5546\,
            I => \N__5540\
        );

    \I__784\ : Odrv12
    port map (
            O => \N__5543\,
            I => \fpga_m_ret_8_RNI1CV5_3\
        );

    \I__783\ : LocalMux
    port map (
            O => \N__5540\,
            I => \fpga_m_ret_8_RNI1CV5_3\
        );

    \I__782\ : InMux
    port map (
            O => \N__5535\,
            I => \N__5532\
        );

    \I__781\ : LocalMux
    port map (
            O => \N__5532\,
            I => \I_DUT.U_5.un1_m_0_axb_3\
        );

    \I__780\ : InMux
    port map (
            O => \N__5529\,
            I => \I_DUT.U_5.un1_m_0\
        );

    \I__779\ : CascadeMux
    port map (
            O => \N__5526\,
            I => \I_DUT.fpga_m_ret_5_RNI0PRE1_0_cascade_\
        );

    \I__778\ : InMux
    port map (
            O => \N__5523\,
            I => \N__5513\
        );

    \I__777\ : InMux
    port map (
            O => \N__5522\,
            I => \N__5513\
        );

    \I__776\ : InMux
    port map (
            O => \N__5521\,
            I => \N__5513\
        );

    \I__775\ : InMux
    port map (
            O => \N__5520\,
            I => \N__5510\
        );

    \I__774\ : LocalMux
    port map (
            O => \N__5513\,
            I => \N__5507\
        );

    \I__773\ : LocalMux
    port map (
            O => \N__5510\,
            I => \I_DUT.U_1.un3_done\
        );

    \I__772\ : Odrv4
    port map (
            O => \N__5507\,
            I => \I_DUT.U_1.un3_done\
        );

    \I__771\ : InMux
    port map (
            O => \N__5502\,
            I => \N__5499\
        );

    \I__770\ : LocalMux
    port map (
            O => \N__5499\,
            I => \N__5496\
        );

    \I__769\ : Odrv12
    port map (
            O => \N__5496\,
            I => \I_DUT.U_4.fpga_m_retZ0Z_5\
        );

    \I__768\ : InMux
    port map (
            O => \N__5493\,
            I => \N__5490\
        );

    \I__767\ : LocalMux
    port map (
            O => \N__5490\,
            I => \I_DUT.U_6.un5_m\
        );

    \I__766\ : IoInMux
    port map (
            O => \N__5487\,
            I => \N__5484\
        );

    \I__765\ : LocalMux
    port map (
            O => \N__5484\,
            I => \I_DUT.U_1.N_22\
        );

    \I__764\ : IoInMux
    port map (
            O => \N__5481\,
            I => \N__5478\
        );

    \I__763\ : LocalMux
    port map (
            O => \N__5478\,
            I => \o_fram_ncs_obuf_2LegalizeSB_DFFNet\
        );

    \I__762\ : IoInMux
    port map (
            O => \N__5475\,
            I => \N__5472\
        );

    \I__761\ : LocalMux
    port map (
            O => \N__5472\,
            I => \o_fram_ncs_obuf_3LegalizeSB_DFFNet\
        );

    \I__760\ : InMux
    port map (
            O => \N__5469\,
            I => \N__5466\
        );

    \I__759\ : LocalMux
    port map (
            O => \N__5466\,
            I => \N__5463\
        );

    \I__758\ : Span4Mux_v
    port map (
            O => \N__5463\,
            I => \N__5460\
        );

    \I__757\ : Odrv4
    port map (
            O => \N__5460\,
            I => \I_DUT.U_5.FR_NCS_1Z0Z_2\
        );

    \I__756\ : IoInMux
    port map (
            O => \N__5457\,
            I => \N__5454\
        );

    \I__755\ : LocalMux
    port map (
            O => \N__5454\,
            I => \N__5450\
        );

    \I__754\ : InMux
    port map (
            O => \N__5453\,
            I => \N__5447\
        );

    \I__753\ : Odrv12
    port map (
            O => \N__5450\,
            I => \fpga_m_ret_8_RNI1CV5_5\
        );

    \I__752\ : LocalMux
    port map (
            O => \N__5447\,
            I => \fpga_m_ret_8_RNI1CV5_5\
        );

    \I__751\ : InMux
    port map (
            O => \N__5442\,
            I => \N__5437\
        );

    \I__750\ : InMux
    port map (
            O => \N__5441\,
            I => \N__5432\
        );

    \I__749\ : InMux
    port map (
            O => \N__5440\,
            I => \N__5432\
        );

    \I__748\ : LocalMux
    port map (
            O => \N__5437\,
            I => \I_DUT.U_1.done_waitZ1Z_1\
        );

    \I__747\ : LocalMux
    port map (
            O => \N__5432\,
            I => \I_DUT.U_1.done_waitZ1Z_1\
        );

    \I__746\ : CascadeMux
    port map (
            O => \N__5427\,
            I => \N__5424\
        );

    \I__745\ : InMux
    port map (
            O => \N__5424\,
            I => \N__5417\
        );

    \I__744\ : InMux
    port map (
            O => \N__5423\,
            I => \N__5417\
        );

    \I__743\ : InMux
    port map (
            O => \N__5422\,
            I => \N__5414\
        );

    \I__742\ : LocalMux
    port map (
            O => \N__5417\,
            I => \I_DUT.U_1.done_waitZ0Z_2\
        );

    \I__741\ : LocalMux
    port map (
            O => \N__5414\,
            I => \I_DUT.U_1.done_waitZ0Z_2\
        );

    \I__740\ : InMux
    port map (
            O => \N__5409\,
            I => \N__5403\
        );

    \I__739\ : InMux
    port map (
            O => \N__5408\,
            I => \N__5403\
        );

    \I__738\ : LocalMux
    port map (
            O => \N__5403\,
            I => \I_DUT.U_1.CO1\
        );

    \I__737\ : CascadeMux
    port map (
            O => \N__5400\,
            I => \N__5396\
        );

    \I__736\ : CascadeMux
    port map (
            O => \N__5399\,
            I => \N__5393\
        );

    \I__735\ : InMux
    port map (
            O => \N__5396\,
            I => \N__5390\
        );

    \I__734\ : InMux
    port map (
            O => \N__5393\,
            I => \N__5387\
        );

    \I__733\ : LocalMux
    port map (
            O => \N__5390\,
            I => \I_DUT.U_1.done_waitZ0Z_3\
        );

    \I__732\ : LocalMux
    port map (
            O => \N__5387\,
            I => \I_DUT.U_1.done_waitZ0Z_3\
        );

    \I__731\ : InMux
    port map (
            O => \N__5382\,
            I => \N__5379\
        );

    \I__730\ : LocalMux
    port map (
            O => \N__5379\,
            I => \N__5374\
        );

    \I__729\ : InMux
    port map (
            O => \N__5378\,
            I => \N__5371\
        );

    \I__728\ : InMux
    port map (
            O => \N__5377\,
            I => \N__5368\
        );

    \I__727\ : Span12Mux_s7_h
    port map (
            O => \N__5374\,
            I => \N__5365\
        );

    \I__726\ : LocalMux
    port map (
            O => \N__5371\,
            I => \N__5362\
        );

    \I__725\ : LocalMux
    port map (
            O => \N__5368\,
            I => \I_DUT.U_1.un8_done\
        );

    \I__724\ : Odrv12
    port map (
            O => \N__5365\,
            I => \I_DUT.U_1.un8_done\
        );

    \I__723\ : Odrv4
    port map (
            O => \N__5362\,
            I => \I_DUT.U_1.un8_done\
        );

    \I__722\ : InMux
    port map (
            O => \N__5355\,
            I => \N__5347\
        );

    \I__721\ : InMux
    port map (
            O => \N__5354\,
            I => \N__5347\
        );

    \I__720\ : InMux
    port map (
            O => \N__5353\,
            I => \N__5344\
        );

    \I__719\ : InMux
    port map (
            O => \N__5352\,
            I => \N__5341\
        );

    \I__718\ : LocalMux
    port map (
            O => \N__5347\,
            I => \N__5338\
        );

    \I__717\ : LocalMux
    port map (
            O => \N__5344\,
            I => \I_DUT.U_1.done_waitZ0Z_0\
        );

    \I__716\ : LocalMux
    port map (
            O => \N__5341\,
            I => \I_DUT.U_1.done_waitZ0Z_0\
        );

    \I__715\ : Odrv4
    port map (
            O => \N__5338\,
            I => \I_DUT.U_1.done_waitZ0Z_0\
        );

    \I__714\ : CascadeMux
    port map (
            O => \N__5331\,
            I => \CONSTANT_ONE_NET_cascade_\
        );

    \I__713\ : InMux
    port map (
            O => \N__5328\,
            I => \N__5325\
        );

    \I__712\ : LocalMux
    port map (
            O => \N__5325\,
            I => \I_DUT.fpga_m_ret_5_RNI0PRE1_0\
        );

    \I__711\ : InMux
    port map (
            O => \N__5322\,
            I => \N__5318\
        );

    \I__710\ : InMux
    port map (
            O => \N__5321\,
            I => \N__5315\
        );

    \I__709\ : LocalMux
    port map (
            O => \N__5318\,
            I => \N__5310\
        );

    \I__708\ : LocalMux
    port map (
            O => \N__5315\,
            I => \N__5310\
        );

    \I__707\ : Odrv12
    port map (
            O => \N__5310\,
            I => i_fpga_sck_c
        );

    \I__706\ : CEMux
    port map (
            O => \N__5307\,
            I => \N__5304\
        );

    \I__705\ : LocalMux
    port map (
            O => \N__5304\,
            I => \N__5301\
        );

    \I__704\ : Span4Mux_v
    port map (
            O => \N__5301\,
            I => \N__5298\
        );

    \I__703\ : Odrv4
    port map (
            O => \N__5298\,
            I => \I_DUT.U_1.un2_done_0_i\
        );

    \I__702\ : IoInMux
    port map (
            O => \N__5295\,
            I => \N__5292\
        );

    \I__701\ : LocalMux
    port map (
            O => \N__5292\,
            I => \U_4.ODInstLegalizeSB_DFFNet\
        );

    \I__700\ : IoInMux
    port map (
            O => \N__5289\,
            I => \N__5286\
        );

    \I__699\ : LocalMux
    port map (
            O => \N__5286\,
            I => \U_7.ODInstLegalizeSB_DFFNet\
        );

    \I__698\ : IoInMux
    port map (
            O => \N__5283\,
            I => \N__5280\
        );

    \I__697\ : LocalMux
    port map (
            O => \N__5280\,
            I => \io_fpga_miso_obuftAndNet\
        );

    \I__696\ : InMux
    port map (
            O => \N__5277\,
            I => \N__5274\
        );

    \I__695\ : LocalMux
    port map (
            O => \N__5274\,
            I => \io_fpga_miso_obuftLegalizeSB_DFFNet\
        );

    \I__694\ : IoInMux
    port map (
            O => \N__5271\,
            I => \N__5268\
        );

    \I__693\ : LocalMux
    port map (
            O => \N__5268\,
            I => \o_fram_ncs_obuf_0LegalizeSB_DFFNet\
        );

    \I__692\ : IoInMux
    port map (
            O => \N__5265\,
            I => \N__5262\
        );

    \I__691\ : LocalMux
    port map (
            O => \N__5262\,
            I => \o_fram_ncs_obuf_1LegalizeSB_DFFNet\
        );

    \I__690\ : CascadeMux
    port map (
            O => \N__5259\,
            I => \N__5256\
        );

    \I__689\ : InMux
    port map (
            O => \N__5256\,
            I => \N__5253\
        );

    \I__688\ : LocalMux
    port map (
            O => \N__5253\,
            I => \N__5250\
        );

    \I__687\ : Odrv12
    port map (
            O => \N__5250\,
            I => \I_DUT.U_1.un3_go_0_I_33_c_RNO\
        );

    \I__686\ : InMux
    port map (
            O => \N__5247\,
            I => \N__5244\
        );

    \I__685\ : LocalMux
    port map (
            O => \N__5244\,
            I => \I_DUT.U_1.un3_go_0_I_39_c_RNO\
        );

    \I__684\ : InMux
    port map (
            O => \N__5241\,
            I => \N__5238\
        );

    \I__683\ : LocalMux
    port map (
            O => \N__5238\,
            I => \I_DUT.U_1.un3_go_0_I_45_c_RNO\
        );

    \I__682\ : CascadeMux
    port map (
            O => \N__5235\,
            I => \N__5232\
        );

    \I__681\ : InMux
    port map (
            O => \N__5232\,
            I => \N__5229\
        );

    \I__680\ : LocalMux
    port map (
            O => \N__5229\,
            I => \I_DUT.U_1.un3_go_0_I_51_c_RNO\
        );

    \I__679\ : CascadeMux
    port map (
            O => \N__5226\,
            I => \N__5223\
        );

    \I__678\ : InMux
    port map (
            O => \N__5223\,
            I => \N__5220\
        );

    \I__677\ : LocalMux
    port map (
            O => \N__5220\,
            I => \N__5217\
        );

    \I__676\ : Odrv4
    port map (
            O => \N__5217\,
            I => \I_DUT.U_1.un3_go_0_I_57_c_RNO\
        );

    \I__675\ : InMux
    port map (
            O => \N__5214\,
            I => \I_DUT.U_1.un3_go_0_N_2\
        );

    \I__674\ : InMux
    port map (
            O => \N__5211\,
            I => \N__5208\
        );

    \I__673\ : LocalMux
    port map (
            O => \N__5208\,
            I => i_fpga_mosi_c
        );

    \I__672\ : InMux
    port map (
            O => \N__5205\,
            I => \N__5202\
        );

    \I__671\ : LocalMux
    port map (
            O => \N__5202\,
            I => \N__5199\
        );

    \I__670\ : Span4Mux_h
    port map (
            O => \N__5199\,
            I => \N__5196\
        );

    \I__669\ : Odrv4
    port map (
            O => \N__5196\,
            I => \I_DUT.U_1.O_15\
        );

    \I__668\ : CascadeMux
    port map (
            O => \N__5193\,
            I => \N__5190\
        );

    \I__667\ : InMux
    port map (
            O => \N__5190\,
            I => \N__5187\
        );

    \I__666\ : LocalMux
    port map (
            O => \N__5187\,
            I => \I_DUT.U_1.memoryTrigTest_16\
        );

    \I__665\ : InMux
    port map (
            O => \N__5184\,
            I => \N__5180\
        );

    \I__664\ : InMux
    port map (
            O => \N__5183\,
            I => \N__5177\
        );

    \I__663\ : LocalMux
    port map (
            O => \N__5180\,
            I => \N__5174\
        );

    \I__662\ : LocalMux
    port map (
            O => \N__5177\,
            I => \I_DUT.U_1.count_preTrigZ0Z_17\
        );

    \I__661\ : Odrv4
    port map (
            O => \N__5174\,
            I => \I_DUT.U_1.count_preTrigZ0Z_17\
        );

    \I__660\ : InMux
    port map (
            O => \N__5169\,
            I => \N__5165\
        );

    \I__659\ : InMux
    port map (
            O => \N__5168\,
            I => \N__5162\
        );

    \I__658\ : LocalMux
    port map (
            O => \N__5165\,
            I => \N__5159\
        );

    \I__657\ : LocalMux
    port map (
            O => \N__5162\,
            I => \I_DUT.U_1.count_preTrigZ0Z_16\
        );

    \I__656\ : Odrv4
    port map (
            O => \N__5159\,
            I => \I_DUT.U_1.count_preTrigZ0Z_16\
        );

    \I__655\ : CascadeMux
    port map (
            O => \N__5154\,
            I => \I_DUT.U_1.memoryTrigTest_16_cascade_\
        );

    \I__654\ : InMux
    port map (
            O => \N__5151\,
            I => \N__5147\
        );

    \I__653\ : InMux
    port map (
            O => \N__5150\,
            I => \N__5144\
        );

    \I__652\ : LocalMux
    port map (
            O => \N__5147\,
            I => \I_DUT.U_1.memoryTrigTest_17\
        );

    \I__651\ : LocalMux
    port map (
            O => \N__5144\,
            I => \I_DUT.U_1.memoryTrigTest_17\
        );

    \I__650\ : InMux
    port map (
            O => \N__5139\,
            I => \N__5136\
        );

    \I__649\ : LocalMux
    port map (
            O => \N__5136\,
            I => \N__5133\
        );

    \I__648\ : Span4Mux_h
    port map (
            O => \N__5133\,
            I => \N__5130\
        );

    \I__647\ : Odrv4
    port map (
            O => \N__5130\,
            I => \I_DUT.U_1.O_11\
        );

    \I__646\ : InMux
    port map (
            O => \N__5127\,
            I => \N__5121\
        );

    \I__645\ : InMux
    port map (
            O => \N__5126\,
            I => \N__5121\
        );

    \I__644\ : LocalMux
    port map (
            O => \N__5121\,
            I => \I_DUT.U_1.memoryTrigTest_12\
        );

    \I__643\ : IoInMux
    port map (
            O => \N__5118\,
            I => \N__5115\
        );

    \I__642\ : LocalMux
    port map (
            O => \N__5115\,
            I => \U_8.ODInstLegalizeSB_DFFNet\
        );

    \I__641\ : CascadeMux
    port map (
            O => \N__5112\,
            I => \N__5109\
        );

    \I__640\ : InMux
    port map (
            O => \N__5109\,
            I => \N__5106\
        );

    \I__639\ : LocalMux
    port map (
            O => \N__5106\,
            I => \N__5103\
        );

    \I__638\ : Span4Mux_h
    port map (
            O => \N__5103\,
            I => \N__5100\
        );

    \I__637\ : Odrv4
    port map (
            O => \N__5100\,
            I => \I_DUT.U_1.un3_go_0_I_1_c_RNO\
        );

    \I__636\ : CascadeMux
    port map (
            O => \N__5097\,
            I => \N__5094\
        );

    \I__635\ : InMux
    port map (
            O => \N__5094\,
            I => \N__5091\
        );

    \I__634\ : LocalMux
    port map (
            O => \N__5091\,
            I => \I_DUT.U_1.un3_go_0_I_9_c_RNO\
        );

    \I__633\ : InMux
    port map (
            O => \N__5088\,
            I => \N__5085\
        );

    \I__632\ : LocalMux
    port map (
            O => \N__5085\,
            I => \N__5082\
        );

    \I__631\ : Odrv4
    port map (
            O => \N__5082\,
            I => \I_DUT.U_1.un3_go_0_I_15_c_RNO\
        );

    \I__630\ : CascadeMux
    port map (
            O => \N__5079\,
            I => \N__5076\
        );

    \I__629\ : InMux
    port map (
            O => \N__5076\,
            I => \N__5073\
        );

    \I__628\ : LocalMux
    port map (
            O => \N__5073\,
            I => \N__5070\
        );

    \I__627\ : Odrv4
    port map (
            O => \N__5070\,
            I => \I_DUT.U_1.un3_go_0_I_21_c_RNO\
        );

    \I__626\ : CascadeMux
    port map (
            O => \N__5067\,
            I => \N__5064\
        );

    \I__625\ : InMux
    port map (
            O => \N__5064\,
            I => \N__5061\
        );

    \I__624\ : LocalMux
    port map (
            O => \N__5061\,
            I => \I_DUT.U_1.un3_go_0_I_27_c_RNO\
        );

    \I__623\ : InMux
    port map (
            O => \N__5058\,
            I => \N__5054\
        );

    \I__622\ : InMux
    port map (
            O => \N__5057\,
            I => \N__5051\
        );

    \I__621\ : LocalMux
    port map (
            O => \N__5054\,
            I => \N__5048\
        );

    \I__620\ : LocalMux
    port map (
            O => \N__5051\,
            I => \I_DUT.U_1.count_preTrigZ0Z_18\
        );

    \I__619\ : Odrv4
    port map (
            O => \N__5048\,
            I => \I_DUT.U_1.count_preTrigZ0Z_18\
        );

    \I__618\ : CEMux
    port map (
            O => \N__5043\,
            I => \N__5034\
        );

    \I__617\ : CEMux
    port map (
            O => \N__5042\,
            I => \N__5034\
        );

    \I__616\ : CEMux
    port map (
            O => \N__5041\,
            I => \N__5034\
        );

    \I__615\ : GlobalMux
    port map (
            O => \N__5034\,
            I => \N__5031\
        );

    \I__614\ : gio2CtrlBuf
    port map (
            O => \N__5031\,
            I => \I_DUT.U_1.N_24_g\
        );

    \I__613\ : InMux
    port map (
            O => \N__5028\,
            I => \N__5025\
        );

    \I__612\ : LocalMux
    port map (
            O => \N__5025\,
            I => \N__5021\
        );

    \I__611\ : InMux
    port map (
            O => \N__5024\,
            I => \N__5018\
        );

    \I__610\ : Span4Mux_h
    port map (
            O => \N__5021\,
            I => \N__5015\
        );

    \I__609\ : LocalMux
    port map (
            O => \N__5018\,
            I => \I_DUT.U_1.count_preTrigZ0Z_14\
        );

    \I__608\ : Odrv4
    port map (
            O => \N__5015\,
            I => \I_DUT.U_1.count_preTrigZ0Z_14\
        );

    \I__607\ : InMux
    port map (
            O => \N__5010\,
            I => \N__5006\
        );

    \I__606\ : InMux
    port map (
            O => \N__5009\,
            I => \N__5003\
        );

    \I__605\ : LocalMux
    port map (
            O => \N__5006\,
            I => \N__5000\
        );

    \I__604\ : LocalMux
    port map (
            O => \N__5003\,
            I => \I_DUT.U_1.memoryTrigTest_15\
        );

    \I__603\ : Odrv4
    port map (
            O => \N__5000\,
            I => \I_DUT.U_1.memoryTrigTest_15\
        );

    \I__602\ : CascadeMux
    port map (
            O => \N__4995\,
            I => \N__4992\
        );

    \I__601\ : InMux
    port map (
            O => \N__4992\,
            I => \N__4989\
        );

    \I__600\ : LocalMux
    port map (
            O => \N__4989\,
            I => \N__4985\
        );

    \I__599\ : InMux
    port map (
            O => \N__4988\,
            I => \N__4982\
        );

    \I__598\ : Span4Mux_h
    port map (
            O => \N__4985\,
            I => \N__4979\
        );

    \I__597\ : LocalMux
    port map (
            O => \N__4982\,
            I => \I_DUT.U_1.count_preTrigZ0Z_15\
        );

    \I__596\ : Odrv4
    port map (
            O => \N__4979\,
            I => \I_DUT.U_1.count_preTrigZ0Z_15\
        );

    \I__595\ : InMux
    port map (
            O => \N__4974\,
            I => \N__4970\
        );

    \I__594\ : InMux
    port map (
            O => \N__4973\,
            I => \N__4967\
        );

    \I__593\ : LocalMux
    port map (
            O => \N__4970\,
            I => \I_DUT.U_1.memoryTrigTest_14\
        );

    \I__592\ : LocalMux
    port map (
            O => \N__4967\,
            I => \I_DUT.U_1.memoryTrigTest_14\
        );

    \I__591\ : InMux
    port map (
            O => \N__4962\,
            I => \N__4959\
        );

    \I__590\ : LocalMux
    port map (
            O => \N__4959\,
            I => \N__4956\
        );

    \I__589\ : Span4Mux_v
    port map (
            O => \N__4956\,
            I => \N__4953\
        );

    \I__588\ : Odrv4
    port map (
            O => \N__4953\,
            I => \I_DUT.U_1.O_1\
        );

    \I__587\ : InMux
    port map (
            O => \N__4950\,
            I => \N__4947\
        );

    \I__586\ : LocalMux
    port map (
            O => \N__4947\,
            I => \I_DUT.U_1.memoryTrigTest_2\
        );

    \I__585\ : InMux
    port map (
            O => \N__4944\,
            I => \N__4940\
        );

    \I__584\ : InMux
    port map (
            O => \N__4943\,
            I => \N__4937\
        );

    \I__583\ : LocalMux
    port map (
            O => \N__4940\,
            I => \N__4934\
        );

    \I__582\ : LocalMux
    port map (
            O => \N__4937\,
            I => \I_DUT.U_1.count_preTrigZ0Z_2\
        );

    \I__581\ : Odrv4
    port map (
            O => \N__4934\,
            I => \I_DUT.U_1.count_preTrigZ0Z_2\
        );

    \I__580\ : InMux
    port map (
            O => \N__4929\,
            I => \N__4925\
        );

    \I__579\ : InMux
    port map (
            O => \N__4928\,
            I => \N__4922\
        );

    \I__578\ : LocalMux
    port map (
            O => \N__4925\,
            I => \N__4919\
        );

    \I__577\ : LocalMux
    port map (
            O => \N__4922\,
            I => \I_DUT.U_1.count_preTrigZ0Z_3\
        );

    \I__576\ : Odrv4
    port map (
            O => \N__4919\,
            I => \I_DUT.U_1.count_preTrigZ0Z_3\
        );

    \I__575\ : CascadeMux
    port map (
            O => \N__4914\,
            I => \I_DUT.U_1.memoryTrigTest_2_cascade_\
        );

    \I__574\ : InMux
    port map (
            O => \N__4911\,
            I => \N__4907\
        );

    \I__573\ : InMux
    port map (
            O => \N__4910\,
            I => \N__4904\
        );

    \I__572\ : LocalMux
    port map (
            O => \N__4907\,
            I => \N__4899\
        );

    \I__571\ : LocalMux
    port map (
            O => \N__4904\,
            I => \N__4899\
        );

    \I__570\ : Odrv4
    port map (
            O => \N__4899\,
            I => \I_DUT.U_1.memoryTrigTest_3\
        );

    \I__569\ : IoInMux
    port map (
            O => \N__4896\,
            I => \N__4893\
        );

    \I__568\ : LocalMux
    port map (
            O => \N__4893\,
            I => \N__4890\
        );

    \I__567\ : Span4Mux_s1_v
    port map (
            O => \N__4890\,
            I => \N__4887\
        );

    \I__566\ : Span4Mux_v
    port map (
            O => \N__4887\,
            I => \N__4884\
        );

    \I__565\ : Span4Mux_v
    port map (
            O => \N__4884\,
            I => \N__4881\
        );

    \I__564\ : Span4Mux_h
    port map (
            O => \N__4881\,
            I => \N__4878\
        );

    \I__563\ : Span4Mux_h
    port map (
            O => \N__4878\,
            I => \N__4875\
        );

    \I__562\ : Span4Mux_h
    port map (
            O => \N__4875\,
            I => \N__4872\
        );

    \I__561\ : Span4Mux_h
    port map (
            O => \N__4872\,
            I => \N__4869\
        );

    \I__560\ : Odrv4
    port map (
            O => \N__4869\,
            I => \I_DUT.U_1.un13_count_pretrig\
        );

    \I__559\ : InMux
    port map (
            O => \N__4866\,
            I => \N__4863\
        );

    \I__558\ : LocalMux
    port map (
            O => \N__4863\,
            I => \N__4860\
        );

    \I__557\ : Span4Mux_v
    port map (
            O => \N__4860\,
            I => \N__4857\
        );

    \I__556\ : Odrv4
    port map (
            O => \N__4857\,
            I => \I_DUT.U_1.O_8\
        );

    \I__555\ : CascadeMux
    port map (
            O => \N__4854\,
            I => \N__4851\
        );

    \I__554\ : InMux
    port map (
            O => \N__4851\,
            I => \N__4848\
        );

    \I__553\ : LocalMux
    port map (
            O => \N__4848\,
            I => \I_DUT.U_1.memoryTrigTest_9\
        );

    \I__552\ : InMux
    port map (
            O => \N__4845\,
            I => \N__4842\
        );

    \I__551\ : LocalMux
    port map (
            O => \N__4842\,
            I => \N__4838\
        );

    \I__550\ : InMux
    port map (
            O => \N__4841\,
            I => \N__4835\
        );

    \I__549\ : Span4Mux_h
    port map (
            O => \N__4838\,
            I => \N__4832\
        );

    \I__548\ : LocalMux
    port map (
            O => \N__4835\,
            I => \I_DUT.U_1.count_preTrigZ0Z_9\
        );

    \I__547\ : Odrv4
    port map (
            O => \N__4832\,
            I => \I_DUT.U_1.count_preTrigZ0Z_9\
        );

    \I__546\ : InMux
    port map (
            O => \N__4827\,
            I => \N__4823\
        );

    \I__545\ : InMux
    port map (
            O => \N__4826\,
            I => \N__4820\
        );

    \I__544\ : LocalMux
    port map (
            O => \N__4823\,
            I => \I_DUT.U_1.memoryTrigTest_8\
        );

    \I__543\ : LocalMux
    port map (
            O => \N__4820\,
            I => \I_DUT.U_1.memoryTrigTest_8\
        );

    \I__542\ : CascadeMux
    port map (
            O => \N__4815\,
            I => \I_DUT.U_1.memoryTrigTest_9_cascade_\
        );

    \I__541\ : InMux
    port map (
            O => \N__4812\,
            I => \N__4808\
        );

    \I__540\ : InMux
    port map (
            O => \N__4811\,
            I => \N__4805\
        );

    \I__539\ : LocalMux
    port map (
            O => \N__4808\,
            I => \N__4802\
        );

    \I__538\ : LocalMux
    port map (
            O => \N__4805\,
            I => \I_DUT.U_1.count_preTrigZ0Z_8\
        );

    \I__537\ : Odrv4
    port map (
            O => \N__4802\,
            I => \I_DUT.U_1.count_preTrigZ0Z_8\
        );

    \I__536\ : InMux
    port map (
            O => \N__4797\,
            I => \N__4794\
        );

    \I__535\ : LocalMux
    port map (
            O => \N__4794\,
            I => \N__4790\
        );

    \I__534\ : InMux
    port map (
            O => \N__4793\,
            I => \N__4787\
        );

    \I__533\ : Span4Mux_h
    port map (
            O => \N__4790\,
            I => \N__4784\
        );

    \I__532\ : LocalMux
    port map (
            O => \N__4787\,
            I => \I_DUT.U_1.count_preTrigZ0Z_12\
        );

    \I__531\ : Odrv4
    port map (
            O => \N__4784\,
            I => \I_DUT.U_1.count_preTrigZ0Z_12\
        );

    \I__530\ : CascadeMux
    port map (
            O => \N__4779\,
            I => \N__4776\
        );

    \I__529\ : InMux
    port map (
            O => \N__4776\,
            I => \N__4772\
        );

    \I__528\ : InMux
    port map (
            O => \N__4775\,
            I => \N__4769\
        );

    \I__527\ : LocalMux
    port map (
            O => \N__4772\,
            I => \N__4766\
        );

    \I__526\ : LocalMux
    port map (
            O => \N__4769\,
            I => \I_DUT.U_1.count_preTrigZ0Z_13\
        );

    \I__525\ : Odrv4
    port map (
            O => \N__4766\,
            I => \I_DUT.U_1.count_preTrigZ0Z_13\
        );

    \I__524\ : InMux
    port map (
            O => \N__4761\,
            I => \N__4757\
        );

    \I__523\ : InMux
    port map (
            O => \N__4760\,
            I => \N__4754\
        );

    \I__522\ : LocalMux
    port map (
            O => \N__4757\,
            I => \I_DUT.U_1.memoryTrigTest_13\
        );

    \I__521\ : LocalMux
    port map (
            O => \N__4754\,
            I => \I_DUT.U_1.memoryTrigTest_13\
        );

    \I__520\ : InMux
    port map (
            O => \N__4749\,
            I => \N__4745\
        );

    \I__519\ : InMux
    port map (
            O => \N__4748\,
            I => \N__4742\
        );

    \I__518\ : LocalMux
    port map (
            O => \N__4745\,
            I => \N__4739\
        );

    \I__517\ : LocalMux
    port map (
            O => \N__4742\,
            I => \I_DUT.U_1.count_preTrigZ0Z_10\
        );

    \I__516\ : Odrv4
    port map (
            O => \N__4739\,
            I => \I_DUT.U_1.count_preTrigZ0Z_10\
        );

    \I__515\ : InMux
    port map (
            O => \N__4734\,
            I => \I_DUT.U_1.count_preTrig_cry_9\
        );

    \I__514\ : InMux
    port map (
            O => \N__4731\,
            I => \N__4728\
        );

    \I__513\ : LocalMux
    port map (
            O => \N__4728\,
            I => \N__4724\
        );

    \I__512\ : InMux
    port map (
            O => \N__4727\,
            I => \N__4721\
        );

    \I__511\ : Span4Mux_s2_h
    port map (
            O => \N__4724\,
            I => \N__4718\
        );

    \I__510\ : LocalMux
    port map (
            O => \N__4721\,
            I => \I_DUT.U_1.count_preTrigZ0Z_11\
        );

    \I__509\ : Odrv4
    port map (
            O => \N__4718\,
            I => \I_DUT.U_1.count_preTrigZ0Z_11\
        );

    \I__508\ : InMux
    port map (
            O => \N__4713\,
            I => \I_DUT.U_1.count_preTrig_cry_10\
        );

    \I__507\ : InMux
    port map (
            O => \N__4710\,
            I => \I_DUT.U_1.count_preTrig_cry_11\
        );

    \I__506\ : InMux
    port map (
            O => \N__4707\,
            I => \I_DUT.U_1.count_preTrig_cry_12\
        );

    \I__505\ : InMux
    port map (
            O => \N__4704\,
            I => \I_DUT.U_1.count_preTrig_cry_13\
        );

    \I__504\ : InMux
    port map (
            O => \N__4701\,
            I => \I_DUT.U_1.count_preTrig_cry_14\
        );

    \I__503\ : InMux
    port map (
            O => \N__4698\,
            I => \bfn_2_16_0_\
        );

    \I__502\ : InMux
    port map (
            O => \N__4695\,
            I => \I_DUT.U_1.count_preTrig_cry_16\
        );

    \I__501\ : InMux
    port map (
            O => \N__4692\,
            I => \I_DUT.U_1.count_preTrig_cry_17\
        );

    \I__500\ : InMux
    port map (
            O => \N__4689\,
            I => \N__4685\
        );

    \I__499\ : InMux
    port map (
            O => \N__4688\,
            I => \N__4682\
        );

    \I__498\ : LocalMux
    port map (
            O => \N__4685\,
            I => \I_DUT.U_1.count_preTrigZ0Z_1\
        );

    \I__497\ : LocalMux
    port map (
            O => \N__4682\,
            I => \I_DUT.U_1.count_preTrigZ0Z_1\
        );

    \I__496\ : InMux
    port map (
            O => \N__4677\,
            I => \I_DUT.U_1.count_preTrig_cry_0\
        );

    \I__495\ : InMux
    port map (
            O => \N__4674\,
            I => \I_DUT.U_1.count_preTrig_cry_1\
        );

    \I__494\ : InMux
    port map (
            O => \N__4671\,
            I => \I_DUT.U_1.count_preTrig_cry_2\
        );

    \I__493\ : InMux
    port map (
            O => \N__4668\,
            I => \N__4664\
        );

    \I__492\ : InMux
    port map (
            O => \N__4667\,
            I => \N__4661\
        );

    \I__491\ : LocalMux
    port map (
            O => \N__4664\,
            I => \N__4658\
        );

    \I__490\ : LocalMux
    port map (
            O => \N__4661\,
            I => \I_DUT.U_1.count_preTrigZ0Z_4\
        );

    \I__489\ : Odrv4
    port map (
            O => \N__4658\,
            I => \I_DUT.U_1.count_preTrigZ0Z_4\
        );

    \I__488\ : InMux
    port map (
            O => \N__4653\,
            I => \I_DUT.U_1.count_preTrig_cry_3\
        );

    \I__487\ : CascadeMux
    port map (
            O => \N__4650\,
            I => \N__4647\
        );

    \I__486\ : InMux
    port map (
            O => \N__4647\,
            I => \N__4643\
        );

    \I__485\ : InMux
    port map (
            O => \N__4646\,
            I => \N__4640\
        );

    \I__484\ : LocalMux
    port map (
            O => \N__4643\,
            I => \N__4637\
        );

    \I__483\ : LocalMux
    port map (
            O => \N__4640\,
            I => \I_DUT.U_1.count_preTrigZ0Z_5\
        );

    \I__482\ : Odrv4
    port map (
            O => \N__4637\,
            I => \I_DUT.U_1.count_preTrigZ0Z_5\
        );

    \I__481\ : InMux
    port map (
            O => \N__4632\,
            I => \I_DUT.U_1.count_preTrig_cry_4\
        );

    \I__480\ : InMux
    port map (
            O => \N__4629\,
            I => \N__4625\
        );

    \I__479\ : InMux
    port map (
            O => \N__4628\,
            I => \N__4622\
        );

    \I__478\ : LocalMux
    port map (
            O => \N__4625\,
            I => \N__4619\
        );

    \I__477\ : LocalMux
    port map (
            O => \N__4622\,
            I => \I_DUT.U_1.count_preTrigZ0Z_6\
        );

    \I__476\ : Odrv4
    port map (
            O => \N__4619\,
            I => \I_DUT.U_1.count_preTrigZ0Z_6\
        );

    \I__475\ : InMux
    port map (
            O => \N__4614\,
            I => \I_DUT.U_1.count_preTrig_cry_5\
        );

    \I__474\ : InMux
    port map (
            O => \N__4611\,
            I => \N__4608\
        );

    \I__473\ : LocalMux
    port map (
            O => \N__4608\,
            I => \N__4604\
        );

    \I__472\ : InMux
    port map (
            O => \N__4607\,
            I => \N__4601\
        );

    \I__471\ : Span4Mux_s3_h
    port map (
            O => \N__4604\,
            I => \N__4598\
        );

    \I__470\ : LocalMux
    port map (
            O => \N__4601\,
            I => \I_DUT.U_1.count_preTrigZ0Z_7\
        );

    \I__469\ : Odrv4
    port map (
            O => \N__4598\,
            I => \I_DUT.U_1.count_preTrigZ0Z_7\
        );

    \I__468\ : InMux
    port map (
            O => \N__4593\,
            I => \I_DUT.U_1.count_preTrig_cry_6\
        );

    \I__467\ : InMux
    port map (
            O => \N__4590\,
            I => \bfn_2_15_0_\
        );

    \I__466\ : InMux
    port map (
            O => \N__4587\,
            I => \I_DUT.U_1.count_preTrig_cry_8\
        );

    \I__465\ : InMux
    port map (
            O => \N__4584\,
            I => \N__4580\
        );

    \I__464\ : InMux
    port map (
            O => \N__4583\,
            I => \N__4577\
        );

    \I__463\ : LocalMux
    port map (
            O => \N__4580\,
            I => \I_DUT.U_1.memoryTrigTest_5\
        );

    \I__462\ : LocalMux
    port map (
            O => \N__4577\,
            I => \I_DUT.U_1.memoryTrigTest_5\
        );

    \I__461\ : InMux
    port map (
            O => \N__4572\,
            I => \N__4568\
        );

    \I__460\ : InMux
    port map (
            O => \N__4571\,
            I => \N__4565\
        );

    \I__459\ : LocalMux
    port map (
            O => \N__4568\,
            I => \I_DUT.U_1.memoryTrigTest_4\
        );

    \I__458\ : LocalMux
    port map (
            O => \N__4565\,
            I => \I_DUT.U_1.memoryTrigTest_4\
        );

    \I__457\ : InMux
    port map (
            O => \N__4560\,
            I => \N__4557\
        );

    \I__456\ : LocalMux
    port map (
            O => \N__4557\,
            I => \N__4554\
        );

    \I__455\ : Odrv4
    port map (
            O => \N__4554\,
            I => \I_DUT.U_1.O_7\
        );

    \I__454\ : InMux
    port map (
            O => \N__4551\,
            I => \N__4548\
        );

    \I__453\ : LocalMux
    port map (
            O => \N__4548\,
            I => \N__4545\
        );

    \I__452\ : Span4Mux_h
    port map (
            O => \N__4545\,
            I => \N__4542\
        );

    \I__451\ : Odrv4
    port map (
            O => \N__4542\,
            I => \I_DUT.U_1.O_17\
        );

    \I__450\ : CascadeMux
    port map (
            O => \N__4539\,
            I => \N__4536\
        );

    \I__449\ : InMux
    port map (
            O => \N__4536\,
            I => \N__4533\
        );

    \I__448\ : LocalMux
    port map (
            O => \N__4533\,
            I => \I_DUT.U_1.memoryTrigTest_18\
        );

    \I__447\ : CascadeMux
    port map (
            O => \N__4530\,
            I => \I_DUT.U_1.memoryTrigTest_18_cascade_\
        );

    \I__446\ : InMux
    port map (
            O => \N__4527\,
            I => \N__4524\
        );

    \I__445\ : LocalMux
    port map (
            O => \N__4524\,
            I => \N__4521\
        );

    \I__444\ : Span4Mux_h
    port map (
            O => \N__4521\,
            I => \N__4518\
        );

    \I__443\ : Odrv4
    port map (
            O => \N__4518\,
            I => \I_DUT.U_1.O_16\
        );

    \I__442\ : InMux
    port map (
            O => \N__4515\,
            I => \N__4512\
        );

    \I__441\ : LocalMux
    port map (
            O => \N__4512\,
            I => \N__4509\
        );

    \I__440\ : Span4Mux_h
    port map (
            O => \N__4509\,
            I => \N__4506\
        );

    \I__439\ : Odrv4
    port map (
            O => \N__4506\,
            I => \I_DUT.U_1.O_13\
        );

    \I__438\ : InMux
    port map (
            O => \N__4503\,
            I => \N__4500\
        );

    \I__437\ : LocalMux
    port map (
            O => \N__4500\,
            I => \N__4497\
        );

    \I__436\ : Span4Mux_h
    port map (
            O => \N__4497\,
            I => \N__4494\
        );

    \I__435\ : Odrv4
    port map (
            O => \N__4494\,
            I => \I_DUT.U_1.O_12\
        );

    \I__434\ : InMux
    port map (
            O => \N__4491\,
            I => \N__4487\
        );

    \I__433\ : InMux
    port map (
            O => \N__4490\,
            I => \N__4484\
        );

    \I__432\ : LocalMux
    port map (
            O => \N__4487\,
            I => \I_DUT.U_1.count_preTrigZ0Z_0\
        );

    \I__431\ : LocalMux
    port map (
            O => \N__4484\,
            I => \I_DUT.U_1.count_preTrigZ0Z_0\
        );

    \I__430\ : InMux
    port map (
            O => \N__4479\,
            I => \bfn_2_14_0_\
        );

    \I__429\ : InMux
    port map (
            O => \N__4476\,
            I => \N__4473\
        );

    \I__428\ : LocalMux
    port map (
            O => \N__4473\,
            I => \I_DUT.U_1.O_3\
        );

    \I__427\ : InMux
    port map (
            O => \N__4470\,
            I => \N__4466\
        );

    \I__426\ : InMux
    port map (
            O => \N__4469\,
            I => \N__4463\
        );

    \I__425\ : LocalMux
    port map (
            O => \N__4466\,
            I => \I_DUT.preTriggerValue_0\
        );

    \I__424\ : LocalMux
    port map (
            O => \N__4463\,
            I => \I_DUT.preTriggerValue_0\
        );

    \I__423\ : InMux
    port map (
            O => \N__4458\,
            I => \N__4454\
        );

    \I__422\ : InMux
    port map (
            O => \N__4457\,
            I => \N__4451\
        );

    \I__421\ : LocalMux
    port map (
            O => \N__4454\,
            I => \I_DUT.preTriggerValue_1\
        );

    \I__420\ : LocalMux
    port map (
            O => \N__4451\,
            I => \I_DUT.preTriggerValue_1\
        );

    \I__419\ : InMux
    port map (
            O => \N__4446\,
            I => \N__4442\
        );

    \I__418\ : InMux
    port map (
            O => \N__4445\,
            I => \N__4439\
        );

    \I__417\ : LocalMux
    port map (
            O => \N__4442\,
            I => \I_DUT.preTriggerValue_2\
        );

    \I__416\ : LocalMux
    port map (
            O => \N__4439\,
            I => \I_DUT.preTriggerValue_2\
        );

    \I__415\ : InMux
    port map (
            O => \N__4434\,
            I => \N__4430\
        );

    \I__414\ : InMux
    port map (
            O => \N__4433\,
            I => \N__4427\
        );

    \I__413\ : LocalMux
    port map (
            O => \N__4430\,
            I => \I_DUT.preTriggerValue_3\
        );

    \I__412\ : LocalMux
    port map (
            O => \N__4427\,
            I => \I_DUT.preTriggerValue_3\
        );

    \I__411\ : IoInMux
    port map (
            O => \N__4422\,
            I => \N__4419\
        );

    \I__410\ : LocalMux
    port map (
            O => \N__4419\,
            I => \N__4416\
        );

    \I__409\ : IoSpan4Mux
    port map (
            O => \N__4416\,
            I => \N__4413\
        );

    \I__408\ : Span4Mux_s3_v
    port map (
            O => \N__4413\,
            I => \N__4408\
        );

    \I__407\ : InMux
    port map (
            O => \N__4412\,
            I => \N__4405\
        );

    \I__406\ : InMux
    port map (
            O => \N__4411\,
            I => \N__4402\
        );

    \I__405\ : Odrv4
    port map (
            O => \N__4408\,
            I => cal_o_1
        );

    \I__404\ : LocalMux
    port map (
            O => \N__4405\,
            I => cal_o_1
        );

    \I__403\ : LocalMux
    port map (
            O => \N__4402\,
            I => cal_o_1
        );

    \I__402\ : InMux
    port map (
            O => \N__4395\,
            I => \N__4391\
        );

    \I__401\ : InMux
    port map (
            O => \N__4394\,
            I => \N__4388\
        );

    \I__400\ : LocalMux
    port map (
            O => \N__4391\,
            I => \I_DUT.preTriggerValue_5\
        );

    \I__399\ : LocalMux
    port map (
            O => \N__4388\,
            I => \I_DUT.preTriggerValue_5\
        );

    \I__398\ : InMux
    port map (
            O => \N__4383\,
            I => \N__4379\
        );

    \I__397\ : InMux
    port map (
            O => \N__4382\,
            I => \N__4376\
        );

    \I__396\ : LocalMux
    port map (
            O => \N__4379\,
            I => \I_DUT.preTriggerValue_6\
        );

    \I__395\ : LocalMux
    port map (
            O => \N__4376\,
            I => \I_DUT.preTriggerValue_6\
        );

    \I__394\ : InMux
    port map (
            O => \N__4371\,
            I => \N__4368\
        );

    \I__393\ : LocalMux
    port map (
            O => \N__4368\,
            I => \I_DUT.preTriggerValue_7\
        );

    \I__392\ : InMux
    port map (
            O => \N__4365\,
            I => \N__4362\
        );

    \I__391\ : LocalMux
    port map (
            O => \N__4362\,
            I => \I_DUT.U_1.O_5\
        );

    \I__390\ : InMux
    port map (
            O => \N__4359\,
            I => \N__4356\
        );

    \I__389\ : LocalMux
    port map (
            O => \N__4356\,
            I => \I_DUT.U_1.memoryTrigTest_6\
        );

    \I__388\ : CascadeMux
    port map (
            O => \N__4353\,
            I => \I_DUT.U_1.memoryTrigTest_6_cascade_\
        );

    \I__387\ : InMux
    port map (
            O => \N__4350\,
            I => \N__4347\
        );

    \I__386\ : LocalMux
    port map (
            O => \N__4347\,
            I => \N__4344\
        );

    \I__385\ : Odrv4
    port map (
            O => \N__4344\,
            I => \I_DUT.U_1.O_9\
        );

    \I__384\ : CascadeMux
    port map (
            O => \N__4341\,
            I => \N__4338\
        );

    \I__383\ : InMux
    port map (
            O => \N__4338\,
            I => \N__4335\
        );

    \I__382\ : LocalMux
    port map (
            O => \N__4335\,
            I => \I_DUT.U_1.memoryTrigTest_10\
        );

    \I__381\ : CascadeMux
    port map (
            O => \N__4332\,
            I => \I_DUT.U_1.memoryTrigTest_10_cascade_\
        );

    \I__380\ : InMux
    port map (
            O => \N__4329\,
            I => \N__4326\
        );

    \I__379\ : LocalMux
    port map (
            O => \N__4326\,
            I => \N__4323\
        );

    \I__378\ : Odrv4
    port map (
            O => \N__4323\,
            I => \I_DUT.U_1.O_14\
        );

    \I__377\ : InMux
    port map (
            O => \N__4320\,
            I => \N__4317\
        );

    \I__376\ : LocalMux
    port map (
            O => \N__4317\,
            I => \I_DUT.U_1.O_10\
        );

    \I__375\ : InMux
    port map (
            O => \N__4314\,
            I => \N__4310\
        );

    \I__374\ : InMux
    port map (
            O => \N__4313\,
            I => \N__4307\
        );

    \I__373\ : LocalMux
    port map (
            O => \N__4310\,
            I => \I_DUT.U_1.memoryTrigTest_11\
        );

    \I__372\ : LocalMux
    port map (
            O => \N__4307\,
            I => \I_DUT.U_1.memoryTrigTest_11\
        );

    \I__371\ : InMux
    port map (
            O => \N__4302\,
            I => \N__4299\
        );

    \I__370\ : LocalMux
    port map (
            O => \N__4299\,
            I => \I_DUT.U_1.O_6\
        );

    \I__369\ : InMux
    port map (
            O => \N__4296\,
            I => \N__4292\
        );

    \I__368\ : InMux
    port map (
            O => \N__4295\,
            I => \N__4289\
        );

    \I__367\ : LocalMux
    port map (
            O => \N__4292\,
            I => \I_DUT.U_1.memoryTrigTest_7\
        );

    \I__366\ : LocalMux
    port map (
            O => \N__4289\,
            I => \I_DUT.U_1.memoryTrigTest_7\
        );

    \I__365\ : InMux
    port map (
            O => \N__4284\,
            I => \N__4281\
        );

    \I__364\ : LocalMux
    port map (
            O => \N__4281\,
            I => \I_DUT.U_1.O_0\
        );

    \I__363\ : InMux
    port map (
            O => \N__4278\,
            I => \N__4275\
        );

    \I__362\ : LocalMux
    port map (
            O => \N__4275\,
            I => \I_DUT.U_1.memoryTrigTest_1\
        );

    \I__361\ : CascadeMux
    port map (
            O => \N__4272\,
            I => \I_DUT.U_1.memoryTrigTest_1_cascade_\
        );

    \I__360\ : InMux
    port map (
            O => \N__4269\,
            I => \N__4266\
        );

    \I__359\ : LocalMux
    port map (
            O => \N__4266\,
            I => \I_DUT.U_1.O_4\
        );

    \I__358\ : InMux
    port map (
            O => \N__4263\,
            I => \N__4260\
        );

    \I__357\ : LocalMux
    port map (
            O => \N__4260\,
            I => \I_DUT.U_1.O_2\
        );

    \IN_MUX_bfv_8_8_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_8_8_0_\
        );

    \IN_MUX_bfv_11_11_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_11_11_0_\
        );

    \IN_MUX_bfv_4_12_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_4_12_0_\
        );

    \IN_MUX_bfv_4_13_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \I_DUT.U_1.un3_go_0_data_tmp_7\,
            carryinitout => \bfn_4_13_0_\
        );

    \IN_MUX_bfv_8_9_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_8_9_0_\
        );

    \IN_MUX_bfv_9_13_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_9_13_0_\
        );

    \IN_MUX_bfv_2_14_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_2_14_0_\
        );

    \IN_MUX_bfv_2_15_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \I_DUT.U_1.count_preTrig_cry_7\,
            carryinitout => \bfn_2_15_0_\
        );

    \IN_MUX_bfv_2_16_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \I_DUT.U_1.count_preTrig_cry_15\,
            carryinitout => \bfn_2_16_0_\
        );

    \IN_MUX_bfv_14_2_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_14_2_0_\
        );

    \IN_MUX_bfv_14_3_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \I_DUT.U_1.count_memory_cry_7\,
            carryinitout => \bfn_14_3_0_\
        );

    \IN_MUX_bfv_14_4_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \I_DUT.U_1.count_memory_cry_15\,
            carryinitout => \bfn_14_4_0_\
        );

    \internalOscilator\ : SMCCLK
    port map (
            CLK => \internalOscilatorOutputNet\
        );

    \U_7.ODInst\ : SB_IO_OD
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PACKAGEPIN => o_cal(2),
            INPUTCLK => '0',
            OUTPUTENABLE => \N__5289\,
            LATCHINPUTVALUE => '0',
            DOUT1 => \GNDG0\,
            DIN1 => OPEN,
            OUTPUTCLK => '0',
            DOUT0 => \N__7999\,
            DIN0 => OPEN,
            CLOCKENABLE => '0'
        );

    \I_DUT.U_1.done_RNILDRF_1\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__5487\,
            GLOBALBUFFEROUTPUT => \I_DUT.U_1.N_22_g\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_57_c_RNIDACS_2\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__8433\,
            GLOBALBUFFEROUTPUT => \I_DUT.U_1.N_24_g\
        );

    \I6.Q_RNIUSS1_0\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__7680\,
            GLOBALBUFFEROUTPUT => \lsig_resetSynch_n_i_g\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_57_c_RNIDACS_1\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__4896\,
            GLOBALBUFFEROUTPUT => \I_DUT.U_1.un13_count_pretrig_g\
        );

    \U_8.ODInst\ : SB_IO_OD
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PACKAGEPIN => o_cal(1),
            INPUTCLK => '0',
            OUTPUTENABLE => \N__5118\,
            LATCHINPUTVALUE => '0',
            DOUT1 => \GNDG0\,
            DIN1 => OPEN,
            OUTPUTCLK => '0',
            DOUT0 => \N__4422\,
            DIN0 => OPEN,
            CLOCKENABLE => '0'
        );

    \U_4.ODInst\ : SB_IO_OD
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PACKAGEPIN => o_acq_done,
            INPUTCLK => '0',
            OUTPUTENABLE => \N__5295\,
            LATCHINPUTVALUE => '0',
            DOUT1 => \GNDG0\,
            DIN1 => OPEN,
            OUTPUTCLK => '0',
            DOUT0 => \N__8573\,
            DIN0 => OPEN,
            CLOCKENABLE => '0'
        );

    \I_DUT.U_13.fpga_m_ret_1_RNIBAUJ_0\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__8055\,
            GLOBALBUFFEROUTPUT => \I_DUT.U_13.MISO_OUT_1_sqmuxa_i_g\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_4_LC_1_12_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111000100010"
        )
    port map (
            in0 => \N__4584\,
            in1 => \N__6385\,
            in2 => \_gnd_net_\,
            in3 => \N__4269\,
            lcout => \I_DUT.U_1.memoryTrigTest_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_6_LC_1_12_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__6384\,
            in1 => \N__4911\,
            in2 => \_gnd_net_\,
            in3 => \N__4263\,
            lcout => \I_DUT.U_1.memoryTrigTest_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_3_LC_1_12_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__6382\,
            in1 => \N__4359\,
            in2 => \_gnd_net_\,
            in3 => \N__4365\,
            lcout => \I_DUT.U_1.memoryTrigTest_6\,
            ltout => \I_DUT.U_1.memoryTrigTest_6_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_21_c_RNO_LC_1_12_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111101111011110"
        )
    port map (
            in0 => \N__4629\,
            in1 => \N__4295\,
            in2 => \N__4353\,
            in3 => \N__4611\,
            lcout => \I_DUT.U_1.un3_go_0_I_21_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_LC_1_12_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101001010000"
        )
    port map (
            in0 => \N__6383\,
            in1 => \_gnd_net_\,
            in2 => \N__4341\,
            in3 => \N__4350\,
            lcout => \I_DUT.U_1.memoryTrigTest_10\,
            ltout => \I_DUT.U_1.memoryTrigTest_10_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_33_c_RNO_LC_1_12_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111101111011110"
        )
    port map (
            in0 => \N__4749\,
            in1 => \N__4731\,
            in2 => \N__4332\,
            in3 => \N__4313\,
            lcout => \I_DUT.U_1.un3_go_0_I_33_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_12_LC_1_12_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010111110100000"
        )
    port map (
            in0 => \N__4329\,
            in1 => \_gnd_net_\,
            in2 => \N__6416\,
            in3 => \N__5009\,
            lcout => \I_DUT.U_1.memoryTrigTest_15\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_16_LC_1_13_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__6380\,
            in1 => \N__4314\,
            in2 => \_gnd_net_\,
            in3 => \N__4320\,
            lcout => \I_DUT.U_1.memoryTrigTest_11\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_2_LC_1_13_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111000100010"
        )
    port map (
            in0 => \N__4296\,
            in1 => \N__6379\,
            in2 => \_gnd_net_\,
            in3 => \N__4302\,
            lcout => \I_DUT.U_1.memoryTrigTest_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_8_LC_1_13_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__6375\,
            in1 => \N__4278\,
            in2 => \_gnd_net_\,
            in3 => \N__4284\,
            lcout => \I_DUT.U_1.memoryTrigTest_1\,
            ltout => \I_DUT.U_1.memoryTrigTest_1_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_1_c_RNO_LC_1_13_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__4688\,
            in2 => \N__4272\,
            in3 => \N__4490\,
            lcout => \I_DUT.U_1.un3_go_0_I_1_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_5_LC_1_13_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101000001010"
        )
    port map (
            in0 => \N__4572\,
            in1 => \_gnd_net_\,
            in2 => \N__6415\,
            in3 => \N__4476\,
            lcout => \I_DUT.U_1.memoryTrigTest_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_12.valuePreTrig_int_0_LC_1_14_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9451\,
            lcout => \I_DUT.preTriggerValue_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10199\,
            ce => \N__6714\,
            sr => \N__10010\
        );

    \I_DUT.U_12.valuePreTrig_int_1_LC_1_14_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__4470\,
            lcout => \I_DUT.preTriggerValue_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10199\,
            ce => \N__6714\,
            sr => \N__10010\
        );

    \I_DUT.U_12.valuePreTrig_int_2_LC_1_14_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__4458\,
            lcout => \I_DUT.preTriggerValue_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10199\,
            ce => \N__6714\,
            sr => \N__10010\
        );

    \I_DUT.U_12.valuePreTrig_int_3_LC_1_14_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__4446\,
            lcout => \I_DUT.preTriggerValue_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10199\,
            ce => \N__6714\,
            sr => \N__10010\
        );

    \I_DUT.U_12.valuePreTrig_int_4_LC_1_14_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__4434\,
            lcout => cal_o_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10199\,
            ce => \N__6714\,
            sr => \N__10010\
        );

    \I_DUT.U_12.valuePreTrig_int_5_LC_1_14_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__4412\,
            lcout => \I_DUT.preTriggerValue_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10199\,
            ce => \N__6714\,
            sr => \N__10010\
        );

    \I_DUT.U_12.valuePreTrig_int_6_LC_1_14_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__4395\,
            lcout => \I_DUT.preTriggerValue_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10199\,
            ce => \N__6714\,
            sr => \N__10010\
        );

    \I_DUT.U_12.valuePreTrig_int_7_LC_1_14_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__4383\,
            lcout => \I_DUT.preTriggerValue_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10199\,
            ce => \N__6714\,
            sr => \N__10010\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_15_c_RNO_LC_2_12_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111110110111110"
        )
    port map (
            in0 => \N__4668\,
            in1 => \N__4583\,
            in2 => \N__4650\,
            in3 => \N__4571\,
            lcout => \I_DUT.U_1.un3_go_0_I_15_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_LC_2_12_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1111111111011111"
        )
    port map (
            in0 => \N__8365\,
            in1 => \N__10588\,
            in2 => \N__10437\,
            in3 => \N__10884\,
            lcout => \I_DUT.m_i_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10206\,
            ce => 'H',
            sr => \N__10016\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_1_LC_2_13_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111000100010"
        )
    port map (
            in0 => \N__4827\,
            in1 => \N__6395\,
            in2 => \_gnd_net_\,
            in3 => \N__4560\,
            lcout => \I_DUT.U_1.memoryTrigTest_8\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_9_LC_2_13_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101001010000"
        )
    port map (
            in0 => \N__6394\,
            in1 => \_gnd_net_\,
            in2 => \N__4539\,
            in3 => \N__4551\,
            lcout => \I_DUT.U_1.memoryTrigTest_18\,
            ltout => \I_DUT.U_1.memoryTrigTest_18_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_57_c_RNO_LC_2_13_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111111110000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__4530\,
            in3 => \N__5058\,
            lcout => \I_DUT.U_1.un3_go_0_I_57_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_10_LC_2_13_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__6398\,
            in1 => \N__5151\,
            in2 => \_gnd_net_\,
            in3 => \N__4527\,
            lcout => \I_DUT.U_1.memoryTrigTest_17\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_13_LC_2_13_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__6396\,
            in1 => \N__4974\,
            in2 => \_gnd_net_\,
            in3 => \N__4515\,
            lcout => \I_DUT.U_1.memoryTrigTest_14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_14_LC_2_13_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111000100010"
        )
    port map (
            in0 => \N__4761\,
            in1 => \N__6397\,
            in2 => \_gnd_net_\,
            in3 => \N__4503\,
            lcout => \I_DUT.U_1.memoryTrigTest_13\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.count_preTrig_0_LC_2_14_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8997\,
            in1 => \N__4491\,
            in2 => \_gnd_net_\,
            in3 => \N__4479\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_0\,
            ltout => OPEN,
            carryin => \bfn_2_14_0_\,
            carryout => \I_DUT.U_1.count_preTrig_cry_0\,
            clk => \N__10193\,
            ce => \N__5043\,
            sr => \N__10006\
        );

    \I_DUT.U_1.count_preTrig_1_LC_2_14_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8989\,
            in1 => \N__4689\,
            in2 => \_gnd_net_\,
            in3 => \N__4677\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_1\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_0\,
            carryout => \I_DUT.U_1.count_preTrig_cry_1\,
            clk => \N__10193\,
            ce => \N__5043\,
            sr => \N__10006\
        );

    \I_DUT.U_1.count_preTrig_2_LC_2_14_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8998\,
            in1 => \N__4943\,
            in2 => \_gnd_net_\,
            in3 => \N__4674\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_2\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_1\,
            carryout => \I_DUT.U_1.count_preTrig_cry_2\,
            clk => \N__10193\,
            ce => \N__5043\,
            sr => \N__10006\
        );

    \I_DUT.U_1.count_preTrig_3_LC_2_14_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8990\,
            in1 => \N__4928\,
            in2 => \_gnd_net_\,
            in3 => \N__4671\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_3\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_2\,
            carryout => \I_DUT.U_1.count_preTrig_cry_3\,
            clk => \N__10193\,
            ce => \N__5043\,
            sr => \N__10006\
        );

    \I_DUT.U_1.count_preTrig_4_LC_2_14_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8999\,
            in1 => \N__4667\,
            in2 => \_gnd_net_\,
            in3 => \N__4653\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_4\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_3\,
            carryout => \I_DUT.U_1.count_preTrig_cry_4\,
            clk => \N__10193\,
            ce => \N__5043\,
            sr => \N__10006\
        );

    \I_DUT.U_1.count_preTrig_5_LC_2_14_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8991\,
            in1 => \N__4646\,
            in2 => \_gnd_net_\,
            in3 => \N__4632\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_5\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_4\,
            carryout => \I_DUT.U_1.count_preTrig_cry_5\,
            clk => \N__10193\,
            ce => \N__5043\,
            sr => \N__10006\
        );

    \I_DUT.U_1.count_preTrig_6_LC_2_14_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__9000\,
            in1 => \N__4628\,
            in2 => \_gnd_net_\,
            in3 => \N__4614\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_6\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_5\,
            carryout => \I_DUT.U_1.count_preTrig_cry_6\,
            clk => \N__10193\,
            ce => \N__5043\,
            sr => \N__10006\
        );

    \I_DUT.U_1.count_preTrig_7_LC_2_14_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8992\,
            in1 => \N__4607\,
            in2 => \_gnd_net_\,
            in3 => \N__4593\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_7\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_6\,
            carryout => \I_DUT.U_1.count_preTrig_cry_7\,
            clk => \N__10193\,
            ce => \N__5043\,
            sr => \N__10006\
        );

    \I_DUT.U_1.count_preTrig_8_LC_2_15_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8996\,
            in1 => \N__4811\,
            in2 => \_gnd_net_\,
            in3 => \N__4590\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_8\,
            ltout => OPEN,
            carryin => \bfn_2_15_0_\,
            carryout => \I_DUT.U_1.count_preTrig_cry_8\,
            clk => \N__10187\,
            ce => \N__5042\,
            sr => \N__10003\
        );

    \I_DUT.U_1.count_preTrig_9_LC_2_15_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8988\,
            in1 => \N__4841\,
            in2 => \_gnd_net_\,
            in3 => \N__4587\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_9\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_8\,
            carryout => \I_DUT.U_1.count_preTrig_cry_9\,
            clk => \N__10187\,
            ce => \N__5042\,
            sr => \N__10003\
        );

    \I_DUT.U_1.count_preTrig_10_LC_2_15_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8993\,
            in1 => \N__4748\,
            in2 => \_gnd_net_\,
            in3 => \N__4734\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_10\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_9\,
            carryout => \I_DUT.U_1.count_preTrig_cry_10\,
            clk => \N__10187\,
            ce => \N__5042\,
            sr => \N__10003\
        );

    \I_DUT.U_1.count_preTrig_11_LC_2_15_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8985\,
            in1 => \N__4727\,
            in2 => \_gnd_net_\,
            in3 => \N__4713\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_11\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_10\,
            carryout => \I_DUT.U_1.count_preTrig_cry_11\,
            clk => \N__10187\,
            ce => \N__5042\,
            sr => \N__10003\
        );

    \I_DUT.U_1.count_preTrig_12_LC_2_15_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8994\,
            in1 => \N__4793\,
            in2 => \_gnd_net_\,
            in3 => \N__4710\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_12\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_11\,
            carryout => \I_DUT.U_1.count_preTrig_cry_12\,
            clk => \N__10187\,
            ce => \N__5042\,
            sr => \N__10003\
        );

    \I_DUT.U_1.count_preTrig_13_LC_2_15_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8986\,
            in1 => \N__4775\,
            in2 => \_gnd_net_\,
            in3 => \N__4707\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_13\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_12\,
            carryout => \I_DUT.U_1.count_preTrig_cry_13\,
            clk => \N__10187\,
            ce => \N__5042\,
            sr => \N__10003\
        );

    \I_DUT.U_1.count_preTrig_14_LC_2_15_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8995\,
            in1 => \N__5024\,
            in2 => \_gnd_net_\,
            in3 => \N__4704\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_14\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_13\,
            carryout => \I_DUT.U_1.count_preTrig_cry_14\,
            clk => \N__10187\,
            ce => \N__5042\,
            sr => \N__10003\
        );

    \I_DUT.U_1.count_preTrig_15_LC_2_15_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8987\,
            in1 => \N__4988\,
            in2 => \_gnd_net_\,
            in3 => \N__4701\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_15\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_14\,
            carryout => \I_DUT.U_1.count_preTrig_cry_15\,
            clk => \N__10187\,
            ce => \N__5042\,
            sr => \N__10003\
        );

    \I_DUT.U_1.count_preTrig_16_LC_2_16_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8982\,
            in1 => \N__5168\,
            in2 => \_gnd_net_\,
            in3 => \N__4698\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_16\,
            ltout => OPEN,
            carryin => \bfn_2_16_0_\,
            carryout => \I_DUT.U_1.count_preTrig_cry_16\,
            clk => \N__10182\,
            ce => \N__5041\,
            sr => \N__9999\
        );

    \I_DUT.U_1.count_preTrig_17_LC_2_16_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8983\,
            in1 => \N__5183\,
            in2 => \_gnd_net_\,
            in3 => \N__4695\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_17\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_preTrig_cry_16\,
            carryout => \I_DUT.U_1.count_preTrig_cry_17\,
            clk => \N__10182\,
            ce => \N__5041\,
            sr => \N__9999\
        );

    \I_DUT.U_1.count_preTrig_18_LC_2_16_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000100100010"
        )
    port map (
            in0 => \N__5057\,
            in1 => \N__8984\,
            in2 => \_gnd_net_\,
            in3 => \N__4692\,
            lcout => \I_DUT.U_1.count_preTrigZ0Z_18\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10182\,
            ce => \N__5041\,
            sr => \N__9999\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_45_c_RNO_LC_3_12_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111110110111110"
        )
    port map (
            in0 => \N__5028\,
            in1 => \N__5010\,
            in2 => \N__4995\,
            in3 => \N__4973\,
            lcout => \I_DUT.U_1.un3_go_0_I_45_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_7_LC_3_12_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111000100010"
        )
    port map (
            in0 => \N__4950\,
            in1 => \N__6381\,
            in2 => \_gnd_net_\,
            in3 => \N__4962\,
            lcout => \I_DUT.U_1.memoryTrigTest_2\,
            ltout => \I_DUT.U_1.memoryTrigTest_2_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_9_c_RNO_LC_3_12_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111101111011110"
        )
    port map (
            in0 => \N__4944\,
            in1 => \N__4929\,
            in2 => \N__4914\,
            in3 => \N__4910\,
            lcout => \I_DUT.U_1.un3_go_0_I_9_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_57_c_RNIDACS_0_LC_3_12_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000010001"
        )
    port map (
            in0 => \N__8540\,
            in1 => \N__7665\,
            in2 => \_gnd_net_\,
            in3 => \N__8452\,
            lcout => \I_DUT.U_1.un13_count_pretrig\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_0_LC_3_13_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111110000110000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__6389\,
            in2 => \N__4854\,
            in3 => \N__4866\,
            lcout => \I_DUT.U_1.memoryTrigTest_9\,
            ltout => \I_DUT.U_1.memoryTrigTest_9_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_27_c_RNO_LC_3_13_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111101111011110"
        )
    port map (
            in0 => \N__4845\,
            in1 => \N__4826\,
            in2 => \N__4815\,
            in3 => \N__4812\,
            lcout => \I_DUT.U_1.un3_go_0_I_27_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_39_c_RNO_LC_3_13_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0110111111110110"
        )
    port map (
            in0 => \N__4797\,
            in1 => \N__5126\,
            in2 => \N__4779\,
            in3 => \N__4760\,
            lcout => \I_DUT.U_1.un3_go_0_I_39_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_11_LC_3_13_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111110000110000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__6390\,
            in2 => \N__5193\,
            in3 => \N__5205\,
            lcout => \I_DUT.U_1.memoryTrigTest_16\,
            ltout => \I_DUT.U_1.memoryTrigTest_16_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_51_c_RNO_LC_3_13_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111110110111110"
        )
    port map (
            in0 => \N__5184\,
            in1 => \N__5169\,
            in2 => \N__5154\,
            in3 => \N__5150\,
            lcout => \I_DUT.U_1.un3_go_0_I_51_c_RNO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI1HJ3_15_LC_3_13_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101000001010"
        )
    port map (
            in0 => \N__5127\,
            in1 => \_gnd_net_\,
            in2 => \N__6417\,
            in3 => \N__5139\,
            lcout => \I_DUT.U_1.memoryTrigTest_12\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \U_8.ODInstLegalizeSB_DFF_LC_3_20_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \U_8.ODInstLegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9855\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_1_c_LC_4_12_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__5112\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_4_12_0_\,
            carryout => \I_DUT.U_1.un3_go_0_data_tmp_0\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_9_c_LC_4_12_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7882\,
            in2 => \N__5097\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \I_DUT.U_1.un3_go_0_data_tmp_0\,
            carryout => \I_DUT.U_1.un3_go_0_data_tmp_1\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_15_c_LC_4_12_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__5088\,
            in2 => \N__7913\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \I_DUT.U_1.un3_go_0_data_tmp_1\,
            carryout => \I_DUT.U_1.un3_go_0_data_tmp_2\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_21_c_LC_4_12_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7877\,
            in2 => \N__5079\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \I_DUT.U_1.un3_go_0_data_tmp_2\,
            carryout => \I_DUT.U_1.un3_go_0_data_tmp_3\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_27_c_LC_4_12_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7915\,
            in2 => \N__5067\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \I_DUT.U_1.un3_go_0_data_tmp_3\,
            carryout => \I_DUT.U_1.un3_go_0_data_tmp_4\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_33_c_LC_4_12_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7878\,
            in2 => \N__5259\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \I_DUT.U_1.un3_go_0_data_tmp_4\,
            carryout => \I_DUT.U_1.un3_go_0_data_tmp_5\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_39_c_LC_4_12_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__5247\,
            in2 => \N__7914\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \I_DUT.U_1.un3_go_0_data_tmp_5\,
            carryout => \I_DUT.U_1.un3_go_0_data_tmp_6\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_45_c_LC_4_12_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__5241\,
            in2 => \N__7923\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \I_DUT.U_1.un3_go_0_data_tmp_6\,
            carryout => \I_DUT.U_1.un3_go_0_data_tmp_7\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_51_c_LC_4_13_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7919\,
            in2 => \N__5235\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_4_13_0_\,
            carryout => \I_DUT.U_1.un3_go_0_data_tmp_8\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_57_c_LC_4_13_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7920\,
            in2 => \N__5226\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \I_DUT.U_1.un3_go_0_data_tmp_8\,
            carryout => \I_DUT.U_1.un3_go_0_N_2\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.un3_go_0_N_2_THRU_LUT4_0_LC_4_13_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__5214\,
            lcout => \I_DUT.U_1.un3_go_0_N_2_THRU_CO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_RNO_0_LC_4_13_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__8506\,
            in2 => \_gnd_net_\,
            in3 => \N__8453\,
            lcout => \I_DUT.U_1.un2_done_0_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \fpga_mosi_LC_5_1_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101010101010"
        )
    port map (
            in0 => \N__5211\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \fpga_mosiZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10221\,
            ce => 'H',
            sr => \N__10037\
        );

    \fpga_sck_LC_5_7_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__5321\,
            lcout => cal_o_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10217\,
            ce => 'H',
            sr => \N__10028\
        );

    \fpga_sck_fast_LC_5_8_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101010101010"
        )
    port map (
            in0 => \N__5322\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \fpga_sck_fastZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10212\,
            ce => 'H',
            sr => \N__10021\
        );

    \I_DUT.U_1.done_LC_5_13_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1100110001110111"
        )
    port map (
            in0 => \N__5382\,
            in1 => \N__8530\,
            in2 => \_gnd_net_\,
            in3 => \N__7663\,
            lcout => acq_done_o,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10183\,
            ce => \N__5307\,
            sr => \N__10000\
        );

    \U_4.ODInstLegalizeSB_DFF_LC_5_20_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \U_4.ODInstLegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9841\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \U_7.ODInstLegalizeSB_DFF_LC_5_20_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \U_7.ODInstLegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9841\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \io_fpga_miso_obuftAndLUT4_LC_7_1_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000100010001000"
        )
    port map (
            in0 => \N__6651\,
            in1 => \N__5277\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \io_fpga_miso_obuftAndNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \io_fpga_miso_obuftLegalizeSB_DFF_LC_7_1_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \io_fpga_miso_obuftLegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9857\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_ncs_obuf_0LegalizeSB_DFF_LC_7_1_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_ncs_obuf_0LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9857\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_ncs_obuf_1LegalizeSB_DFF_LC_7_1_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_ncs_obuf_1LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9857\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.FR_NCS_1_0_LC_7_8_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__5658\,
            in1 => \N__6591\,
            in2 => \_gnd_net_\,
            in3 => \N__6457\,
            lcout => \I_DUT.U_5.FR_NCS_1Z0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_wait_RNI61LH1_3_LC_7_8_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000010"
        )
    port map (
            in0 => \N__5422\,
            in1 => \N__5440\,
            in2 => \N__5399\,
            in3 => \N__5354\,
            lcout => \I_DUT.U_1.un8_done\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_wait_RNIHEQO_1_LC_7_8_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__5441\,
            in2 => \_gnd_net_\,
            in3 => \N__5355\,
            lcout => \I_DUT.U_1.CO1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_wait_1_LC_7_9_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0110011010101010"
        )
    port map (
            in0 => \N__5442\,
            in1 => \N__5352\,
            in2 => \_gnd_net_\,
            in3 => \N__5521\,
            lcout => \I_DUT.U_1.done_waitZ1Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10194\,
            ce => 'H',
            sr => \N__10007\
        );

    \I_DUT.U_1.done_wait_2_LC_7_9_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0001001011110000"
        )
    port map (
            in0 => \N__5408\,
            in1 => \N__5377\,
            in2 => \N__5427\,
            in3 => \N__5523\,
            lcout => \I_DUT.U_1.done_waitZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10194\,
            ce => 'H',
            sr => \N__10007\
        );

    \I_DUT.U_1.done_wait_3_LC_7_9_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0111100011110000"
        )
    port map (
            in0 => \N__5522\,
            in1 => \N__5423\,
            in2 => \N__5400\,
            in3 => \N__5409\,
            lcout => \I_DUT.U_1.done_waitZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10194\,
            ce => 'H',
            sr => \N__10007\
        );

    \I_DUT.U_1.done_wait_0_LC_7_10_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000111001100"
        )
    port map (
            in0 => \N__5378\,
            in1 => \N__5353\,
            in2 => \_gnd_net_\,
            in3 => \N__5520\,
            lcout => \I_DUT.U_1.done_waitZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10188\,
            ce => 'H',
            sr => \N__10004\
        );

    \I_DUT.U_6.is_up_RNO_0_LC_7_11_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000110"
        )
    port map (
            in0 => \N__5684\,
            in1 => \N__6122\,
            in2 => \N__6086\,
            in3 => \N__6461\,
            lcout => \I_DUT.U_6.un5_m\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \CONSTANT_ONE_LUT4_LC_7_11_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \CONSTANT_ONE_NET\,
            ltout => \CONSTANT_ONE_NET_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_5_RNI0PRE1_LC_7_11_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101000001000100"
        )
    port map (
            in0 => \N__5586\,
            in1 => \N__5328\,
            in2 => \N__5331\,
            in3 => \N__5502\,
            lcout => \I_DUT.fpga_m_ret_5_RNI0PRE1_0\,
            ltout => \I_DUT.fpga_m_ret_5_RNI0PRE1_0_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.FR_NCS_1_2_LC_7_11_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111010110100000"
        )
    port map (
            in0 => \N__6462\,
            in1 => \_gnd_net_\,
            in2 => \N__5526\,
            in3 => \N__6588\,
            lcout => \I_DUT.U_5.FR_NCS_1Z0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_RNILDRF_0_LC_7_11_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010100000000"
        )
    port map (
            in0 => \N__7661\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8550\,
            lcout => \I_DUT.U_1.un3_done\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_5_LC_7_12_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0101000000010000"
        )
    port map (
            in0 => \N__8314\,
            in1 => \N__10427\,
            in2 => \N__10618\,
            in3 => \N__10878\,
            lcout => \I_DUT.U_4.fpga_m_retZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10179\,
            ce => 'H',
            sr => \N__9996\
        );

    \I_DUT.U_6.is_up_LC_7_12_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1101110101000100"
        )
    port map (
            in0 => \N__5493\,
            in1 => \N__5705\,
            in2 => \_gnd_net_\,
            in3 => \N__6225\,
            lcout => \I_DUT.U_6.is_upZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10179\,
            ce => 'H',
            sr => \N__9996\
        );

    \I_DUT.U_6.down_ncs_old_LC_7_12_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1010101010101100"
        )
    port map (
            in0 => \N__5685\,
            in1 => \N__6126\,
            in2 => \N__6090\,
            in3 => \N__6456\,
            lcout => \I_DUT.U_6.down_ncs_oldZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10179\,
            ce => 'H',
            sr => \N__9996\
        );

    \I_DUT.U_1.done_RNILDRF_LC_7_20_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__8560\,
            in2 => \_gnd_net_\,
            in3 => \N__7664\,
            lcout => \I_DUT.U_1.N_22\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_ncs_obuf_2LegalizeSB_DFF_LC_8_1_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_ncs_obuf_2LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9856\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_ncs_obuf_3LegalizeSB_DFF_LC_8_1_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_ncs_obuf_3LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9856\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_8_RNI1CV5_0_LC_8_6_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111011110010"
        )
    port map (
            in0 => \N__5453\,
            in1 => \N__5760\,
            in2 => \N__7298\,
            in3 => \N__5469\,
            lcout => \fpga_m_ret_8_RNI1CV5_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_8_RNI1CV5_2_LC_8_6_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101011101110"
        )
    port map (
            in0 => \N__7292\,
            in1 => \N__5546\,
            in2 => \N__5565\,
            in3 => \N__5761\,
            lcout => \fpga_m_ret_8_RNI1CV5_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_5_LC_8_7_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000000001010101"
        )
    port map (
            in0 => \N__5744\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__5726\,
            lcout => \I_DUT.U_5.fr_clock7_i_0_i_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10200\,
            ce => 'H',
            sr => \N__10011\
        );

    \I_DUT.U_5.mux_un1_m_0_cry_2_c_LC_8_8_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__5640\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_8_8_0_\,
            carryout => \I_DUT.U_5.un1_m_0_cry_2\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.mux_un1_m_0_cry_3_c_inv_LC_8_8_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__5535\,
            in2 => \_gnd_net_\,
            in3 => \N__8332\,
            lcout => \I_DUT.U_5.un1_m_0_axb_3\,
            ltout => OPEN,
            carryin => \I_DUT.U_5.un1_m_0_cry_2\,
            carryout => \I_DUT.U_5.un1_m_0\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.un1_m_0_THRU_LUT4_0_LC_8_8_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__5529\,
            lcout => \I_DUT.U_5.un1_m_0_THRU_CO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \fpga_m_5_0_LC_8_9_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__10853\,
            in2 => \_gnd_net_\,
            in3 => \N__10854\,
            lcout => \fpga_mZ0Z_0\,
            ltout => OPEN,
            carryin => \bfn_8_9_0_\,
            carryout => \I_DUT.U_5.un3_0_cry_0\,
            clk => \N__10189\,
            ce => 'H',
            sr => \N__10005\
        );

    \I_DUT.U_4.fpga_m_ret_4_LC_8_9_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1011",
            LUT_INIT => "1011101110111011"
        )
    port map (
            in0 => \N__10852\,
            in1 => \N__10390\,
            in2 => \N__7873\,
            in3 => \_gnd_net_\,
            lcout => \I_DUT.U_4.N_4\,
            ltout => OPEN,
            carryin => \I_DUT.U_5.un3_0_cry_0\,
            carryout => \I_DUT.U_5.un3_0_cry_1\,
            clk => \N__10189\,
            ce => 'H',
            sr => \N__10005\
        );

    \I_DUT.U_4.fpga_m_0_ret_5_LC_8_9_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0000000011110000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7808\,
            in2 => \N__10586\,
            in3 => \N__10384\,
            lcout => \I_DUT.U_4.un2_m_8_0\,
            ltout => OPEN,
            carryin => \I_DUT.U_5.un3_0_cry_1\,
            carryout => \I_DUT.U_5.un3_0_cry_2\,
            clk => \N__10189\,
            ce => 'H',
            sr => \N__10005\
        );

    \I_DUT.U_13.fpga_m_ret_2_LC_8_9_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0000000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__8331\,
            in2 => \_gnd_net_\,
            in3 => \N__10547\,
            lcout => \I_DUT.un18_m_1\,
            ltout => OPEN,
            carryin => \I_DUT.U_5.un3_0_cry_2\,
            carryout => \I_DUT.U_5.un3_0\,
            clk => \N__10189\,
            ce => 'H',
            sr => \N__10005\
        );

    \I_DUT.U_5.un3_0_THRU_LUT4_0_LC_8_9_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__5607\,
            lcout => \I_DUT.U_5.un3_0_THRU_CO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_6_RNI289J1_LC_8_10_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111110001000"
        )
    port map (
            in0 => \N__6940\,
            in1 => \N__5604\,
            in2 => \_gnd_net_\,
            in3 => \N__5838\,
            lcout => OPEN,
            ltout => \I_DUT.U_4.un2_m_19_0_i_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_9_RNI797L1_LC_8_10_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000110000001010"
        )
    port map (
            in0 => \N__6014\,
            in1 => \N__7765\,
            in2 => \N__5598\,
            in3 => \N__5580\,
            lcout => \I_DUT.fpga_m_ret_9_RNI797L1_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_6_RNIVMVA1_LC_8_10_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100100000001000"
        )
    port map (
            in0 => \N__5869\,
            in1 => \N__6942\,
            in2 => \N__5947\,
            in3 => \N__5574\,
            lcout => \I_DUT.U_4.fpga_m_ret_6_RNIVMVAZ0Z1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_6_RNIHEOG_LC_8_10_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101000000000"
        )
    port map (
            in0 => \N__6941\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__5573\,
            lcout => OPEN,
            ltout => \I_DUT.U_4.un1_m_inv_2_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_4_RNIVNTC1_LC_8_10_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111000001000100"
        )
    port map (
            in0 => \N__5595\,
            in1 => \N__5868\,
            in2 => \N__5589\,
            in3 => \N__5937\,
            lcout => \I_DUT.U_4.fpga_m_ret_4_RNIVNTCZ0Z1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \fpga_m_4_2_LC_8_11_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101010101010"
        )
    port map (
            in0 => \N__10540\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \fpga_mZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10180\,
            ce => 'H',
            sr => \N__9997\
        );

    \I_DUT.U_4.fpga_m_ret_9_LC_8_11_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0100000001000100"
        )
    port map (
            in0 => \N__8329\,
            in1 => \N__10538\,
            in2 => \N__10421\,
            in3 => \N__10874\,
            lcout => \I_DUT.U_4.fpga_m_retZ0Z_9\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10180\,
            ce => 'H',
            sr => \N__9997\
        );

    \fpga_m_3_3_LC_8_11_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101010101010"
        )
    port map (
            in0 => \N__8330\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \fpga_mZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10180\,
            ce => 'H',
            sr => \N__9997\
        );

    \I_DUT.U_5.fpga_m_ret_11_LC_8_11_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0101010101010101"
        )
    port map (
            in0 => \N__10539\,
            in1 => \N__7764\,
            in2 => \_gnd_net_\,
            in3 => \N__5639\,
            lcout => \I_DUT.fpga_m_i_3_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10180\,
            ce => 'H',
            sr => \N__9997\
        );

    \I_DUT.U_6.is_up_RNI0L791_LC_8_12_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__6452\,
            in1 => \N__6068\,
            in2 => \N__6249\,
            in3 => \N__5704\,
            lcout => \I_DUT.U_6.N_59\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.is_up_RNIMNRI_LC_8_12_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111101110"
        )
    port map (
            in0 => \N__5700\,
            in1 => \N__6067\,
            in2 => \_gnd_net_\,
            in3 => \N__6451\,
            lcout => \I_DUT.U_6.un3_is_up_i_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.is_up_RNI3ODA1_LC_8_12_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011110001"
        )
    port map (
            in0 => \N__7191\,
            in1 => \N__7134\,
            in2 => \N__5706\,
            in3 => \N__6243\,
            lcout => \I_DUT.U_6.N_91\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.down_ncs_old_RNIATBM_LC_8_12_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010110101010"
        )
    port map (
            in0 => \N__5683\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__6114\,
            lcout => \I_DUT.U_6.un4_m\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_7_RNI2OTC1_LC_8_13_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001000000010"
        )
    port map (
            in0 => \N__5651\,
            in1 => \N__5667\,
            in2 => \N__5616\,
            in3 => \N__7831\,
            lcout => \I_DUT.fpga_m_ret_7_RNI2OTC1_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.mux_un1_m_0_cry_2_c_inv_LC_8_13_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001100110011"
        )
    port map (
            in0 => \N__7832\,
            in1 => \N__10486\,
            in2 => \_gnd_net_\,
            in3 => \N__5632\,
            lcout => \I_DUT.U_5.i_fpga_m_c_i_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_7_LC_8_14_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011000000100000"
        )
    port map (
            in0 => \N__10422\,
            in1 => \N__8281\,
            in2 => \N__10520\,
            in3 => \N__10883\,
            lcout => \I_DUT.U_4.fpga_m_retZ0Z_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10174\,
            ce => 'H',
            sr => \N__9990\
        );

    \I_DUT.U_6.adc_clock_LC_8_15_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1100110001010101"
        )
    port map (
            in0 => \N__6153\,
            in1 => \N__7184\,
            in2 => \_gnd_net_\,
            in3 => \N__6680\,
            lcout => o_sclk_meas_c,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10171\,
            ce => 'H',
            sr => \N__9987\
        );

    \I_DUT.U_13.sendAdd_un1_m_4_LC_9_2_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0010000000000000"
        )
    port map (
            in0 => \N__8393\,
            in1 => \N__10654\,
            in2 => \N__10842\,
            in3 => \N__10310\,
            lcout => \I_DUT.un1_m_reti\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_3_LC_9_4_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1010111110101101"
        )
    port map (
            in0 => \N__8392\,
            in1 => \N__10814\,
            in2 => \N__10653\,
            in3 => \N__10333\,
            lcout => \I_DUT.U_4.fpga_m_retZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10213\,
            ce => 'H',
            sr => \N__10022\
        );

    \I_DUT.U_5.fpga_m_ret_7_LC_9_4_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1000100010101010"
        )
    port map (
            in0 => \N__5796\,
            in1 => \N__5786\,
            in2 => \_gnd_net_\,
            in3 => \N__6286\,
            lcout => \I_DUT.U_5.N_62_i_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10213\,
            ce => 'H',
            sr => \N__10022\
        );

    \I_DUT.U_5.fpga_m_ret_8_RNI1CV5_1_LC_9_5_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101011101110"
        )
    port map (
            in0 => \N__7265\,
            in1 => \N__5822\,
            in2 => \N__6003\,
            in3 => \N__5762\,
            lcout => \fpga_m_ret_8_RNI1CV5_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_8_RNI1CV5_LC_9_5_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111011001110"
        )
    port map (
            in0 => \N__5807\,
            in1 => \N__7266\,
            in2 => \N__5766\,
            in3 => \N__5979\,
            lcout => \fpga_m_ret_8_RNI1CV5_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.mux_adc_clock11_i_0_o3_0_LC_9_5_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111011111111"
        )
    port map (
            in0 => \N__8355\,
            in1 => \N__10637\,
            in2 => \N__10851\,
            in3 => \N__10334\,
            lcout => \I_DUT.U_5.adc_clock11_i_0_reti\,
            ltout => \I_DUT.U_5.adc_clock11_i_0_reti_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_8_RNO_0_LC_9_5_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111110101111"
        )
    port map (
            in0 => \N__6287\,
            in1 => \_gnd_net_\,
            in2 => \N__5790\,
            in3 => \N__5787\,
            lcout => \I_DUT.U_5.N_62_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_4_LC_9_6_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__5714\,
            lcout => \I_DUT.U_5.fr_clock7_i_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10201\,
            ce => 'H',
            sr => \N__10012\
        );

    \I_DUT.U_5.fpga_m_ret_8_LC_9_6_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0111111100111111"
        )
    port map (
            in0 => \N__5715\,
            in1 => \N__5772\,
            in2 => \N__6270\,
            in3 => \N__6291\,
            lcout => \I_DUT.U_5.un1_adc_clock11_1_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10201\,
            ce => 'H',
            sr => \N__10012\
        );

    \I_DUT.U_5.mux_un3_0_cry_3_c_RNIQ173_LC_9_7_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__5745\,
            in2 => \_gnd_net_\,
            in3 => \N__5727\,
            lcout => \I_DUT.U_5.fr_clock7_i_0_reti\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_3_RNIK5EN1_LC_9_7_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000010111011"
        )
    port map (
            in0 => \N__5990\,
            in1 => \N__9491\,
            in2 => \_gnd_net_\,
            in3 => \N__5958\,
            lcout => \I_DUT.fpga_m_ret_3_RNIK5EN1_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_6_RNILBHL_LC_9_8_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0001000100000000"
        )
    port map (
            in0 => \N__5949\,
            in1 => \N__6027\,
            in2 => \_gnd_net_\,
            in3 => \N__6261\,
            lcout => \I_DUT.U_5.ADC_CLOCK_1_iv_i_a3_0_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.FR_NCS_1_1_LC_9_8_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__6018\,
            in1 => \N__6589\,
            in2 => \_gnd_net_\,
            in3 => \N__6470\,
            lcout => \I_DUT.U_5.FR_NCS_1Z0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.FR_NCS_1_3_LC_9_8_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010111001100"
        )
    port map (
            in0 => \N__5991\,
            in1 => \N__6590\,
            in2 => \_gnd_net_\,
            in3 => \N__6471\,
            lcout => \I_DUT.U_5.FR_NCS_1Z0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_0_ret_5_RNIL4GL1_LC_9_9_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110000011000000"
        )
    port map (
            in0 => \N__5879\,
            in1 => \N__5967\,
            in2 => \N__6147\,
            in3 => \N__6639\,
            lcout => \I_DUT.U_4.un9_m_0_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_0.colckSwitch_un3_ac0_5_LC_9_9_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001000110000"
        )
    port map (
            in0 => \N__6255\,
            in1 => \N__5948\,
            in2 => \N__5880\,
            in3 => \N__5849\,
            lcout => OPEN,
            ltout => \I_DUT.un3_ac0_5_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_6_RNIPFPF2_LC_9_9_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111010100110001"
        )
    port map (
            in0 => \N__5919\,
            in1 => \N__8136\,
            in2 => \N__5913\,
            in3 => \N__7201\,
            lcout => OPEN,
            ltout => \I_DUT.U_5.N_32_i_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_4_RNIQT5I2_LC_9_9_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111010110100000"
        )
    port map (
            in0 => \N__7427\,
            in1 => \_gnd_net_\,
            in2 => \N__5910\,
            in3 => \N__5891\,
            lcout => \fpga_m_ret_4_RNIQT5I2_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.spiMS_un3_m_LC_9_10_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__5870\,
            in1 => \N__5850\,
            in2 => \N__6143\,
            in3 => \N__6633\,
            lcout => \I_DUT.U_4.un3_m\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_3.q_int_LC_9_11_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1110000111110000"
        )
    port map (
            in0 => \N__6858\,
            in1 => \N__6834\,
            in2 => \N__6621\,
            in3 => \N__6627\,
            lcout => \I_DUT.q_int_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10177\,
            ce => 'H',
            sr => \N__9994\
        );

    \I_DUT.U_6.finish_d_LC_9_11_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1110111011001100"
        )
    port map (
            in0 => \N__8120\,
            in1 => \N__8554\,
            in2 => \_gnd_net_\,
            in3 => \N__6078\,
            lcout => \I_DUT.U_6.finish_dZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10177\,
            ce => 'H',
            sr => \N__9994\
        );

    \I_DUT.U_5.fpga_m_ret_12_LC_9_11_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0101010101010101"
        )
    port map (
            in0 => \N__8345\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \I_DUT.fpga_m_i_3_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10177\,
            ce => 'H',
            sr => \N__9994\
        );

    \I_DUT.U_6.down_ncs_LC_9_11_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1011111101000100"
        )
    port map (
            in0 => \N__6617\,
            in1 => \N__6597\,
            in2 => \N__8135\,
            in3 => \N__6121\,
            lcout => \I_DUT.U_6.down_ncsZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10177\,
            ce => 'H',
            sr => \N__9994\
        );

    \I_DUT.U_1.fpga_m_ret_4_LC_9_11_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000000000001000"
        )
    port map (
            in0 => \N__10353\,
            in1 => \N__8344\,
            in2 => \N__10882\,
            in3 => \N__10619\,
            lcout => \I_DUT.m_i_0_i_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10177\,
            ce => 'H',
            sr => \N__9994\
        );

    \I_DUT.U_6.count_RNIQLUF2_0_LC_9_12_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000001010100"
        )
    port map (
            in0 => \N__6745\,
            in1 => \N__6489\,
            in2 => \N__6036\,
            in3 => \N__6247\,
            lcout => OPEN,
            ltout => \I_DUT.U_6.N_92_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.finish_d_RNIOKU44_LC_9_12_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__6096\,
            in1 => \N__6085\,
            in2 => \N__6039\,
            in3 => \N__6468\,
            lcout => \I_DUT.U_6.N_40\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.count_RNISQ8F_0_LC_9_12_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000110011"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7127\,
            in2 => \_gnd_net_\,
            in3 => \N__7072\,
            lcout => \I_DUT.U_6.N_99\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.fram_clock_1_RNO_0_LC_9_12_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000001100110010"
        )
    port map (
            in0 => \N__7074\,
            in1 => \N__6673\,
            in2 => \N__7142\,
            in3 => \N__6746\,
            lcout => \I_DUT.U_6.N_42_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.down_ncs_old_RNISL8H1_LC_9_12_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111000011110101"
        )
    port map (
            in0 => \N__6202\,
            in1 => \_gnd_net_\,
            in2 => \N__8567\,
            in3 => \N__6248\,
            lcout => \I_DUT.U_6.N_45\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.count_RNI97TM_1_LC_9_12_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101000000000000"
        )
    port map (
            in0 => \N__7073\,
            in1 => \_gnd_net_\,
            in2 => \N__7141\,
            in3 => \N__6509\,
            lcout => \I_DUT.U_6.un1_done_sig_1_i_a3_1\,
            ltout => \I_DUT.U_6.un1_done_sig_1_i_a3_1_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.is_up_RNO_1_LC_9_12_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000010000"
        )
    port map (
            in0 => \N__6201\,
            in1 => \N__6535\,
            in2 => \N__6228\,
            in3 => \N__6777\,
            lcout => \I_DUT.U_6.N_95\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.count_0_LC_9_13_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__6203\,
            in1 => \N__7076\,
            in2 => \_gnd_net_\,
            in3 => \N__6216\,
            lcout => \I_DUT.U_6.countZ0Z_0\,
            ltout => OPEN,
            carryin => \bfn_9_13_0_\,
            carryout => \I_DUT.U_6.count_cry_0\,
            clk => \N__10175\,
            ce => \N__6165\,
            sr => \N__9991\
        );

    \I_DUT.U_6.count_1_LC_9_13_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__6193\,
            in1 => \N__6510\,
            in2 => \_gnd_net_\,
            in3 => \N__6213\,
            lcout => \I_DUT.U_6.countZ0Z_1\,
            ltout => OPEN,
            carryin => \I_DUT.U_6.count_cry_0\,
            carryout => \I_DUT.U_6.count_cry_1\,
            clk => \N__10175\,
            ce => \N__6165\,
            sr => \N__9991\
        );

    \I_DUT.U_6.count_2_LC_9_13_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__6204\,
            in1 => \N__6778\,
            in2 => \_gnd_net_\,
            in3 => \N__6210\,
            lcout => \I_DUT.U_6.countZ0Z_2\,
            ltout => OPEN,
            carryin => \I_DUT.U_6.count_cry_1\,
            carryout => \I_DUT.U_6.count_cry_2\,
            clk => \N__10175\,
            ce => \N__6165\,
            sr => \N__9991\
        );

    \I_DUT.U_6.count_3_LC_9_13_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__6194\,
            in1 => \N__6536\,
            in2 => \_gnd_net_\,
            in3 => \N__6207\,
            lcout => \I_DUT.U_6.countZ0Z_3\,
            ltout => OPEN,
            carryin => \I_DUT.U_6.count_cry_2\,
            carryout => \I_DUT.U_6.count_cry_3\,
            clk => \N__10175\,
            ce => \N__6165\,
            sr => \N__9991\
        );

    \I_DUT.U_6.count_4_LC_9_13_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000100100010"
        )
    port map (
            in0 => \N__7140\,
            in1 => \N__6195\,
            in2 => \_gnd_net_\,
            in3 => \N__6168\,
            lcout => \I_DUT.U_6.countZ0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10175\,
            ce => \N__6165\,
            sr => \N__9991\
        );

    \I_DUT.U_6.adc_clock_RNO_0_LC_9_14_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0110001001101001"
        )
    port map (
            in0 => \N__7177\,
            in1 => \N__7126\,
            in2 => \N__6750\,
            in3 => \N__7071\,
            lcout => \I_DUT.U_6.N_37\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.adc_clock_RNIALCJ_LC_9_14_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1101110101010101"
        )
    port map (
            in0 => \N__7176\,
            in1 => \N__7125\,
            in2 => \_gnd_net_\,
            in3 => \N__7070\,
            lcout => \I_DUT.U_6.countlde_i_o3_0_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \acq_pretrig_LC_9_17_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__6480\,
            lcout => \acq_pretrigZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10165\,
            ce => 'H',
            sr => \N__9984\
        );

    \I_DUT.U_1.fpga_m_ret_3_RNI672E_LC_9_18_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000010111000"
        )
    port map (
            in0 => \N__7922\,
            in1 => \N__6300\,
            in2 => \N__8594\,
            in3 => \N__6469\,
            lcout => \I_DUT.U_1.Trigg_in\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \acq_trig_LC_9_20_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__6306\,
            lcout => \acq_trigZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10164\,
            ce => 'H',
            sr => \N__9983\
        );

    \I_DUT.U_4.fpga_m_2_ret_LC_10_2_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0101010100110011"
        )
    port map (
            in0 => \N__10365\,
            in1 => \N__10656\,
            in2 => \_gnd_net_\,
            in3 => \N__10803\,
            lcout => \I_DUT.U_4.fpga_m_2_retZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10214\,
            ce => 'H',
            sr => \N__10023\
        );

    \I_DUT.U_5.un1_adc_clock11_1_0_o3_1_LC_10_4_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111101110"
        )
    port map (
            in0 => \N__8400\,
            in1 => \N__10647\,
            in2 => \_gnd_net_\,
            in3 => \N__10813\,
            lcout => \I_DUT.U_5.N_54i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.trigg_set_m_i_0_o3_2_LC_10_6_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111110111"
        )
    port map (
            in0 => \N__10417\,
            in1 => \N__8396\,
            in2 => \N__10655\,
            in3 => \N__10843\,
            lcout => \I_DUT.m_i_0_reti\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_6_LC_10_7_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0001000100010001"
        )
    port map (
            in0 => \N__10745\,
            in1 => \N__10418\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \I_DUT.U_4.un18_m_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10184\,
            ce => 'H',
            sr => \N__10002\
        );

    \I_DUT.U_5.fpga_m_ret_6_LC_10_8_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000000000010000"
        )
    port map (
            in0 => \N__10620\,
            in1 => \N__8395\,
            in2 => \N__10426\,
            in3 => \N__10845\,
            lcout => \I_DUT.U_5.adc_clock11_i_0_i_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10181\,
            ce => 'H',
            sr => \N__9998\
        );

    \fpga_m_3_1_LC_10_9_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101010101010"
        )
    port map (
            in0 => \N__10420\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \fpga_mZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10178\,
            ce => 'H',
            sr => \N__9995\
        );

    \I_DUT.U_5.fpga_m_ret_10_LC_10_9_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__10864\,
            lcout => \I_DUT.fpga_m_i_3_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10178\,
            ce => 'H',
            sr => \N__9995\
        );

    \I_DUT.U_5.fpga_m_0_ret_9_LC_10_9_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0101010101010101"
        )
    port map (
            in0 => \N__10419\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \I_DUT.fpga_m_i_2_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10178\,
            ce => 'H',
            sr => \N__9995\
        );

    \I_DUT.U_2.count_0_LC_10_10_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010010101011010"
        )
    port map (
            in0 => \N__7894\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__6857\,
            lcout => \I_DUT.count_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10176\,
            ce => 'H',
            sr => \N__9993\
        );

    \I_DUT.U_2.count_RNI1V99_4_LC_10_11_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000010001"
        )
    port map (
            in0 => \N__7217\,
            in1 => \N__6791\,
            in2 => \_gnd_net_\,
            in3 => \N__6806\,
            lcout => \I_DUT.count11_0_2\,
            ltout => \I_DUT.count11_0_2_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_3.q_int_RNI5U9M_LC_10_11_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101010011010"
        )
    port map (
            in0 => \N__6616\,
            in1 => \N__6855\,
            in2 => \N__6600\,
            in3 => \N__6829\,
            lcout => \I_DUT.q_int_RNI5U9M\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.ncs_fram_1_0_LC_10_12_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8569\,
            lcout => \I_DUT.fram_ncsAF_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10172\,
            ce => \N__6546\,
            sr => \N__9988\
        );

    \I_DUT.U_6.ncs_adc_LC_10_12_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1010101010111010"
        )
    port map (
            in0 => \N__8568\,
            in1 => \N__6537\,
            in2 => \N__6555\,
            in3 => \N__6779\,
            lcout => o_meas_1mhz_c,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10172\,
            ce => \N__6546\,
            sr => \N__9988\
        );

    \I_DUT.U_6.count_go_RNO_1_LC_10_13_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000010100000000"
        )
    port map (
            in0 => \N__6508\,
            in1 => \_gnd_net_\,
            in2 => \N__6780\,
            in3 => \N__6534\,
            lcout => \I_DUT.U_6.count_go_3_i_0_a3_0_4_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.count_RNIA8TM_1_LC_10_13_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111101110"
        )
    port map (
            in0 => \N__6533\,
            in1 => \N__6507\,
            in2 => \_gnd_net_\,
            in3 => \N__6773\,
            lcout => \I_DUT.U_6.N_53\,
            ltout => \I_DUT.U_6.N_53_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.count_go_RNO_0_LC_10_13_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000110000010001"
        )
    port map (
            in0 => \N__7648\,
            in1 => \N__7075\,
            in2 => \N__6732\,
            in3 => \N__7135\,
            lcout => \I_DUT.U_6.count_go_3_i_0_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_12.stmClk_old_rst_RNIFHFV_LC_10_13_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0010000010100000"
        )
    port map (
            in0 => \N__8009\,
            in1 => \N__8071\,
            in2 => \N__6729\,
            in3 => \N__8046\,
            lcout => \I_DUT.U_12.valuePreTrig_int_0_sqmuxa\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_12.stmClk_old_RNO_LC_10_13_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000010101010"
        )
    port map (
            in0 => \N__8010\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__7710\,
            lcout => \I_DUT.U_12.stmClk_old_RNOZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.count_go_LC_10_14_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000000010101000"
        )
    port map (
            in0 => \N__6699\,
            in1 => \N__7139\,
            in2 => \N__6693\,
            in3 => \N__6684\,
            lcout => \I_DUT.count_go\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10166\,
            ce => 'H',
            sr => \N__9985\
        );

    \I_DUT.U_4.fpga_m_1_ret_RNIHEAG_LC_11_1_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011100100"
        )
    port map (
            in0 => \N__6993\,
            in1 => \N__7528\,
            in2 => \N__9443\,
            in3 => \N__9505\,
            lcout => \I_DUT.fpga_m_1_ret_RNIHEAG_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_5_RNIM1E3_LC_11_2_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111100010001000"
        )
    port map (
            in0 => \N__8180\,
            in1 => \N__6975\,
            in2 => \N__7401\,
            in3 => \N__9398\,
            lcout => \I_DUT.U_5.fpga_m_ret_5_RNIM1EZ0Z3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_2_ret_RNIIIGK_LC_11_2_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011100100"
        )
    port map (
            in0 => \N__6657\,
            in1 => \N__7579\,
            in2 => \N__9458\,
            in3 => \N__9504\,
            lcout => \I_DUT.fpga_m_2_ret_RNIIIGK_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.MISO_0_i_LC_11_2_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010100000000"
        )
    port map (
            in0 => \N__6960\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9656\,
            lcout => \I_DUT_U_5_MISO_0_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_5_RNIN2E3_LC_11_3_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110110010100000"
        )
    port map (
            in0 => \N__7535\,
            in1 => \N__7002\,
            in2 => \N__7400\,
            in3 => \N__8173\,
            lcout => \I_DUT.U_5.fpga_m_ret_5_RNIN2EZ0Z3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_13.MISO_OUT_er_LC_11_4_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9567\,
            lcout => \I_DUT.MISO_AF\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10196\,
            ce => \N__6951\,
            sr => \N__10008\
        );

    \I_DUT.U_13.MISO_OUT_er_RNO_LC_11_6_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0100000011000000"
        )
    port map (
            in0 => \N__8079\,
            in1 => \N__9601\,
            in2 => \N__8015\,
            in3 => \N__8045\,
            lcout => \I_DUT.U_13.MISO_OUT_0_sqmuxa\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_6_RNIM2D7_LC_11_7_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010000000100"
        )
    port map (
            in0 => \N__9506\,
            in1 => \N__7313\,
            in2 => \N__6931\,
            in3 => \N__9459\,
            lcout => \I_DUT.fpga_m_ret_6_RNIM2D7_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_4_RNIU7V2_LC_11_10_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101000000000"
        )
    port map (
            in0 => \N__8148\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__7449\,
            lcout => OPEN,
            ltout => \I_DUT.U_5.N_98_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_5_RNI22EC_LC_11_10_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010111100100011"
        )
    port map (
            in0 => \N__7038\,
            in1 => \N__7371\,
            in2 => \N__6906\,
            in3 => \N__7998\,
            lcout => \I_DUT_U_5_FR_CLOCK_0_i_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_2.count_cry_c_0_LC_11_11_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__6856\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_11_11_0_\,
            carryout => \I_DUT.U_2.count_cry_0\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_2.count_1_LC_11_11_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__6830\,
            in2 => \N__7901\,
            in3 => \N__6813\,
            lcout => \I_DUT.count_1\,
            ltout => OPEN,
            carryin => \I_DUT.U_2.count_cry_0\,
            carryout => \I_DUT.U_2.count_cry_1\,
            clk => \N__10173\,
            ce => 'H',
            sr => \N__9989\
        );

    \I_DUT.U_2.count_2_LC_11_11_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7845\,
            in2 => \N__6810\,
            in3 => \N__6795\,
            lcout => \I_DUT.U_2.countZ0Z_2\,
            ltout => OPEN,
            carryin => \I_DUT.U_2.count_cry_1\,
            carryout => \I_DUT.U_2.count_cry_2\,
            clk => \N__10173\,
            ce => 'H',
            sr => \N__9989\
        );

    \I_DUT.U_2.count_3_LC_11_11_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__6792\,
            in2 => \N__7902\,
            in3 => \N__7224\,
            lcout => \I_DUT.U_2.countZ0Z_3\,
            ltout => OPEN,
            carryin => \I_DUT.U_2.count_cry_2\,
            carryout => \I_DUT.U_2.count_cry_3\,
            clk => \N__10173\,
            ce => 'H',
            sr => \N__9989\
        );

    \I_DUT.U_2.count_4_LC_11_11_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1100110000110011"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__7218\,
            in2 => \_gnd_net_\,
            in3 => \N__7221\,
            lcout => \I_DUT.U_2.countZ0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10173\,
            ce => 'H',
            sr => \N__9989\
        );

    \I_DUT.U_6.fram_clock_1_0_LC_11_12_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1101110101010101"
        )
    port map (
            in0 => \N__7202\,
            in1 => \N__7146\,
            in2 => \_gnd_net_\,
            in3 => \N__7083\,
            lcout => \I_DUT.fram_sclkAF_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10170\,
            ce => \N__7029\,
            sr => \N__9986\
        );

    \I_DUT.U_12.stmClk_old_LC_11_13_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__7997\,
            lcout => \I_DUT.stmClk_old\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10167\,
            ce => 'H',
            sr => \N__7020\
        );

    \adc_sdo_3_LC_12_1_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__7008\,
            lcout => \adc_sdoZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10207\,
            ce => 'H',
            sr => \N__10017\
        );

    \I_DUT.U_4.fpga_m_1_ret_LC_12_1_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1010101000110011"
        )
    port map (
            in0 => \N__10409\,
            in1 => \N__10652\,
            in2 => \_gnd_net_\,
            in3 => \N__10787\,
            lcout => \I_DUT.U_4.fpga_m_1_retZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10207\,
            ce => 'H',
            sr => \N__10017\
        );

    \adc_sdo_2_LC_12_1_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__6987\,
            lcout => \adc_sdoZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10207\,
            ce => 'H',
            sr => \N__10017\
        );

    \I_DUT.U_5.fpga_m_ret_4_RNIPT68_LC_12_2_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110010010100000"
        )
    port map (
            in0 => \N__7443\,
            in1 => \N__7398\,
            in2 => \N__6969\,
            in3 => \N__9399\,
            lcout => \I_DUT.U_5.FRAM_SDI_1_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_5_RNIL0E3_LC_12_2_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110110010100000"
        )
    port map (
            in0 => \N__7399\,
            in1 => \N__9141\,
            in2 => \N__7584\,
            in3 => \N__8181\,
            lcout => OPEN,
            ltout => \I_DUT.U_5.fpga_m_ret_5_RNIL0EZ0Z3_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_4_RNIOS68_LC_12_2_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110010010100000"
        )
    port map (
            in0 => \N__7442\,
            in1 => \N__7397\,
            in2 => \N__7587\,
            in3 => \N__7580\,
            lcout => \I_DUT.U_5.FRAM_SDI_1_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_0_ret_4_RNIDV2F_LC_12_3_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000101000001100"
        )
    port map (
            in0 => \N__7566\,
            in1 => \N__7550\,
            in2 => \N__7299\,
            in3 => \N__8240\,
            lcout => \fpga_m_0_ret_4_RNIDV2F_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_4_RNIQU68_LC_12_3_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110101001000000"
        )
    port map (
            in0 => \N__7445\,
            in1 => \N__7393\,
            in2 => \N__7539\,
            in3 => \N__7512\,
            lcout => OPEN,
            ltout => \I_DUT.U_5.FRAM_SDI_1_3_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_0_ret_4_RNIE03F_LC_12_3_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011000100100000"
        )
    port map (
            in0 => \N__8241\,
            in1 => \N__7297\,
            in2 => \N__7506\,
            in3 => \N__7490\,
            lcout => \fpga_m_0_ret_4_RNIE03F_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_0_ret_4_RNICU2F_LC_12_4_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111000000010"
        )
    port map (
            in0 => \N__7460\,
            in1 => \N__8239\,
            in2 => \N__7293\,
            in3 => \N__7479\,
            lcout => \fpga_m_0_ret_4_RNICU2F_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_5_RNIKVD3_LC_12_4_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110101011000000"
        )
    port map (
            in0 => \N__7320\,
            in1 => \N__9744\,
            in2 => \N__8172\,
            in3 => \N__7382\,
            lcout => OPEN,
            ltout => \I_DUT.U_5.fpga_m_ret_5_RNIKVDZ0Z3_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_ret_4_RNINR68_LC_12_4_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110010010100000"
        )
    port map (
            in0 => \N__7444\,
            in1 => \N__7381\,
            in2 => \N__7323\,
            in3 => \N__7319\,
            lcout => OPEN,
            ltout => \I_DUT.U_5.FRAM_SDI_1_0_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_5.fpga_m_0_ret_4_RNIBT2F_LC_12_4_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011100100"
        )
    port map (
            in0 => \N__8238\,
            in1 => \N__7235\,
            in2 => \N__7302\,
            in3 => \N__7280\,
            lcout => \fpga_m_0_ret_4_RNIBT2F_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_13.fpga_m_ret_1_LC_12_5_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000100000000000"
        )
    port map (
            in0 => \N__10821\,
            in1 => \N__8364\,
            in2 => \N__10651\,
            in3 => \N__10413\,
            lcout => \I_DUT.un1_m\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10185\,
            ce => 'H',
            sr => \N__10001\
        );

    \I_DUT.U_13.fpga_m_ret_1_RNIBAUJ_LC_12_6_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111001111110011"
        )
    port map (
            in0 => \N__8078\,
            in1 => \N__9600\,
            in2 => \N__8011\,
            in3 => \N__8038\,
            lcout => \I_DUT.U_13.MISO_OUT_1_sqmuxa_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_12.stmClk_old_rst_LC_12_12_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__7921\,
            lcout => \I_DUT.stmClk_old_rst\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10168\,
            ce => 'H',
            sr => \N__7929\
        );

    \I_DUT.U_12.stmClk_old_rst_RNO_LC_12_13_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000110011"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__8016\,
            in2 => \_gnd_net_\,
            in3 => \N__7703\,
            lcout => \I_DUT.U_12.stmClk_old_rst_RNOZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_6.count_go_RNIPCQ7_LC_12_14_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__7635\,
            lcout => \I_DUT.count_go_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I6.Q_LC_12_18_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__7912\,
            lcout => \lsig_resetSynch_n\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10163\,
            ce => 'H',
            sr => \N__7719\
        );

    \I6.Q_RNO_LC_12_19_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__7728\,
            lcout => \I6.iRST_rst_n_c_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I6.Q_RNIUSS1_LC_12_19_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__7696\,
            lcout => \I6.lsig_resetSynch_n_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_sclk_meas_obufLegalizeSB_DFF_LC_12_20_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_sclk_meas_obufLegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9858\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.done_Counter_un3_go_0_I_57_c_RNIDACS_LC_12_20_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1101100001010000"
        )
    port map (
            in0 => \N__7662\,
            in1 => \N__8595\,
            in2 => \N__8574\,
            in3 => \N__8463\,
            lcout => \I_DUT.U_1.N_24\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_13.count_memory_0_LC_13_1_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__8409\,
            in2 => \_gnd_net_\,
            in3 => \N__8421\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10202\,
            ce => \N__9552\,
            sr => \N__10024\
        );

    \I_DUT.U_13.count_memory_1_LC_13_1_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__8427\,
            in1 => \N__8415\,
            in2 => \_gnd_net_\,
            in3 => \N__9683\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10202\,
            ce => \N__9552\,
            sr => \N__10024\
        );

    \I_DUT.U_1.Memory_0_LC_13_2_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8667\,
            lcout => \I_DUT.Memory_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10195\,
            ce => \N__9290\,
            sr => \N__10018\
        );

    \I_DUT.U_1.Memory_1_LC_13_2_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8652\,
            lcout => \I_DUT.Memory_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10195\,
            ce => \N__9290\,
            sr => \N__10018\
        );

    \I_DUT.U_13.fpga_m_ret_3_LC_13_3_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1101111111111111"
        )
    port map (
            in0 => \N__8394\,
            in1 => \N__10587\,
            in2 => \N__10431\,
            in3 => \N__10791\,
            lcout => \I_DUT.U_13.un1_m_i_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10190\,
            ce => 'H',
            sr => \N__10013\
        );

    \I_DUT.U_5.fpga_m_0_ret_4_LC_13_10_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1111111011111111"
        )
    port map (
            in0 => \N__10844\,
            in1 => \N__8373\,
            in2 => \N__10630\,
            in3 => \N__10432\,
            lcout => \I_DUT.U_5.adc_clock11_i_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10169\,
            ce => 'H',
            sr => \N__9992\
        );

    \I_DUT.U_5.fpga_m_0_ret_4_RNIJRRD_LC_13_12_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000100010101010"
        )
    port map (
            in0 => \N__8227\,
            in1 => \N__8198\,
            in2 => \_gnd_net_\,
            in3 => \N__8159\,
            lcout => o_adc_nsc_c,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_1.Memory_4_LC_14_1_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8619\,
            lcout => \I_DUT.Memory_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10208\,
            ce => \N__9286\,
            sr => \N__10029\
        );

    \I_DUT.U_1.Memory_2_LC_14_1_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8637\,
            lcout => \I_DUT.Memory_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10208\,
            ce => \N__9286\,
            sr => \N__10029\
        );

    \I_DUT.U_1.count_memory_0_LC_14_2_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8978\,
            in1 => \N__8666\,
            in2 => \_gnd_net_\,
            in3 => \N__8655\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_0\,
            ltout => OPEN,
            carryin => \bfn_14_2_0_\,
            carryout => \I_DUT.U_1.count_memory_cry_0\,
            clk => \N__10203\,
            ce => \N__8793\,
            sr => \N__10025\
        );

    \I_DUT.U_1.count_memory_1_LC_14_2_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8974\,
            in1 => \N__8651\,
            in2 => \_gnd_net_\,
            in3 => \N__8640\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_1\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_0\,
            carryout => \I_DUT.U_1.count_memory_cry_1\,
            clk => \N__10203\,
            ce => \N__8793\,
            sr => \N__10025\
        );

    \I_DUT.U_1.count_memory_2_LC_14_2_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8979\,
            in1 => \N__8636\,
            in2 => \_gnd_net_\,
            in3 => \N__8625\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_2\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_1\,
            carryout => \I_DUT.U_1.count_memory_cry_2\,
            clk => \N__10203\,
            ce => \N__8793\,
            sr => \N__10025\
        );

    \I_DUT.U_1.count_memory_3_LC_14_2_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8975\,
            in1 => \N__9080\,
            in2 => \_gnd_net_\,
            in3 => \N__8622\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_3\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_2\,
            carryout => \I_DUT.U_1.count_memory_cry_3\,
            clk => \N__10203\,
            ce => \N__8793\,
            sr => \N__10025\
        );

    \I_DUT.U_1.count_memory_4_LC_14_2_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8980\,
            in1 => \N__8618\,
            in2 => \_gnd_net_\,
            in3 => \N__8607\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_4\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_3\,
            carryout => \I_DUT.U_1.count_memory_cry_4\,
            clk => \N__10203\,
            ce => \N__8793\,
            sr => \N__10025\
        );

    \I_DUT.U_1.count_memory_5_LC_14_2_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8976\,
            in1 => \N__9098\,
            in2 => \_gnd_net_\,
            in3 => \N__8604\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_5\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_4\,
            carryout => \I_DUT.U_1.count_memory_cry_5\,
            clk => \N__10203\,
            ce => \N__8793\,
            sr => \N__10025\
        );

    \I_DUT.U_1.count_memory_6_LC_14_2_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8981\,
            in1 => \N__9026\,
            in2 => \_gnd_net_\,
            in3 => \N__8601\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_6\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_5\,
            carryout => \I_DUT.U_1.count_memory_cry_6\,
            clk => \N__10203\,
            ce => \N__8793\,
            sr => \N__10025\
        );

    \I_DUT.U_1.count_memory_7_LC_14_2_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8977\,
            in1 => \N__9110\,
            in2 => \_gnd_net_\,
            in3 => \N__8598\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_7\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_6\,
            carryout => \I_DUT.U_1.count_memory_cry_7\,
            clk => \N__10203\,
            ce => \N__8793\,
            sr => \N__10025\
        );

    \I_DUT.U_1.count_memory_8_LC_14_3_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8969\,
            in1 => \N__9050\,
            in2 => \_gnd_net_\,
            in3 => \N__8694\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_8\,
            ltout => OPEN,
            carryin => \bfn_14_3_0_\,
            carryout => \I_DUT.U_1.count_memory_cry_8\,
            clk => \N__10197\,
            ce => \N__8792\,
            sr => \N__10019\
        );

    \I_DUT.U_1.count_memory_9_LC_14_3_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8973\,
            in1 => \N__8759\,
            in2 => \_gnd_net_\,
            in3 => \N__8691\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_9\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_8\,
            carryout => \I_DUT.U_1.count_memory_cry_9\,
            clk => \N__10197\,
            ce => \N__8792\,
            sr => \N__10019\
        );

    \I_DUT.U_1.count_memory_10_LC_14_3_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8966\,
            in1 => \N__8729\,
            in2 => \_gnd_net_\,
            in3 => \N__8688\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_10\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_9\,
            carryout => \I_DUT.U_1.count_memory_cry_10\,
            clk => \N__10197\,
            ce => \N__8792\,
            sr => \N__10019\
        );

    \I_DUT.U_1.count_memory_11_LC_14_3_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8970\,
            in1 => \N__8744\,
            in2 => \_gnd_net_\,
            in3 => \N__8685\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_11\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_10\,
            carryout => \I_DUT.U_1.count_memory_cry_11\,
            clk => \N__10197\,
            ce => \N__8792\,
            sr => \N__10019\
        );

    \I_DUT.U_1.count_memory_12_LC_14_3_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8967\,
            in1 => \N__8774\,
            in2 => \_gnd_net_\,
            in3 => \N__8682\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_12\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_11\,
            carryout => \I_DUT.U_1.count_memory_cry_12\,
            clk => \N__10197\,
            ce => \N__8792\,
            sr => \N__10019\
        );

    \I_DUT.U_1.count_memory_13_LC_14_3_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8971\,
            in1 => \N__9248\,
            in2 => \_gnd_net_\,
            in3 => \N__8679\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_13\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_12\,
            carryout => \I_DUT.U_1.count_memory_cry_13\,
            clk => \N__10197\,
            ce => \N__8792\,
            sr => \N__10019\
        );

    \I_DUT.U_1.count_memory_14_LC_14_3_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8968\,
            in1 => \N__9038\,
            in2 => \_gnd_net_\,
            in3 => \N__8676\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_14\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_13\,
            carryout => \I_DUT.U_1.count_memory_cry_14\,
            clk => \N__10197\,
            ce => \N__8792\,
            sr => \N__10019\
        );

    \I_DUT.U_1.count_memory_15_LC_14_3_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8972\,
            in1 => \N__9062\,
            in2 => \_gnd_net_\,
            in3 => \N__8673\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_15\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_14\,
            carryout => \I_DUT.U_1.count_memory_cry_15\,
            clk => \N__10197\,
            ce => \N__8792\,
            sr => \N__10019\
        );

    \I_DUT.U_1.count_memory_16_LC_14_4_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8901\,
            in1 => \N__9014\,
            in2 => \_gnd_net_\,
            in3 => \N__8670\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_16\,
            ltout => OPEN,
            carryin => \bfn_14_4_0_\,
            carryout => \I_DUT.U_1.count_memory_cry_16\,
            clk => \N__10191\,
            ce => \N__8791\,
            sr => \N__10014\
        );

    \I_DUT.U_1.count_memory_17_LC_14_4_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__8902\,
            in1 => \N__9317\,
            in2 => \_gnd_net_\,
            in3 => \N__9003\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_17\,
            ltout => OPEN,
            carryin => \I_DUT.U_1.count_memory_cry_16\,
            carryout => \I_DUT.U_1.count_memory_cry_17\,
            clk => \N__10191\,
            ce => \N__8791\,
            sr => \N__10014\
        );

    \I_DUT.U_1.count_memory_18_LC_14_4_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000100100010"
        )
    port map (
            in0 => \N__9302\,
            in1 => \N__8903\,
            in2 => \_gnd_net_\,
            in3 => \N__8796\,
            lcout => \I_DUT.U_1.count_memoryZ0Z_18\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10191\,
            ce => \N__8791\,
            sr => \N__10014\
        );

    \I_DUT.U_1.Memory_12_LC_14_5_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8778\,
            lcout => \I_DUT.Memory_12\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10186\,
            ce => \N__9291\,
            sr => \N__10009\
        );

    \I_DUT.U_1.Memory_9_LC_14_5_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8763\,
            lcout => \I_DUT.Memory_9\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10186\,
            ce => \N__9291\,
            sr => \N__10009\
        );

    \I_DUT.U_1.Memory_11_LC_14_5_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8748\,
            lcout => \I_DUT.Memory_11\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10186\,
            ce => \N__9291\,
            sr => \N__10009\
        );

    \I_DUT.U_1.Memory_10_LC_14_5_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__8733\,
            lcout => \I_DUT.Memory_10\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10186\,
            ce => \N__9291\,
            sr => \N__10009\
        );

    \I_DUT.U_13.count_memory_3_LC_15_1_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__9685\,
            in1 => \N__8700\,
            in2 => \_gnd_net_\,
            in3 => \N__9069\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10215\,
            ce => \N__9553\,
            sr => \N__10033\
        );

    \I_DUT.U_13.count_memory_5_LC_15_1_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__9687\,
            in1 => \N__9117\,
            in2 => \_gnd_net_\,
            in3 => \N__9087\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10215\,
            ce => \N__9553\,
            sr => \N__10033\
        );

    \I_DUT.U_13.count_memory_2_LC_15_1_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__8718\,
            in1 => \N__8706\,
            in2 => \_gnd_net_\,
            in3 => \N__9684\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10215\,
            ce => \N__9553\,
            sr => \N__10033\
        );

    \I_DUT.U_13.count_memory_4_LC_15_1_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__9686\,
            in1 => \N__9129\,
            in2 => \_gnd_net_\,
            in3 => \N__9123\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10215\,
            ce => \N__9553\,
            sr => \N__10033\
        );

    \I_DUT.U_1.Memory_7_LC_15_2_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9111\,
            lcout => \I_DUT.Memory_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10209\,
            ce => \N__9287\,
            sr => \N__10030\
        );

    \I_DUT.U_1.Memory_5_LC_15_2_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9099\,
            lcout => \I_DUT.Memory_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10209\,
            ce => \N__9287\,
            sr => \N__10030\
        );

    \I_DUT.U_1.Memory_3_LC_15_2_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9081\,
            lcout => \I_DUT.Memory_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10209\,
            ce => \N__9287\,
            sr => \N__10030\
        );

    \I_DUT.U_1.Memory_15_LC_15_3_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9063\,
            lcout => \I_DUT.Memory_15\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10204\,
            ce => \N__9288\,
            sr => \N__10026\
        );

    \I_DUT.U_1.Memory_8_LC_15_3_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1100110011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__9051\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \I_DUT.Memory_8\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10204\,
            ce => \N__9288\,
            sr => \N__10026\
        );

    \I_DUT.U_1.Memory_14_LC_15_3_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9039\,
            lcout => \I_DUT.Memory_14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10204\,
            ce => \N__9288\,
            sr => \N__10026\
        );

    \I_DUT.U_1.Memory_6_LC_15_3_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9027\,
            lcout => \I_DUT.Memory_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10204\,
            ce => \N__9288\,
            sr => \N__10026\
        );

    \I_DUT.U_1.Memory_16_LC_15_3_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9015\,
            lcout => \I_DUT.Memory_16\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10204\,
            ce => \N__9288\,
            sr => \N__10026\
        );

    \I_DUT.U_1.Memory_13_LC_15_3_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9249\,
            lcout => \I_DUT.Memory_13\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10204\,
            ce => \N__9288\,
            sr => \N__10026\
        );

    \I_DUT.U_13.count_memory_6_LC_15_4_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__9237\,
            in1 => \N__9228\,
            in2 => \_gnd_net_\,
            in3 => \N__9657\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10198\,
            ce => \N__9554\,
            sr => \N__10020\
        );

    \I_DUT.U_13.count_memory_8_LC_15_4_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__9201\,
            in1 => \N__9222\,
            in2 => \_gnd_net_\,
            in3 => \N__9659\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_8\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10198\,
            ce => \N__9554\,
            sr => \N__10020\
        );

    \I_DUT.U_13.count_memory_7_LC_15_4_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__9658\,
            in1 => \N__9216\,
            in2 => \_gnd_net_\,
            in3 => \N__9210\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10198\,
            ce => \N__9554\,
            sr => \N__10020\
        );

    \I_DUT.U_13.count_memory_11_LC_15_5_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__9628\,
            in1 => \N__9165\,
            in2 => \_gnd_net_\,
            in3 => \N__9195\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_11\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10192\,
            ce => \N__9556\,
            sr => \N__10015\
        );

    \I_DUT.U_13.count_memory_9_LC_15_5_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__9189\,
            in1 => \N__9183\,
            in2 => \_gnd_net_\,
            in3 => \N__9630\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_9\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10192\,
            ce => \N__9556\,
            sr => \N__10015\
        );

    \I_DUT.U_13.count_memory_10_LC_15_5_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__9177\,
            in1 => \N__9171\,
            in2 => \_gnd_net_\,
            in3 => \N__9627\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_10\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10192\,
            ce => \N__9556\,
            sr => \N__10015\
        );

    \I_DUT.U_13.count_memory_12_LC_15_5_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__9629\,
            in1 => \N__9159\,
            in2 => \_gnd_net_\,
            in3 => \N__9153\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_12\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10192\,
            ce => \N__9556\,
            sr => \N__10015\
        );

    \adc_sdo_1_LC_16_1_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9147\,
            lcout => \adc_sdoZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10218\,
            ce => 'H',
            sr => \N__10035\
        );

    \I_DUT.U_13.count_memory_15_LC_16_3_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__9348\,
            in1 => \N__9360\,
            in2 => \_gnd_net_\,
            in3 => \N__9674\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_15\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10210\,
            ce => \N__9555\,
            sr => \N__10031\
        );

    \I_DUT.U_13.count_memory_14_LC_16_3_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__9673\,
            in1 => \N__9327\,
            in2 => \_gnd_net_\,
            in3 => \N__9354\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10210\,
            ce => \N__9555\,
            sr => \N__10031\
        );

    \I_DUT.U_13.count_memory_13_LC_16_3_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__9342\,
            in1 => \N__9333\,
            in2 => \_gnd_net_\,
            in3 => \N__9672\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_13\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10210\,
            ce => \N__9555\,
            sr => \N__10031\
        );

    \I_DUT.U_1.Memory_17_LC_16_4_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9321\,
            lcout => \I_DUT.Memory_17\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10205\,
            ce => \N__9289\,
            sr => \N__10027\
        );

    \I_DUT.U_1.Memory_18_LC_16_4_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9306\,
            lcout => \I_DUT.Memory_18\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10205\,
            ce => \N__9289\,
            sr => \N__10027\
        );

    \o_adc_nsc_obufLegalizeSB_DFF_LC_16_20_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_adc_nsc_obufLegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9851\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_adc_sclk_obufLegalizeSB_DFF_LC_16_20_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_adc_sclk_obufLegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9851\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_meas_1mhz_obufLegalizeSB_DFF_LC_16_20_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_meas_1mhz_obufLegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9851\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \adc_sdo_0_LC_17_1_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__9750\,
            lcout => \adc_sdoZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10219\,
            ce => 'H',
            sr => \N__10036\
        );

    \I_DUT.U_13.count_memory_16_LC_17_3_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__9729\,
            in1 => \N__9723\,
            in2 => \_gnd_net_\,
            in3 => \N__9690\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_16\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10216\,
            ce => \N__9557\,
            sr => \N__10034\
        );

    \I_DUT.U_13.count_memory_17_LC_17_4_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__9714\,
            in1 => \N__9708\,
            in2 => \_gnd_net_\,
            in3 => \N__9688\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_17\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10211\,
            ce => \N__9558\,
            sr => \N__10032\
        );

    \I_DUT.U_13.count_memory_18_LC_17_4_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__9702\,
            in1 => \N__9696\,
            in2 => \_gnd_net_\,
            in3 => \N__9689\,
            lcout => \I_DUT.U_13.count_memoryZ0Z_18\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10211\,
            ce => \N__9558\,
            sr => \N__10032\
        );

    \o_fram_sdi_obuf_0LegalizeSB_DFF_LC_18_1_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_sdi_obuf_0LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9808\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_sdi_obuf_1LegalizeSB_DFF_LC_18_1_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_sdi_obuf_1LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9808\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_sdi_obuf_2LegalizeSB_DFF_LC_18_1_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_sdi_obuf_2LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9808\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_RNI15M5_LC_18_1_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001000000010"
        )
    port map (
            in0 => \N__9382\,
            in1 => \N__9513\,
            in2 => \N__10233\,
            in3 => \N__9444\,
            lcout => \I_DUT.fpga_m_ret_RNI15M5_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_sclk_obuf_0LegalizeSB_DFF_LC_18_20_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_sclk_obuf_0LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9834\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_sclk_obuf_1LegalizeSB_DFF_LC_18_20_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_sclk_obuf_1LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9834\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_sclk_obuf_2LegalizeSB_DFF_LC_18_20_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_sclk_obuf_2LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9834\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \o_fram_sclk_obuf_3LegalizeSB_DFF_LC_18_20_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_sclk_obuf_3LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9834\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \I_DUT.U_4.fpga_m_ret_LC_20_1_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0101010100010001"
        )
    port map (
            in0 => \N__10682\,
            in1 => \N__10579\,
            in2 => \_gnd_net_\,
            in3 => \N__10433\,
            lcout => \I_DUT.U_4.fpga_m_retZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__10220\,
            ce => 'H',
            sr => \N__10038\
        );

    \o_fram_sdi_obuf_3LegalizeSB_DFF_LC_21_1_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \o_fram_sdi_obuf_3LegalizeSB_DFFNet\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__9791\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
