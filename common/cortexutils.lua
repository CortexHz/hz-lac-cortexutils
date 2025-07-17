--[===[
Author:  Cortex of HorizonXI

For full documentation:
https://github.com/CortexHz/hz-lac-cortexutils

]===]--


local profile = {};
local force_set = {};
local function ForceEquipSet()
    gFunc.ForceEquipSet(force_set)
end
local varhelper = gFunc.LoadFile('common/varhelpermod.lua');

local StringToBool = {
    ['true'] = true,
    ['True'] = true,
    ['false'] = false,
    ['False'] = false,
}

cortexutils = {};

cortexutils.ApplySets = function(equip_set, in_set, action, is_pet)
    local status
    if is_pet ~= nil then
        petinfo = gData.GetPet()
        if petinfo ~= nil then
            status = petinfo.Status
        end
    else
        status = gData.GetPlayer().Status
    end
    if in_set.Force ~= nil then
        if (
            in_set.Force['Delay'] ~= nil
            and (
                force_set['Delay'] == nil
                or (force_set['Delay'] > in_set.Force['Delay'])
            )
        ) then
            force_set['Delay'] = in_set.Force['Delay']
        end  
        force_set = cortexutils.ApplySets(force_set, in_set.Force, action, is_pet)
    end
    if in_set.Alpha ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, in_set.Alpha, action, is_pet)
    end
    if in_set ~= nil then
        equip_set = cortexutils.ApplyNativeSet(equip_set, in_set)
    end
    equip_set = cortexutils.CombineVarSets(equip_set, in_set, action, is_pet)
    if in_set[status] ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, in_set[status], nil, is_pet)
    end
    if in_set.Elemental ~= nil then
        equip_set = cortexutils.ApplyElementalSets(equip_set, in_set.Elemental, action, is_pet)
    end
    if in_set.Thresholds ~= nil then
        equip_set = cortexutils.ApplyThresholdSets(equip_set, in_set.Thresholds, action, is_pet)
    end
    if in_set.Buff ~= nil then
        equip_set = cortexutils.ApplyBuffSet(equip_set, in_set.Buff, action, is_pet)
    end
    if in_set.Movement ~= nil then
        equip_set = cortexutils.ApplyMovementSet(equip_set, in_set.Movement, action, is_pet)
    end
    if in_set.Pet ~= nil then
        equip_set = cortexutils.ApplyPetSet(equip_set, in_set.Pet, action)
    end
    if action ~= nil then
        equip_set = cortexutils.ApplyHierarchySets(equip_set, in_set, action, is_pet)
    end
    if in_set.Omega ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, in_set.Omega, action, is_pet)
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

cortexutils.ApplyHierarchySets = function(equip_set, in_set, action, is_pet)
    if in_set[action.Name] then
        equip_set = cortexutils.ApplySets(equip_set, in_set[action.Name], action, is_pet)
    elseif in_set[action.Skill] then
        equip_set = cortexutils.ApplySets(equip_set, in_set[action.Skill], action, is_pet)
    elseif in_set[action.Type] then
        equip_set = cortexutils.ApplySets(equip_set, in_set[action.Type], action, is_pet)
    elseif in_set[action.ActionType] then
        equip_set = cortexutils.ApplySets(equip_set, in_set[action.ActionType], action, is_pet)
    end
    return equip_set
end

cortexutils.CombineVarSets = function(equip_set, in_set, action, is_pet)
    if in_set.VarCycles ~= nil then
        for varcycle, varsets in pairs(in_set.VarCycles) do
            if varsets[varhelper.GetCycle(varcycle)] ~= nil then
                equip_set = cortexutils.ApplySets(
                    equip_set, varsets[varhelper.GetCycle(varcycle)], action, is_pet)
            end
        end
    end
    if in_set.VarToggles ~= nil then
        for vartoggle, varset in pairs(in_set.VarToggles) do
            if varhelper.GetToggle(vartoggle) then
                equip_set = cortexutils.ApplySets(equip_set, varset, action, is_pet)
            end
        end
    end
    return equip_set
end

cortexutils.ApplyMovementSet = function(equip_set, in_set, action, is_pet)
    local env = gData.GetEnvironment()
    local player = gData.GetPlayer()
    
    if player.IsMoving then
        if next(in_set) ~= nil then
            equip_set = cortexutils.ApplySets(equip_set, in_set, action, is_pet)
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
cortexutils.ApplyElementalSets = function(equip_set, in_set, action, is_pet)
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
            equip_set = cortexutils.ApplySets(equip_set, in_set.Element[element], action, is_pet)
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
                equip_set = cortexutils.ApplySets(equip_set, in_set.Day[elementDay], action, is_pet, is_pet)
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
                equip_set = cortexutils.ApplySets(equip_set, in_set.Weather[elementWeather], action, is_pet)
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
                equip_set = cortexutils.ApplySets(equip_set, in_set.Day[elementDay], action, is_pet)
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
                equip_set = cortexutils.ApplySets(equip_set, in_set.Weather[elementWeather], action, is_pet)
            end
        end
    end
    return equip_set
end

local PlayerThresholds = T{'HP', 'HPP', 'MP', 'MPP', 'MaxHP', 'MaxMP', 'TP', 'MainJob', 'MainJobLevel', 'MainJobSync', 'SubJob', 'SubJobLevel', 'SubJobSync'}
local ActionThresholds = T{'MpAftercast', 'MppAftercast', 'MpCost'}
local EnvironmentThresholds = T{'Area', 'Time', 'MoonPhase', 'MoonPercent'}
cortexutils.ApplyThresholdSets = function(equip_set, in_set, action, is_pet)
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
                        equip_set = cortexutils.ApplySets(equip_set, info.gear, action, is_pet)
                    end
                end
            end
        end
    end
    return equip_set
end

cortexutils.ApplyBuffSet = function(equip_set, in_set, action, is_pet)
    for key, val in pairs(in_set) do
        if val ~= nil and ( gData.GetBuffCount(key) > 0 ) then
            equip_set = cortexutils.ApplySets(equip_set, val, action, is_pet)
        end
    end
    return equip_set
end

cortexutils.ApplyPetSet = function(equip_set, in_set, action)
    local pet = gData.GetPet()
    if pet == nil or pet.Name == nil then
        return equip_set
    end
    local petAction = gData.GetPetAction()
    if (
        petAction ~= nil
        and petAction.Name ~= nil
    ) then
        action = petAction
        -- print(action.Name)
        -- print(action.Element)
        -- print(action.ActionType)
        -- print(action.Skill)
        -- print(action.Ability)
    end
    if in_set[pet.Name] ~= nil then
        equip_set = cortexutils.ApplySets(equip_set, in_set[pet.Name], action, true)
    end
    equip_set = cortexutils.ApplySets(equip_set, in_set, action, true)
    return equip_set
end

cortexutils.VarToggles = {}
cortexutils.FindVarToggles = function(t_set, destroy)
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
                if destroy then
                    varhelper.DestroyToggle(name)
                else
                    varhelper.CreateToggle(name, false, visible)
                    cortexutils.VarToggles[name] = true
                end
            end
        end
    end
    for key, val in pairs(t_set) do
        if type(val) == 'table' then
            cortexutils.FindVarToggles(val, destroy)
        end
    end
end

cortexutils.VarCycles = {}
cortexutils.FindVarCycles = function(c_set, destroy)
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
            if destroy then
                varhelper.DestroyCycle(name)
            else
                varhelper.CreateSetCycle(name, mapping, visible)
                cortexutils.VarCycles[name] = true
            end
        end
    end
    for key, val in pairs(c_set) do
        if type(val) == 'table' then
            cortexutils.FindVarCycles(val, destroy)
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
                cortexutils.FindVarToggles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')], true);
                cortexutils.FindVarCycles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')], true);
                varhelper.DestroyCycle('W.Variant')
                varhelper.SetCycle(name, target)
                varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')])
                if strat_set['W.Variant'] ~= nil then
                    varhelper.SetCycle('W.Variant', strat_set['W.Variant'])
                end
                cortexutils.FindVarToggles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]);
                cortexutils.FindVarCycles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]);
            elseif name == 'Ranged' then
                cortexutils.FindVarToggles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')], true);
                cortexutils.FindVarCycles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')], true);
                varhelper.DestroyCycle('R.Variant')
                varhelper.SetCycle(name, target)
                varhelper.CreateSetCycle('R.Variant', profile.Sets['Ranged'][varhelper.GetCycle('Ranged')])
                if strat_set['R.Variant'] ~= nil then
                    varhelper.SetCycle('R.Variant', strat_set['R.Variant'])
                end
                cortexutils.FindVarToggles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')]);
                cortexutils.FindVarCycles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')]);
            elseif name ~= 'W.Variant' and name ~= 'R.Variant' then
                varhelper.SetCycle(name, target)
            end
        end
    end
end

local FastCastValues = {
    ['Loquac. Earring'] = 0.02,
    ['Rostrum Pumps'] = 0.02,
    ['Homam Cosciales'] = 0.05,
    ['Duelist\'s Tabard'] = 0.1,
    ['Dls. Tabard +1'] = 0.1,
    ['Warlock\'s Chapeau'] = 0.1,
    ['Wlk. Chapeau +1'] = 0.1,
    ['Warlock\'s Mantle'] = 0.02,
    ['Marduk\'s Jubbah'] = 0.05,
    ['Pi Ring'] = 0.02,
}
local CureCastValues = {
    ['Cure Clogs'] = 0.15,
    ['Rucke\'s Rung'] = 0.1,
}
cortexutils.GetCastDelay = function(action)
    local player = gData.GetPlayer()
    local cast_time = action.CastTime
    local cast_reduction = 0.0
    local equip_data = gData.GetEquipment()
    if player.SubJob == "RDM" then
        cast_reduction = cast_reduction + 0.15
    elseif player.MainJob == "RDM" then
        cast_reduction = cast_reduction + 0.2
    end
    if player.MainJob == "WHM" or player.MainJob == "PLD" then
        if (string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga')) then
            for key, val in pairs(equip_data) do
                --print(key..": "..val.Name)
                if CureCastValues[val.Name] ~= nil then
                    cast_reduction = cast_reduction + CureCastValues[val.Name]
                end
            end
        end
    end
    for key, val in pairs(equip_data) do
        --print(key..": "..val.Name)
        if FastCastValues[val.Name] ~= nil then
            cast_reduction = cast_reduction + FastCastValues[val.Name]
        end
    end
    local minimum_buffer = 0.25
    local packet_delay = 0.3
    local cast_delay = ((cast_time * (1 - cast_reduction)) / 1000) - minimum_buffer
    if cast_delay >= packet_delay then
        return cast_delay
    else
        return 0.0
    end
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    if profile.Sets.Strategy ~= nil then
        varhelper.CreateSetCycle('Strategy', profile.Sets['Strategy']);
    end
    cortexutils.FindVarToggles(profile.Sets);
    cortexutils.FindVarCycles(profile.Sets);
    if profile.Sets['Weapon'] ~= nil then
        cortexutils.FindVarToggles(profile.Sets['Weapon'], true);
        cortexutils.FindVarCycles(profile.Sets['Weapon'], true);
        varhelper.CreateSetCycle('Weapon', profile.Sets['Weapon']);
        cortexutils.VarCycles['Weapon'] = true
        varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')]);
        cortexutils.VarCycles['W.Variant'] = true
        cortexutils.FindVarToggles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]);
        cortexutils.FindVarCycles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]);
    end
    if profile.Sets['Ranged'] ~= nil then
        cortexutils.FindVarToggles(profile.Sets['Ranged'], true);
        cortexutils.FindVarCycles(profile.Sets['Ranged'], true);
        varhelper.CreateSetCycle('Ranged', profile.Sets['Ranged']);
        cortexutils.VarCycles['Ranged'] = true
        varhelper.CreateSetCycle('R.Variant', profile.Sets['Ranged'][varhelper.GetCycle('Ranged')]);
        cortexutils.VarCycles['R.Variant'] = true
        cortexutils.FindVarToggles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')]);
        cortexutils.FindVarCycles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')]);
    end
    if profile.Sets.Strategy ~= nil and profile.Sets.Strategy.Default ~= nil then
        varhelper.SetCycle('Strategy', 'Default')
        cortexutils.ApplyStrategy(profile.Sets.Strategy.Default)
    end
    varhelper.Initialize();
end

profile.OnUnload = function()
    varhelper.Destroy();
end

local WVarMemory = {};
local RVarMemory = {};
profile.HandleCommand = function(args)
    --local player = gData.GetPlayer();
    --for k, v in pairs(player) do
    --    print(tostring(k))
    --end
    --print(player.SubJob)
    if (args[1] == 'Weapon' and profile.Sets['Weapon'] ~= nil) then
        WVarMemory[varhelper.GetCycle('Weapon')] = varhelper.GetCycle('W.Variant')
        cortexutils.FindVarToggles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')], true);
        cortexutils.FindVarCycles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')], true);
        varhelper.DestroyCycle('W.Variant')
        if (
            args[2] ~= nil
            and profile.Sets['Weapon'][args[2]] ~= nil
        ) then
            varhelper.SetCycle('Weapon', args[2])
        else
            varhelper.AdvanceCycle('Weapon');
        end
        varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')]);
        if (
            args[3] ~= nil
            and profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][args[3]] ~= nil
        ) then
            varhelper.SetCycle('W.Variant', args[3])
        elseif WVarMemory[varhelper.GetCycle('Weapon')] ~= nil then
            varhelper.SetCycle('W.Variant', WVarMemory[varhelper.GetCycle('Weapon')])
        end      
        cortexutils.FindVarToggles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]);
        cortexutils.FindVarCycles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]);
    elseif (args[1] == 'W.Variant' and profile.Sets['Weapon'] ~= nil) then
        cortexutils.FindVarToggles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')], true);
        cortexutils.FindVarCycles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')], true);
        if (
            args[2] ~= nil
            and profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][args[2]] ~= nil
        ) then
            varhelper.SetCycle('W.Variant', args[2])
        else
            varhelper.AdvanceCycle('W.Variant');
        end
        cortexutils.FindVarToggles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]);
        cortexutils.FindVarCycles(profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]);
    elseif (args[1] == 'Ranged' and profile.Sets['Ranged'] ~= nil) then
        RVarMemory[varhelper.GetCycle('Ranged')] = varhelper.GetCycle('R.Variant')
        cortexutils.FindVarToggles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')], true);
        cortexutils.FindVarCycles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')], true);
        varhelper.DestroyCycle('R.Variant')
        if (
            args[2] ~= nil
            and profile.Sets['Ranged'][args[2]] ~= nil
        ) then
            varhelper.SetCycle('Ranged', args[2])
        else
            varhelper.AdvanceCycle('Ranged');
        end
        varhelper.CreateSetCycle('R.Variant', profile.Sets['Ranged'][varhelper.GetCycle('Ranged')]);
        if (
            args[3] ~= nil
            and profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][args[3]] ~= nil
        ) then
            varhelper.SetCycle('R.Variant', args[3])
        elseif RVarMemory[varhelper.GetCycle('Ranged')] ~= nil then
            varhelper.SetCycle('R.Variant', RVarMemory[varhelper.GetCycle('Ranged')])
        end
        cortexutils.FindVarToggles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')]);
        cortexutils.FindVarCycles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')]);
    elseif (args[1] == 'R.Variant' and profile.Sets['Ranged'] ~= nil) then
        cortexutils.FindVarToggles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')], true);
        cortexutils.FindVarCycles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')], true);
        if (
            args[2] ~= nil
            and profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][args[2]] ~= nil
        ) then
            varhelper.SetCycle('R.Variant', args[2])
        else
            varhelper.AdvanceCycle('R.Variant');
        end
        cortexutils.FindVarToggles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')]);
        cortexutils.FindVarCycles(profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')]);
    elseif cortexutils.VarToggles[args[1]] ~= nil then
        if (
            args[2] ~= nil
            and type(StringToBool[args[2]]) == 'boolean'
        ) then
            varhelper.SetToggle(args[1], StringToBool[args[2]])
        else
            varhelper.AdvanceToggle(args[1]);
        end
    elseif cortexutils.VarCycles[args[1]] ~= nil then
        if (
            args[2] ~= nil
        ) then
            varhelper.SetCycle(args[1], args[2])
        else
            varhelper.AdvanceCycle(args[1]);
        end
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
    if player.Status == 'Engaged' or player.Status == 'Idle' then
        if profile.Sets['Weapon'] ~= nil then
            equip_set = cortexutils.ApplySets(
                equip_set,
                profile.Sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]
            );
        end
        if profile.Sets['Ranged'] ~= nil then
            equip_set = cortexutils.ApplySets(
                equip_set,
                profile.Sets['Ranged'][varhelper.GetCycle('Ranged')][varhelper.GetCycle('R.Variant')]
            );
        end
    end
    force_set = {}
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Default)
    if force_set ~= nil and next(force_set) ~= nil then
        ForceEquipSet()
        force_set = {}
    end
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
    force_set = {}
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Ability, action)
    if force_set ~= nil and next(force_set) ~= nil then
        ForceEquipSet()
        force_set = {}
    end
    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandleItem = function()
    if profile.Sets.Item == nil then
        return
    end
    local action = gData.GetAction();
    force_set = {}
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Item, action)
    if force_set ~= nil and next(force_set) ~= nil then
        ForceEquipSet()
        force_set = {}
    end
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
    force_set = {}
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Precast, action)
    if force_set ~= nil and next(force_set) ~= nil then
        ForceEquipSet()
        force_set = {}
    end
    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandleMidcast = function()
    force_set = {}
    local action = gData.GetAction()
    local cast_time = 0.0
    if action.CastTime ~= nil and gData.GetBuffCount('Chainspell') == 0 then
        cast_time = action.CastTime / 1000
    end
    local interim_set = {}
    local cast_delay = 0.0
    local force_delay = 0.0
    if profile.Sets.MidcastIdle ~= nil and cast_time > 0 then
        cast_delay = cortexutils.GetCastDelay(action)
        --print(cast_delay)
        if cast_delay > 0.0 then
            gFunc.SetMidDelay(cast_delay)
            interim_set = cortexutils.ApplySets(interim_set, profile.Sets.MidcastIdle, action)
            if next(interim_set) ~= nil then
                gFunc.InterimEquipSet(interim_set)
            end
        end
    end

    if force_set ~= nil and next(force_set) ~= nil then
        if force_set['Delay'] ~= nil then
            force_delay = force_set['Delay']
        else
            force_delay = cast_delay - 1
        end
        if force_delay <= 0 or force_delay > action.CastTime then
            ForceEquipSet()
        else
            --print(force_delay)
            --ForceEquipSet:once(2)
            ForceEquipSet()
        end
        force_set = {}
    end
    if profile.Sets.Midcast == nil then
        return
    end
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Midcast, action)
    if force_set ~= nil and next(force_set) ~= nil then
        if force_set['Delay'] ~= nil then
            force_delay = cast_time - force_set['Delay']
        else
            force_delay = 0
        end
        if force_delay <= 0 then
            ForceEquipSet()
        else
            ForceEquipSet:once(force_delay)
        end
        force_set = {}
    end
    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandlePreshot = function()
    if profile.Sets.Preshot == nil then
        return
    end
    local action = gData.GetAction();
    force_set = {}
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Preshot, action)
    if force_set ~= nil and next(force_set) ~= nil then
        ForceEquipSet()
        force_set = {}
    end
    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandleMidshot = function()
    force_set = {}
    if (
        profile.Sets.MidshotIdle ~= nil
        and profile.Sets.MidshotIdle.MidshotDelay ~= nil
        and profile.Sets.MidshotIdle.MidshotDelay > 0
    ) then
        interim_set = {}
        gFunc.SetMidDelay(profile.Sets.MidshotDelay)
        interim_set = cortexutils.ApplySets(interim_set, profile.Sets.MidshotIdle, action)
        if next(interim_set) ~= nil then
            gFunc.InterimEquipSet(interim_set)
        end
    end
    if profile.Sets.Midshot == nil then
        return
    end
    local action = gData.GetAction();
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.Midshot, action)
    if force_set ~= nil and next(force_set) ~= nil then
        ForceEquipSet()
        force_set = {}
    end
    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end


profile.HandleWeaponskill = function()
    if profile.Sets.WeaponSkill == nil then
        return
    end
    local action = gData.GetAction();
    force_set = {}
    local equip_set = {};
    equip_set = cortexutils.ApplySets(equip_set, profile.Sets.WeaponSkill, action)
    if force_set ~= nil and next(force_set) ~= nil then
        ForceEquipSet()
        force_set = {}
    end
    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

return profile