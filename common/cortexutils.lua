--[===[
Author:  Cortex of HorizonXI

Install:
...game/config/addons/luashitacast/common/
cortexutils.lua
varhelpermod.lua

...game/config/addons/luashitacast/<username_id>/<job>.lua
e.g.
...game/config/addons/luashitacast/Cortex_103321/BLM.lua

Configuring Job Lua:

This system is designed so no programming of funtions is required,
all functionality is generated by parsing the config.
This means there are config sections/table-names that have special meaning, as follows.

-----------------------------------------------------------
- `sets` declared at the top:
local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Earth Staff',
        .
        .
        .
        Feet = 'Wizard\'s Sabots',
    },
};

Allows for `/lac addset <name>` to easily export ingame gear to LAC (luahitacast) format.


- `sets[Strategy] = {}`  to specify default switches (more on these below) setting, e.g

sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Defense',
        TP = 'Default',
        Nuke = 'MAtt',
        SorcRing = true,
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Burst = false,
    },
    ['L65'] = {
        Idle = 'L65',
        TP = 'Default',
        Nuke = 'L65',
        SorcRing = false,
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Burst = false,
    },
}

-- To Cycle between
`/lac fwd Strategy`
or Set
`/lac fwd Strategy L65`



-  `sets['Weapon'] = {}`  to generate weapon options, e.g

sets['Weapon'] = {}
sets['Weapon']['Scythe'] = {}
sets['Weapon']['Scythe']['Outrance'] = {
    main = 'A L\'Outrance',
}


This will generate VarHelper Switches Weapon and W.Variant..  `/lac fwd Weapon`, `/lac fwd W.Variant`
-----------------------------------------------------------

- Handler Sections:
-- Default
-- Precast
-- Midcast
-- Preshot
-- Midshot
-- Ability
-- WeaponSkill
-- Item

e.g.
local WS_STR = {
    Neck = 'Spike Necklace',
    Ring2 = 'Sun Ring',
}
sets['WeaponSkill'] = {
    ['Heavy Swing'] = WS_STR,
}

All sections, with exception to `Default`, will recognise hierarchy i.e. 
[action.name] (e.g ['Sleep']) -> [Skill] -> [Type]  So the following are possible placements for `Sleep` spell
sets['Midcast'] = {
    ['Black Magic'] = {...},
    ['Enfeebling Magic'] = {...},
    ['Sleep'] = {...},
}
(each section alone is enough to action a gear change, however `Sleep` section is used, otherwise `Enfeebling Magic`, otherwise `Black Magic` )
This can be nested at any point.
sets['Midcast'] = {  
    ['Black Magic'] = {
        ['Sleep'] = {...},
        ['Enfeebling Magic'] = {
        },
    },
}

`Default` is a special case where the trigger is not the action (cause there is none), it's the players status (Idle, Engaged, Resting), i.e.
sets['Default'] = {
    ['Idle'] = {...},
    ['Resting'] = {...},
    ['Engaged'] = {...}.
}


Acceptable gear slots are:
{'Main', 'Sub', 'Range', 'Ammo', 'Head', 'Neck', 'Ear1', 'Ear2', 'Body', 'Hands', 'Ring1', 'Ring2', 'Back', 'Waist', 'Legs', 'Feet'}

Note - The case is upper for first letter, this is required as some lowercase don't seem to work with luashitacast (i.e. 'feet').

These can be specified at any level also, i.e. :

sets['Midcast'] = {
    Legs = 'Sorcerer\'s Tonban'
    ['Black Magic'] = {
        ['Sleep'] = {Ammo = 'Phtm. Tathlum'},
        ['Enfeebling Magic'] = {
            Head = 'Igqira Tiara',
        },
    },
}

-----------------------------------------------------------
The following are special table headings that can be nested at any level and mixed together:

- Alpha/Omega - Beginning and end sections, being applied before and after all others (within hierarchy).

- VarHelpers
-- VarCycles - A section header for creating cycling switches
-- VarToggles - A section header for boolean gear switches
e.g
```
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {Ring2 = 'Phalanx Ring', ...etc},
                ['Defense'] = {},
                ['L65'] = {...},
            },
        },
        ['VarToggles'] = {
            ['Fishing'] = {...},
            ['Working'] = {...},
        },
.
.
.
```
(`/lac fwd Idle` would cycle, `/lac fwd Fishing` would equip/unequip)

- Movement - A section for movement gear (usually under `['Default']['Idle']`), equips when moving.

- Elemental - Again, can be put anywhere but usually under (any) Midcast section.
-- ['Elemental']['Element'/'Day'/'Weather'] - Equip sets according to element of action/day/weather.
-- can set `CheckClash = true/false` at any level of 'Elemental', which will check if element of action is
   weak to day/weather element, or to continue if same as double weather element (even if weak to day)yeah.
e.g.
```
        ['Elemental'] = {
            ['Element'] = {
                ['Fire'] = {
                    Main = 'Vulcan\'s Staff',
                },
                .
                .
                .

            },
            ['Day'] = {
                ClashCheck = true,
                ['Fire'] = {
                    Waist = 'Karin Obi',
                },
                ['Earth'] = {
                    Waist = 'Dorin Obi',
                },
                .
                .
                .
```
Note on ClashCheck: 
Day bonus is the same as single weather bonus (so if they are oposite then cancel),
double weather will dominate day weakness to confer some reduced bonus.
i.e. Obi will ensure the positive or negative (!) day/weather bonus,
so we need to avoid using day obi when weather is it's weakness (might as well wear something else).

- Thresholds - Equip gear according to some player, action, environmental.. i.e. Sorcerer's Ring, or Movement
PlayerThresholds = T{'HPP', 'MPP', 'MaxHP', 'MaxMP', 'TP'}
ActionThresholds = T{'MpAftercast', 'MppAftercast', 'MpCost'}
EnvironmentThresholds = T{'Time', 'MoonPhase', 'MoonPercent'}
e.g
```
sets['Default'] = {
    ['Idle'] = {
        ['Movement'] = {
            Feet = 'Herald\'s Gaiters',
            ['Thresholds'] = {
                ['Time'] = {
                    ['Dusk'] = {
                        threshold = 17,
                        operator = '>',
                        ['gear'] = {
                            Feet = 'Ninja Kyahan +1'
                        },
                    },
                    ['Dawn'] = {
                        threshold = 7,
                        operator = '<',
                        ['gear'] = {
                            Feet = 'Ninja Kyahan +1'
                        },
                    },
                },
            },
            ['Elemental'] = {
                ['Weather'] = {
                    ['Earth'] = {
                        Feet = 'Desert Boots',
                    },
                },
            },
        },
    },
}
```
(could even nest the Movement gear in a toggle `['Movement']['VarToggles']['Movement'] = {...}` if you don't want auto move swaps on)


-----------------------------------------------------------

Example Lua

local profile = gFunc.LoadFile('common/cortexutils.lua');

local sets = {
    ['export'] = {
        Main = 'Earth Staff',
        .
        .
        .
        Feet = 'Wizard\'s Sabots',
    },
};

-- Strategies
sets['Strategy'] = {
    ['Default'] = {
        Idle = 'Defense',
        TP = 'Default',
        Nuke = 'MAtt',
        SorcRing = true,
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Burst = false,
    },
    ['L65'] = {
        Idle = 'L65',
        TP = 'Default',
        Nuke = 'L65',
        SorcRing = false,
        Weapon = 'Staff',
        ['W.Variant'] = 'Defense',
        Burst = false,
    },
}

-- Weapons
sets['Weapon'] = {}
sets['Weapon']['Scythe'] = {}
sets['Weapon']['Scythe']['Outrance'] = {
    main = 'A L\'Outrance',
}
sets['Weapon']['Staff'] = {}
sets['Weapon']['Staff']['Defense'] = {
    main = 'Earth Staff',
}
sets['Weapon']['Club'] = {}
sets['Weapon']['Club']['None'] = {}
sets['Weapon']['Club']['Warp'] = {
    main = 'Warp Cudgel',
}

-- HandleDefault
sets['Default'] = {
    ['Idle'] = {
        ['VarCycles'] = {
            ['Idle'] = {
                ['Default'] = {
                    Ammo = 'Phtm. Tathlum',
                    .
                    .
                    .
                    Feet = 'Wizard\'s Sabots',
                },
                ['Defense'] = {
                    Ammo = 'Phtm. Tathlum',
                    .
                    .
                    .
                    Feet = 'Wizard\'s Sabots',
                },
                ['L65'] = {
                    Ammo = 'Phtm. Tathlum',
                    .
                    .
                    .
                    Feet = 'Wizard\'s Sabots',
                },
            },
        },
        ['VarToggles'] = {
            ['Fishing'] = {
                Ammo = '',
                Ranged = '',
                Body = 'Angler\'s Tunica',
                Hands = 'Angler\'s Gloves',
                Legs = 'Angler\'s Hose',
                Feet = 'Waders',
            },
            ['Working'] = {
                Body = 'Worker Tunica',
                Hands = 'Worker Gloves',
                Legs = 'Worker Hose',
                Feet = 'Worker Boots',
            },
        },
        ['Movement'] = {
            --Feet = 'Waders',
            ['Thresholds'] = {
                ['Time'] = {
                    ['Dusk'] = {
                        threshold = 17,
                        operator = '>',
                        ['gear'] = {
                            --Feet = 'Seer\'s Pumps +1'
                        },
                    },
                    ['Dawn'] = {
                        threshold = 7,
                        operator = '<',
                        ['gear'] = {
                            --Feet = 'Seer\'s Pumps +1'
                        },
                    },
                },
            },
        },
    },
    ['Resting'] = {
        Main = 'Pluto\'s Staff',
        Neck = 'Checkered Scarf',
        --Body = 'Seer\'s Tunic +1',
        Body = 'Errant Hpl.',
        --Body = 'Black Cloak',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
    },
    ['Engaged'] = {
        ['VarCycles'] = {
            ['TP'] = {
                ['Default'] = {
                    Ammo = 'Phtm. Tathlum',
                    .
                    .
                    .
                    Feet = 'Wizard\'s Sabots',
                },
                ['Acc'] = {
                    Ammo = 'Phtm. Tathlum',
                    .
                    .
                    .
                    Feet = 'Wizard\'s Sabots',
                },
            },
        },
    },
    ['Omega'] = {   
    },
}

-- HandlePrecast
sets['Precast'] = {
    ['Alpha'] = {
    },
    ['Elemental Magic'] = {
        ['VarToggles'] = {
            ['SorcRing'] = {
                -- put -hp gear here
            },
        },
    },
}

-- HandlePrecast
local ElementalDebuff = {
        Ammo = 'Phtm. Tathlum',
        Neck = 'Elemental Torque',
        .
        .
        .
}
sets['Midcast'] = {
    ['Alpha'] = {
    },
    ['Elemental'] = {
        ['Element'] = {
            ['Fire'] = {
                Main = 'Vulcan\'s Staff',
            },
            .
            .
            .
            ['Dark'] = {
                Main = 'Pluto\'s Staff',
            },
        },
        ['Day'] = {
            ClashCheck = true,
            ['Fire'] = {
            },
            .
            .
            .
            ['Dark'] = {
            },
        },
        ['Weather'] = {
            ClashCheck = true,
            ['Fire'] = {
            },
            .
            .
            .
            ['Dark'] = {
            },
        },
    },
    ['Omega'] = {
    },
    ['Black Magic'] = {
        ['Enfeebling Magic'] = {
            Ammo = 'Phtm. Tathlum',
            .
            .
            .
        },
    },
    ['White Magic'] = {
        ['Enfeebling Magic'] = {
            Head = 'Igqira Tiara',
            .
            .
            .
        },
    },
    ['Enhancing Magic'] = {
    },
    ['Dark Magic'] = {
        Ammo = 'Phtm. Tathlum',
        .
        .
        .
    },
    ['Rasp'] = ElementalDebuff,
    ['Choke'] = ElementalDebuff,
    ['Frost'] = ElementalDebuff,
    ['Burn'] = ElementalDebuff,
    ['Drown'] = ElementalDebuff,
    ['Shock'] = ElementalDebuff,
    ['Elemental Magic'] = {
        ['VarCycles'] = {
            ['Nuke'] = {
                ['MAtt'] = {
                    Ammo = 'Phtm. Tathlum',
                    .
                    .
                    .
                    Feet = 'Wizard\'s Sabots',
                },
                ['MAcc'] = {
                    Ammo = 'Phtm. Tathlum',
                    .
                    .
                    .
                    Feet = 'Wizard\'s Sabots',
                },
                ['L65'] = {
                    Ammo = 'Phtm. Tathlum',
                    Head = 'Wizard\'s Petasos',
                    .
                    .
                    .
                    Feet = 'Wizard\'s Sabots',
                },
            },
        },
        ['VarToggles'] = {
            ['Burst'] = {
                Hands = 'Sorcerer\'s Gloves',
            },
        },
        ['Elemental'] = {
            ['Day'] = {
                ['Fire'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
                .
                .
                .
                },
                ['Dark'] = {
                    Legs = 'Sorcerer\'s Tonban',
                },
            },
        },
        ['Thresholds'] = {
            ['HPP'] = {
                ['SRing'] = {
                    threshold = 76,
                    operator = '<',
                    ['gear'] = {
                        ['VarToggles'] = {
                            ['SorcRing'] = {
                                --Ring2 = 'Sorcerer\'s Ring',
                            },
                        },
                    },
                },
            },
            ['MppAftercast'] = {
                ['UNeck'] = {
                    threshold = 51,
                    operator = '<',
                    ['gear'] = {
                        --Neck = 'Uggalepih Pendant',
                    },
                },
            },
        },
    },
}

-- HandlePrecast
sets['Preshot'] = {
}
-- HandlePrecast
sets['Midshot'] = {
}
-- HandleAbility
sets['Ability'] = {
}
-- HandleWeaponSkill
local WS_STR = {
    Neck = 'Spike Necklace',
    Ring2 = 'Sun Ring',
}
sets['WeaponSkill'] = {
    ['Heavy Swing'] = WS_STR,
}
-- HandleItem
sets['Item'] = {
}
profile.Sets = sets;
profile.Packer = {
};

return profile;


]===]--


local profile = {};
local varhelper = gFunc.LoadFile('common/varhelpermod.lua');

cortexutils = {};

cortexutils.ApplySets = function(equip_set, in_set, action)
    if in_set.Alpha ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, in_set.Alpha, action)
    end
    equip_set = cortexutils.CombineVarSets(equip_set, in_set, action)
    if in_set ~= nil then
        equip_set = cortexutils.ApplyNativeSet(equip_set, in_set)
    end
    if in_set.Elemental ~= nil then
        equip_set = cortexutils.ApplyElementalSets(equip_set, in_set.Elemental, action)
    end
    if in_set.Thresholds ~= nil then
        equip_set = cortexutils.ApplyThresholdSets(equip_set, in_set.Thresholds, action)
    end
    if in_set.Movement ~= nil then
        equip_set = cortexutils.ApplyMovementSet(equip_set, in_set.Movement, action)
    end
    if action ~= nil then
        equip_set = cortexutils.ApplyHierarchySets(equip_set, in_set, action)
    end
    if in_set.Omega ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, in_set.Omega, action)
    end
    return equip_set
end

GearSlots = T{'Main', 'Sub', 'Range', 'Ammo', 'Head', 'Neck', 'Ear1', 'Ear2', 'Body', 'Hands', 'Ring1', 'Ring2', 'Back', 'Waist', 'Legs', 'Feet'};

cortexutils.ApplyNativeSet = function(equip_set, in_set)
    for key, val in pairs(in_set) do
        if GearSlots:contains(key) then
            equip_set[key] = val
        end
    end
    return equip_set
end

cortexutils.ApplyHierarchySets = function(equip_set, in_set, action)
    if in_set[action.Name] then
        equip_set = cortexutils.ApplySets(equip_set, in_set[action.Name], action)
    elseif in_set[action.Skill] then
        if in_set[action.Skill][action.Name] then
            equip_set = cortexutils.ApplySets(
                equip_set, in_set[action.Skill][action.Name], action)
        else
            equip_set = cortexutils.ApplySets(
                equip_set, in_set[action.Skill], action)
        end
    elseif in_set[action.Type] then
        if in_set[action.Type][action.Name] then
            equip_set = cortexutils.ApplySets(
                equip_set, in_set[action.Type][action.Name], action)
        elseif in_set[action.Type][action.Skill] then
            if in_set[action.Type][action.Skill][action.Name] then
                equip_set = cortexutils.ApplySets(
                    equip_set,in_set[action.Type][action.Skill][action.Name], action)
            else
                equip_set = cortexutils.ApplySets(
                    equip_set, in_set[action.Type][action.Skill], action)
            end
        else
            equip_set = cortexutils.ApplySets(equip_set, in_set[action.Type], actiont)
        end
    end
    return equip_set
end

cortexutils.CombineVarSets = function(equip_set, in_set, action)
    if in_set.VarCycles ~= nil then
        for varcycle, varsets in pairs(in_set.VarCycles) do
            equip_set = cortexutils.ApplySets(equip_set, varsets[varhelper.GetCycle(varcycle)], action)
        end
    end
    if in_set.VarToggles ~= nil then
        for vartoggle, varset in pairs(in_set.VarToggles) do
            if varhelper.GetToggle(vartoggle) then
                equip_set = cortexutils.ApplySets(equip_set, varset, action)
            end
        end
    end
    return equip_set
end

cortexutils.ApplyMovementSet = function(equip_set, in_set, action)
    local env = gData.GetEnvironment()
    local player = gData.GetPlayer()
    
    if player.IsMoving then
        if next(in_set) ~= nil then
            equip_set = cortexutils.ApplySets(equip_set, in_set, action)
        end
    end
    return equip_set
end

local elementalWeakness = {
    Earth = 'Wind',
    Wind = 'Ice',
    Ice = 'Fire',
    Fire = 'Water',
    Water = 'Thunder',
    Thunder = 'Earth',
    Light = 'Dark',
    Dark = 'Light',
}
cortexutils.ApplyElementalSets = function(equip_set, in_set, action)
    local environment = gData.GetEnvironment()
    local element
    if action ~= nil then
        element = action.Element
    end
    local ClashCheck = false
    if in_set.ClashCheck ~= nil then
        ClashCheck = in_set.ClashCheck
    end
        
    -- If no action, gear may be a reaction to weather or day only.
    local elementDay = environment.DayElement
    local elementWeather = environment.WeatherElement
    if element ~= nil or element == 'Non-Elemental' then
        elementDay = element
        elementWeather = element
        if (
            in_set.Element ~= nil
            and in_set.Element[element] ~= nil
        ) then
            equip_set = cortexutils.ApplySets(equip_set, in_set.Element[element], action)
        end
        -- if day is weak to weather, avoid.
        if (
            in_set.Day ~= nil
            and environment.DayElement == elementDay
            and in_set.Day[elementDay] ~= nil
        ) then
            if in_set.Day[elementDay].ClashCheck ~= nil then
                ClashCheck = in_set.Day[elementDay].ClashCheck
            elseif in_set.Day.ClashCheck ~= nil then
                ClashCheck = in_set.Day.ClashCheck
            end
            if (
                not ClashCheck
                or elementalWeakness[environment.DayElement] ~= environment.WeatherElement
            ) then
                equip_set = cortexutils.ApplySets(equip_set, in_set.Day[elementDay], action)
            end
        end
        -- if weather is weak to day, and weather is not double, avoid.
        if (
            in_set.Weather ~= nil
            and environment.WeatherElement == elementWeather
            and in_set.Weather[elementWeather] ~= nil
        ) then
            if in_set.Weather[elementWeather].ClashCheck~= nil then
                ClashCheck = in_set.Weather[elementWeather].ClashCheck
            elseif in_set.Weather.ClashCheck ~= nil then
                ClashCheck = in_set.Weather.ClashCheck
            end
            if (
                not ClashCheck
                or (
                    elementalWeakness[environment.WeatherElement] ~= environment.DayElement
                    or environment.WeatherElement ~= environment.Weather
                )
            ) then
                equip_set = cortexutils.ApplySets(equip_set, in_set.Weather[elementWeather], action)
            end
        end
    else
        if (
            in_set.Day ~= nil
            and environment.DayElement == elementDay
            and in_set.Day[elementDay] ~= nil
        ) then
            if in_set.Day[elementDay].ClashCheck ~= nil then
                ClashCheck = in_set.Day[elementDay].ClashCheck
            elseif in_set.Day.ClashCheck ~= nil then
                ClashCheck = in_set.Day.ClashCheck
            end
            if (
                not ClashCheck
                or elementalWeakness[environment.DayElement] ~= environment.WeatherElement
            ) then
                equip_set = cortexutils.ApplySets(equip_set, in_set.Day[elementDay], action)
            end
        end
        if (
            in_set.Weather ~= nil
            and environment.WeatherElement == elementWeather
            and in_set.Weather[elementWeather] ~= nil
        ) then
            if in_set.Weather[elementWeather].ClashCheck~= nil then
                ClashCheck = in_set.Weather[elementWeather].ClashCheck
            elseif in_set.Weather.ClashCheck ~= nil then
                ClashCheck = in_set.Weather.ClashCheck
            end
            if (
                not ClashCheck
                or (
                    elementalWeakness[environment.WeatherElement] ~= environment.DayElement
                    or environment.WeatherElement ~= environment.Weather
                )
            ) then
                equip_set = cortexutils.ApplySets(equip_set, in_set.Weather[elementWeather], action)
            end
        end
    end
    return equip_set
end

local PlayerThresholds = T{'HP', 'HPP', 'MP', 'MPP', 'MaxHP', 'MaxMP', 'TP'}
local ActionThresholds = T{'MpAftercast', 'MppAftercast', 'MpCost'}
local EnvironmentThresholds = T{'Area', 'Time', 'MoonPhase', 'MoonPercent'}
cortexutils.ApplyThresholdSets = function(equip_set, in_set, action)
    local player = gData.GetPlayer()
    local environment = gData.GetEnvironment()
    local data = action
    local apply_set = false
    for key, val in pairs(in_set) do
        if PlayerThresholds:contains(key) then
            data = player
        elseif ActionThresholds:contains(key) then
            data = action
        elseif EnvironmentThresholds:contains(key) then
            data = environment
        end
        if data[key] ~= nil then
            for group, info in pairs(val) do
                apply_set = false
                if (
                    info.operator ~= nil
                    and info.threshold ~= nil
                    and info.gear ~= nil
                ) then
                    if (
                        info.operator == '<'
                        and data[key] < info.threshold
                    ) then
                        apply_set = true
                    elseif (
                        info.operator == '<='
                        and data[key] <= info.threshold
                    ) then
                        apply_set = true
                    elseif (
                        info.operator == '=='
                        and data[key] == info.threshold
                    ) then
                        apply_set = true
                    elseif (
                        info.operator == '>='
                        and data[key] >= info.threshold
                    ) then
                        apply_set = true
                    elseif (
                        info.operator == '>'
                        and data[key] > info.threshold
                    ) then
                        apply_set = true
                    elseif (
                        info.operator == '~='
                        and data[key] ~= info.threshold
                    ) then
                        apply_set = true
                    elseif (
                        info.operator == 'contains'
                        and info.threshold:contains(data[key])
                    ) then
                        apply_set = true
                    end
                    if apply_set then
                        equip_set = cortexutils.ApplySets(equip_set, info.gear, action)
                    end
                end
            end
        end
    end
    return equip_set
end

cortexutils.VarToggles = {}
cortexutils.FindVarToggles = function(t_set)
    if next(t_set) == nil then
        return
    end
    if t_set.VarToggles ~= nil then
        for name, gear in pairs (t_set.VarToggles) do
            varhelper.CreateToggle(name, false)
            cortexutils.VarToggles[name] = true
        end
    end
    for key, val in pairs(t_set) do
        if type(val) == 'table' then
            cortexutils.FindVarToggles(val)
        end
    end
end

cortexutils.VarCycles = {}
cortexutils.FindVarCycles = function(c_set)
    if next(c_set) == nil then
        return
    end
    if c_set.VarCycles ~= nil then
        for name, mapping in pairs (c_set.VarCycles) do
            varhelper.CreateSetCycle(name, mapping)
            cortexutils.VarCycles[name] = true
        end
    end
    for key, val in pairs(c_set) do
        if type(val) == 'table' then
            cortexutils.FindVarCycles(val)
        end
    end
end

cortexutils.EngageStrategy = function(strat_set)
    for name, target in pairs(strat_set) do
        if (
            type(target) == 'boolean'
            and cortexutils.VarToggles[name] ~= nil
        ) then
            varhelper.SetToggle(name, target)
        elseif cortexutils.VarCycles[name] ~= nil then
            if name == 'Weapon' then
                varhelper.DestroyCycle('W.Variant')
                varhelper.SetCycle(name, target)
                varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')])
                if strat_set['W.Variant'] ~= nil then
                    varhelper.SetCycle('W.Variant', strat_set['W.Variant'])
                end
            elseif name ~= 'W.Variant' then
                varhelper.SetCycle(name, target)
            end
        end
    end
end


profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    varhelper.CreateSetCycle('Strategy', profile.Sets['Strategy']);
    cortexutils.FindVarToggles(profile.Sets);
    cortexutils.FindVarCycles(profile.Sets);
    varhelper.CreateSetCycle('Weapon', profile.Sets['Weapon']);
    cortexutils.VarCycles['Weapon'] = true
    varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')]);
    cortexutils.VarCycles['W.Variant'] = true
    if profile.Sets.Strategy.Default ~= nil then
        varhelper.SetCycle('Strategy', 'Default')
        cortexutils.EngageStrategy(profile.Sets.Strategy.Default)
    end
    varhelper.Initialize();
end

profile.OnUnload = function()
    varhelper.Destroy();
end

profile.HandleCommand = function(args)
    --local player = gData.GetPlayer();
    --for k, v in pairs(player) do
    --    print(tostring(k))
    --end
    --print(player.SubJob)
    if (args[1] == 'Weapon') then
        varhelper.DestroyCycle('W.Variant')
        varhelper.AdvanceCycle('Weapon');
        varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')]);
    elseif (args[1] == 'W.Variant') then
        varhelper.AdvanceCycle('W.Variant');
    elseif cortexutils.VarToggles[args[1]] ~= nil then
        varhelper.AdvanceToggle(args[1]);
    elseif cortexutils.VarCycles[args[1]] ~= nil then
        varhelper.AdvanceCycle(args[1]);
    elseif (args[1] == 'Strategy') then
        if (
            args[2] ~= nil
            and profile.Sets.Strategy[args[2]] ~= nil
        ) then
            varhelper.SetCycle('Strategy', args[2])
        else
            varhelper.AdvanceCycle('Strategy');
        end
        cortexutils.EngageStrategy(profile.Sets['Strategy'][varhelper.GetCycle('Strategy')])

    end
end

profile.HandleDefault = function()
    if profile.Sets.Default == nil then
        return
    end
    local player = gData.GetPlayer()
    local equip_set = {}
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Default)
    if profile.Sets.Default[player.Status] ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Default[player.Status])
        if player.Status ~= 'Resting' then
            equip_set = cortexutils.ApplySets(
                equip_set,
                profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]
            );
        end
    end
    --if next(equip_set) ~= nil then
    --    print('Yes')
    --end
    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set)
    end
end

profile.HandleAbility = function()
    if profile.Sets.Ability == nil then
        return
    end
    local action = gData.GetAction();
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Ability, action)

    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandleItem = function()
    if profile.Sets.Item == nil then
        return
    end
    local action = gData.GetAction();
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Item, action)

    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandlePrecast = function()
    if profile.Sets.Precast == nil then
        return
    end
    local action = gData.GetAction();
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Precast, action)

    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end


profile.HandleMidcast = function()
    if profile.Sets.Midcast == nil then
        return
    end
    local action = gData.GetAction();
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Midcast, action)

    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandlePreshot = function()
    if profile.Sets.Preshot == nil then
        return
    end
    local action = gData.GetAction();
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Preshot, action)

    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandleMidshot = function()
    if profile.Sets.Midshot == nil then
        return
    end
    local action = gData.GetAction();
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Midshot, action)

    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end


profile.HandleWeaponskill = function()
    if profile.Sets.WeaponSkill == nil then
        return
    end
    local action = gData.GetAction();
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.WeaponSkill, action)

    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

return profile