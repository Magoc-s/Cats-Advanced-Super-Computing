# Cat's Advanced Super Computing [IN DEV]


## Intended Prototypes

**Compute Nodes**

Require cooling from a cooling system, and will output 'data' onto a network.
The cooler they are, the more efficient and productive they are.
Contain special module slots that allow player to add extra CPUs/memory/etc..

- Small
    * 2x2 tile size
    * 4 module slots
    * can only be air cooled
- Advanced
    * 2x3 tile size
    * 8 module slots
    * can be air or liquid cooled
- Quantum
    * 3x3 tile size
    * 12 module slots
    * can only be liquid cooled
    * large productivity bonus when below -190 degrees?

Production building, consume coolant, output warm coolant and 'data'. Warm coolant can be recycled, data can be sent through a network to the computer science buildings.

The cooler they are, the faster they work. If they get too hot, they stop working entirely.

**Computing Modules**

Can be added to compute nodes for flat bonuses at a flat increase to energy cost and heat production (coolant requirement).

- CPUs: increase speed at an energy and heat cost, as well as reducing heat limit.
    * N-core Processing CPU
        - 4,8,16,32 core variants
    * Data Processing Acceleration Unit (Advanced Compute Node ONLY)
        - 64, 96, 128 Compute Unit variants
    * Quantum Computation Unit (Quantum Compute Node ONLY)
        - 1,2,3 Quantum Core variants

- Memory Modules: increase productivity at a heat cost
    * DRAM Memory Module
        - 16, 24, 32 DRAM Chip variants
    * HBMX Caching Module
        - 2, 4, 8 Die variants
    * Crystaline Volatile Memory Module (Quantum Compute Node ONLY)
        - 1D, 2D, 3D Layering variants

- VRM Extension Modules: increase energy efficiency at a heat cost.
    * Active VRM Cooler
        - 100, 200, 300 Fin variants
    * Carbon VRM Addon
        - 10, 6, 2 nanometre variants
    * Optical Null-Leak VRMs
        - single, multi, fully-embedded layer variants


**Coolants**

Coolants can be harvest and generated through several cooling entities and recyclers.

- Air
    * Minimum temp is 12 degrees
    * Max temp is 80 degrees
    * generated by blower coolers, swamp(evaporative) coolers and refridgerant powered coolers (AC)
    * can be vented through vents to be deleted once warm
- Water
    * Minimum temp is 0 degrees
    * Max temp is 105 degrees
    * cooled by running through radiator/cooler setups, which are also modular
    * can be recycled through the cooling setup, cannot be vented (i.e it has to be dealt with) (maybe we can dump it back into a water source with a reverse offshore pump?)
- Liquid Nitrogen
    * Minimum temp is -210 degrees
    * Max temp is -100 degrees
    * harvested from atmospheric processing buildings in gas form (high energy cost)
    * cooled by running through large scale vacuum coolers (high energy cost)
    * can be vented through special evaporation towers, but more energy efficient to recycle

**Coolers**

Coolers are the modular structures used to cool coolant.

- Air
    * Small/Large Blower Cooler
        - produces 22 degree cool air
    * Small/Large Swamp Cooler
        - produces 16 degree cool air at higher amounts
    * Small/Large Refridgerant Condensor Coolers
        - produces 12 degree cool air at highest amounts

- Water
    * Small/Large Passive Radiators
        - produces 22 degree cool water
        - doesn't require power
        - slow
    * Small/Large Active Radiators
        - produces 22 degree cool water
        - moderate power usage, fast
    * Small/Large Heat-pump
        - produces 12 degree cool water
        - High power usage, very fast
        - produces hot air, requires cool air
    * Small/Large Condesor/Evaporator Heatpipe Combo
        - produces 16 degree cool water
        - Higher power usage, very fast

- Nitrogen
    * Air Coooled Vacuum Pump
        - produces -195 degree cool ln2
        - large power cost
        - requires cool air, produces hot air
        - slow, 3x3 tiles in size
    * Compression-fed Active Cooled Vacuum Chamber
        - produces -210 degree cool ln2
        - larger power cost
        - requires cool water, produces warm water
        - fast, 4x4 tiles in size
    * Self-contained High Throughput Vacuum Cooler
        - produces -210 degree cool ln2
        - largest power cost
        - produces large amounts of hot air
        - very fast, 5x5 tiles in size

**Various Fluids and Obtainment Methods**

- 'Data'
    * produced by compute nodes, 'flows' through network cables, to computer science structures

- Nitrogen gas (uncooled)
    * Harvest from atmosphere by atmospheric processing buildings
    * Maybe these buildings can have tiers?
    * Probably should produce oxygen, and a few other trace gasses.
    * but they will just be 'vented' for now.

- Cooling Water (uncooled)
    * Generated by running regular water through filtration/purification structures. Perhaps de-sal structures too?
    * probably tier these buildings too
    * probably should result in scrap products too

