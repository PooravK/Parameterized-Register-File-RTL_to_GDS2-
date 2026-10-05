
# Create physical PG nets

addNet -physical VSS
setNet -net VSS -type special
dbSetIsNetGnd VSS

addNet -physical VDD
setNet -net VDD -type special
dbSetIsNetPwr VDD


# Global PG connectivity

globalNetConnect VDD \
    -type pgpin \
    -pin VDD \
    -inst * \
    -override

globalNetConnect VSS \
    -type pgpin \
    -pin VSS \
    -inst * \
    -override


# Verify nets

dbGet top.nets.name VDD
dbGet top.nets.name VSS


# Core ring

addRing \
    -type core_rings \
    -nets {VDD VSS} \
    -follow core \
    -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} \
    -width 2 \
    -spacing 2 \
    -offset 2 \
    -center 1


# Vertical stripes

addStripe \
    -nets {VDD VSS} \
    -layer Metal8 \
    -direction vertical \
    -width 2 \
    -spacing 2 \
    -set_to_set_distance 40 \
    -start_offset 10 \
    -merge_stripes_value 0.1


# Horizontal stripes

addStripe \
    -nets {VDD VSS} \
    -layer Metal9 \
    -direction horizontal \
    -width 2 \
    -spacing 2 \
    -set_to_set_distance 40 \
    -start_offset 10 \
    -merge_stripes_value 0.1


# Connect PG grid to cell pins

sroute \
    -nets {VDD VSS} \
    -connect {corePin} \
    -layerChangeRange {Metal1 Metal9} \
    -allowJogging 1 \
    -allowLayerChange 1


# Verification

verifyConnectivity -type all
