require("module-funcs")
require("module-specs")

--TODO: generify icons to use built in tint operation? probably dont need a separate file for each module tier.

-- CPUS
for index, value in ipairs(n_core_cpu_core_counts) do 
    data:extend(
        {
            type = "module",
            name = tostring(value) .. "-core-processing-cpu",
            localised_description = {"asc-module-description.n-core-processing-cpu"},
            icon = asc_module_graphics(tostring(value) .. "-core-processing-cpu.png"),
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "module",
            category = "CPU",
            tier = index,
            order = "asc-modules-n-core-processing-cpu-" .. tostring(value),
            stack_size = 50,
            effect =
            {
              speed = {bonus = value * 0.01}
              consumption = {bonus = 0.05 * value},
            },
            limitation = asc_compute_module_limitation(),
            limitation_message_key = "asc-compute-modules-only-useable-in-compute-nodes"
        },
    )
end

for index, value in ipairs(data_proc_accel_unit_counts) do 
    data:extend(
        {
            type = "module",
            name = tostring(value) .. "-cu-acceleration-unit",
            localised_description = {"asc-module-description.data-processing-acceleration-unit"},
            icon = asc_module_graphics(tostring(value) .. "-cu-acceleration-unit.png"),
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "module",
            category = "CPU",
            tier = index,
            order = "asc-modules-n-cu-acceleration-unit-" .. tostring(value),
            stack_size = 50,
            effect =
            {
              speed = {bonus = value * 0.006}
              consumption = {bonus = 0.03 * value},
            },
            limitation = asc_compute_module_limitation(),
            limitation_message_key = "asc-compute-modules-only-useable-in-compute-nodes"
        },
    )
end

for index, value in ipairs(quantum_compute_unit_counts) do 
    data:extend(
        {
            type = "module",
            name = tostring(value) .. "-core-quantum-chip",
            localised_description = {"asc-module-description.quantum-compute-unit"},
            icon = asc_module_graphics(tostring(value) .. "-core-quantum-compute-unit.png"),
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "module",
            category = "CPU",
            tier = index,
            order = "asc-modules-n-core-quantum-compute-unit-" .. tostring(value),
            stack_size = 50,
            effect =
            {
              speed = {bonus = value * 0.85}
              consumption = {bonus = 1.5 * value},
            },
            limitation = asc_compute_module_limitation(),
            limitation_message_key = "asc-compute-modules-only-useable-in-compute-nodes"
        },
    )
end
-- END CPUS

-- /
-- /
-- /

-- Memory
for index, value in ipairs(dram_mem_module_counts) do 
    data:extend(
        {
            type = "module",
            name = tostring(value) .. "-dram-chip-mem-module",
            localised_description = {"asc-module-description.memory-module"},
            icon = asc_module_graphics(tostring(value) .. "-chip-memory-module.png"),
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "module",
            category = "Memory",
            tier = index,
            order = "asc-modules-n-chip-memory-module-" .. tostring(value),
            stack_size = 50,
            effect =
            {
                productivity = {bonus = 0.005 * value},
            },
            limitation = asc_compute_module_limitation(),
            limitation_message_key = "asc-compute-modules-only-useable-in-compute-nodes"
        },
    )
end

for index, value in ipairs(hbmx_cache_module_counts) do 
    data:extend(
        {
            type = "module",
            name = tostring(value) .. "-die-hbmx-cache-module",
            localised_description = {"asc-module-description.memory-module"},
            icon = asc_module_graphics(tostring(value) .. "-die-hbmx-cache-module.png"),
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "module",
            category = "Memory",
            tier = index,
            order = "asc-modules-n-die-hbmx-cache-module-" .. tostring(value),
            stack_size = 50,
            effect =
            {
                productivity = {bonus = 0.09 * value},
            },
            limitation = asc_compute_module_limitation(),
            limitation_message_key = "asc-compute-modules-only-useable-in-compute-nodes"
        },
    )
end

for index, value in ipairs(crystal_mem_module_counts) do 
    data:extend(
        {
            type = "module",
            name = tostring(value) .. "d-layered-crystal-memory-module",
            localised_description = {"asc-module-description.memory-module"},
            icon = asc_module_graphics(tostring(value) .. "d-layered-crystal-memory-module.png"),
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "module",
            category = "Memory",
            tier = index,
            order = "asc-modules-d-layered-crystal-memory-module-" .. tostring(value),
            stack_size = 50,
            effect =
            {
                productivity = {bonus = 0.8 * value},
            },
            limitation = asc_compute_module_limitation(),
            limitation_message_key = "asc-compute-modules-only-useable-in-compute-nodes"
        },
    )
end
-- END Memory

-- Theres some VRM ones for efficiency, but no one cares about those
-- TODO: do the efficiency ones that someone cares about probably.