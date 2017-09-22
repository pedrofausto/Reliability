simulator lang = spectre

include "model/nmos.scs"
include "model/pmos.scs"

subckt NAND2_A Z A B vdd gnd
    TNA (Z A net20 gnd) nch w=1.0u l=45n
    TNB (net20 B gnd gnd) nch w=1.0u l=45n
    TPA (Z A vdd vdd) pch w=2.0u l=45n
    TPB (Z B vdd vdd) pch w=2.0u l=45n
ends NAND2_A
// End of subcircuit definition.

// Library name: AgingBib
// Cell name: OR2_B
// View name: schematic
subckt OR2_B Z A B vdd gnd
    TNZ (Z net28 gnd gnd) nch w=1.0u l=45n
    TNB (net28 B gnd gnd) nch w=1.0u l=45n
    TNA (net28 A gnd gnd) nch w=1.0u l=45n
    TPZ (Z net28 vdd vdd) pch w=2.0u l=45n
    TPA (net28 A net34 vdd) pch w=2.0u l=45n
    TPB (net34 B vdd vdd) pch w=2.0u l=45n
ends OR2_B
// End of subcircuit definition.

// Library name: AgingBib
// Cell name: AND2_B
// View name: schematic
subckt AND2_B Z A B vdd gnd
    TNA (net29 A net34 gnd) nch w=1.0u l=45n
    TNB (net34 B gnd gnd) nch w=1.0u l=45n
    TNZ (Z net29 gnd gnd) nch w=1.0u l=45n
    TPB (net29 B vdd vdd) pch w=2.0u l=45n
    TPA (net29 A vdd vdd) pch w=2.0u l=45n
    TPZ (Z net29 vdd vdd) pch w=2.0u l=45n
ends AND2_B
// End of subcircuit definition.

// Library name: AgingBib
// Cell name: INVERT_I
// View name: schematic
subckt INVERT_I Z A vdd gnd
    TNAM2 (Z A gnd gnd) nch w=1.0u l=45n
    TNAM1 (Z A gnd gnd) nch w=1.0u l=45n
    TPAM1 (Z A vdd vdd) pch w=2.0u l=45n
    TPAM2 (Z A vdd vdd) pch w=2.0u l=45n
ends INVERT_I
// End of subcircuit definition.

// Library name: AgingBib
// Cell name: NOR2_A
// View name: schematic
subckt NOR2_A Z A B vdd gnd
    TNA (Z A gnd gnd) nch w=1.0u l=45n
    TNB (Z B gnd gnd) nch w=1.0u l=45n
    TPA (Z A net18 vdd) pch w=2.0u l=45n
    TPB (net18 B vdd vdd) pch w=2.0u l=45n
ends NOR2_A