--[===[
Author:  Cortex of HorizonXI

For full documentation:
https://github.com/CortexHz/hz-lac-cortexutils

]===]--


local profile = {};
local varhelper = gFunc.LoadFile('common/varhelpermod.lua');

cortexutils = {};

cortexutils.ApplySets = function(equip_set, in_set, action)
    local player = gData.GetPlayer()
    if in_set.Alpha ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, in_set.Alpha, action)
    end
    if in_set ~= nil then
        equip_set = cortexutils.ApplyNativeSet(equip_set, in_set)
    end
    equip_set = cortexutils.CombineVarSets(equip_set, in_set, action)
    if in_set[player.Status] ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Default[player.Status])
    end
    if in_set.Elemental ~= nil then
        equip_set = cortexutils.ApplyElementalSets(equip_set, in_set.Elemental, action)
    end
    if in_set.Thresholds ~= nil then
        equip_set = cortexutils.ApplyThresholdSets(equip_set, in_set.Thresholds, action)
    end
    if in_set.Buff ~= nil then
        equip_set = cortexutils.ApplyBuffSet(equip_set, in_set.Buff, action)
    end
    if in_set.Movement ~= nil then
        equip_set = cortexutils.ApplyMovementSet(equip_set, in_set.Movement, action)
    end
    if in_set.Pet ~= nil then
        equip_set = cortexutils.ApplyPetSet(equip_set, in_set.Pet, action)
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
        equip_set = cortexutils.ApplySets(equip_set, in_set[action.Skill], action)
        if in_set[action.Skill][action.Name] then
            equip_set = cortexutils.ApplySets(
                equip_set, in_set[action.Skill][action.Name], action)
        end
    elseif in_set[action.Type] then
        equip_set = cortexutils.ApplySets(equip_set, in_set[action.Type], action)
        if in_set[action.Type][action.Name] then
            equip_set = cortexutils.ApplySets(
                equip_set, in_set[action.Type][action.Name], action)
        elseif in_set[action.Type][action.Skill] then
            equip_set = cortexutils.ApplySets(
                    equip_set, in_set[action.Type][action.Skill], action)
            if in_set[action.Type][action.Skill][action.Name] then
                equip_set = cortexutils.ApplySets(
                    equip_set,in_set[action.Type][action.Skill][action.Name], action)
            end
        end
    end
    return equip_set
end

cortexutils.CombineVarSets = function(equip_set, in_set, action)
    if in_set.VarCycles ~= nil then
        for varcycle, varsets in pairs(in_set.VarCycles) do
            if varsets[varhelper.GetCycle(varcycle)] ~= nil then
                equip_set = cortexutils.ApplySets(
                    equip_set, varsets[varhelper.GetCycle(varcycle)], action)
            end
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

local PlayerThresholds = T{'HP', 'HPP', 'MP', 'MPP', 'MaxHP', 'MaxMP', 'TP', 'MainJob', 'SubJob'}
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

cortexutils.ApplyBuffSet = function(equip_set, in_set, action)
    for key, val in pairs(in_set) do
        if val ~= nil and ( gData.GetBuffCount(key) > 0 ) then
            equip_set = cortexutils.ApplySets(equip_set, val, action)
        end
    end
    return equip_set
end

cortexutils.ApplyPetSet = function(equip_set, in_set, action)
    local pet = gData.GetPet()
    if pet == nil or pet.Name == nil then
        return equip_set
    end
    if in_set[pet.Name] ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, in_set[pet.Name], action)
    end
    local petAction = gData.GetPetAction()
    if (
        petAction ~= nil
        and petAction.Name ~= nil
        and in_set[petAction.Name] ~= nil
    ) then
        equip_set = cortexutils.ApplySets(equip_set, in_set[petAction.Name], action)
    end
    return equip_set
end

cortexutils.VarToggles = {}
cortexutils.FindVarToggles = function(t_set)
    if next(t_set) == nil then
        return
    end
    if t_set.VarToggles ~= nil then
        local visible = true
        for name, gear in pairs (t_set.VarToggles) do
            if gear.VarVisible ~= nil and type(gear.VarVisible) == 'boolean' then
                visible = gear.VarVisible
            end
            if name ~= 'VarVisible' then
                varhelper.CreateToggle(name, false, visible)
                cortexutils.VarToggles[name] = true
            end
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
    local visible = true
    if c_set.VarCycles ~= nil then
        local visible = true
        for name, mapping in pairs (c_set.VarCycles) do
            if mapping.VarVisible ~= nil and type(mapping.VarVisible) == 'boolean' then
                visible = mapping.VarVisible
            end
            varhelper.CreateSetCycle(name, mapping, visible)
            cortexutils.VarCycles[name] = true
        end
    end
    for key, val in pairs(c_set) do
        if type(val) == 'table' then
            cortexutils.FindVarCycles(val)
        end
    end
end

cortexutils.ApplyStrategy = function(strat_set)
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
        cortexutils.ApplyStrategy(profile.Sets.Strategy.Default)
    end
    varhelper.Initialize();
end

profile.OnUnload = function()
    varhelper.Destroy();
end

local WVarMemory = {};
profile.HandleCommand = function(args)
    --local player = gData.GetPlayer();
    --for k, v in pairs(player) do
    --    print(tostring(k))
    --end
    --print(player.SubJob)
    if (args[1] == 'Weapon') then
        WVarMemory[varhelper.GetCycle('Weapon')] = varhelper.GetCycle('W.Variant')
        varhelper.DestroyCycle('W.Variant')
        varhelper.AdvanceCycle('Weapon');
        varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')]);
        if WVarMemory[varhelper.GetCycle('Weapon')] ~= nil then
            varhelper.SetCycle('W.Variant', WVarMemory[varhelper.GetCycle('Weapon')])
        end
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
        cortexutils.ApplyStrategy(profile.Sets['Strategy'][varhelper.GetCycle('Strategy')])

    end
end

profile.HandleDefault = function()
    if profile.Sets.Default == nil then
        return
    end
    local player = gData.GetPlayer()
    local equip_set = {}
    if player.Status ~= 'Resting' then
        equip_set = cortexutils.ApplySets(
            equip_set,
            profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]
        );
    end
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Default)
    -- if profile.Sets.Default[player.Status] ~= nil then
        -- equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Default[player.Status])
        -- if player.Status ~= 'Resting' then
            -- equip_set = cortexutils.ApplySets(
                -- equip_set,
                -- profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]
            -- );
        -- end
    -- end
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