local profile = {};
local varhelper = gFunc.LoadFile('common/varhelper.lua');
local sets = {
    -- Weapons
    ['Main'] = {},
    ['Idle_Default'] = {
        Head = 'Erd. Headband',
        Neck = 'Spike Necklace',
        Ear1 = 'Physical Earring',
        Ear2 = 'Energy Earring +1',
        Body = 'Noct Doublet +1',
        Hands = 'Battle Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Noct Brais +1',
        Feet = 'Wonder Clomps',
    },
    ['Idle_Defense'] = {

    },

    ['TP_Default'] = {
        Head = 'Erd. Headband',
        Neck = 'Spike Necklace',
        Ear1 = 'Physical Earring',
        Ear2 = 'Energy Earring +1',
        Body = 'Noct Doublet +1',
        Hands = 'Battle Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Traveler\'s Mantle',
        Waist = 'Warrior\'s Belt +1',
        Legs = 'Republic Subligar',
        Feet = 'Wonder Clomps',
    },
    ['TP_Acc'] = {
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
    },

    ['Mage_Sub'] = {
        Head = 'Ogre Mask',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Ring1 = 'Tamas Ring',
    },
    
    -- Ability
    ['Charm'] = {
        Head = 'Noble\'s Ribbon',
        Neck = 'Bird Whistle',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        Waist = 'Corsette +1',
        Feet = 'Beast Gaiters',
    },

    ['Reward'] = {
        Neck = 'Justice Badge',
        Hands = 'Ogre Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Saintly Ring',
        Feet = 'Beast Gaiters',
    },
    
    -- WS
    ['WS_DEX'] = {
        Neck = 'Spike Necklace',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
    },
    ['WS_STR'] = {
        Neck = 'Spike Necklace',
        Ring1 = 'Courage Ring',
        Ring2 = 'Courage Ring',
    },
    ['WS_STR_VIT'] = {
        Neck = 'Spike Necklace',
        Ring1 = 'Courage Ring',
        Ring2 = 'Courage Ring',
    },
    ['WS_HYBRID'] = {
        Neck = 'Spike Necklace',
        Ring1 = 'Courage Ring',
        Ring2 = 'Courage Ring',
    },
    ['WS_ELE'] = {
        Neck = 'Spike Necklace',
        Body = 'Haubergeon',
        Hands = 'Wonder Mitts',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
        Waist = 'Ryl.Kgt. Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Wonder Clomps',
    },
    
    
    -- FC
    ['FastCast'] = {
        Waist = 'Swift Belt',
    },
    
    -- Ninjutsu
    ['NIN_Utsusemi'] = {

    },
    ['NIN_Enfeebling'] = {
        Neck = 'Black Neckerchief',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
    },
    ['NIN_Nuke'] = {
        Neck = 'Black Neckerchief',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
    },

    -- Magic
    ['DebuffMND'] = {
        Neck = 'Justice Badge',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
    },
    ['DebuffINT'] = {
        Ring2 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
    },
    ['Cure'] = {
        Neck = 'Justice Badge',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Saintly Ring',
    },
    ['DefaultCast'] = {
        Neck = 'Justice Badge',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
    },
    
    -- Resting
    ['Resting'] = {},
    ['MP_Resting'] = {
        main = 'Dark Staff',
    },
    -- Fishing
    ['Fishing'] = {
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
    ['Export'] = {
        Main = 'Mythril Pick +1',
        Sub = 'Cmb.Cst. Axe +1',
        Head = 'Alumine Salade',
        Neck = 'Spike Necklace',
        Ear1 = 'Spike Earring',
        Ear2 = 'Spike Earring',
        Body = 'Haubergeon',
        Hands = 'Ryl.Kgt. Mufflers',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Alumine Sollerets',
    },
    ['TP_Evasion'] = {
        Head = 'Crow Beret',
        Neck = 'Ryl.Grd. Collar',
        Ear1 = 'Hope Earring +1',
        Ear2 = 'Hope Earring +1',
        Body = 'Assault Jerkin',
        Hands = 'Ryl.Kgt. Mufflers',
        Ring1 = 'Grace Ring',
        Ring2 = 'Grace Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Battle Boots +1',
    },
    ['Idle_Evasion'] = {
        Head = 'Crow Beret',
        Neck = 'Ryl.Grd. Collar',
        Ear1 = 'Hope Earring +1',
        Ear2 = 'Hope Earring +1',
        Body = 'Assault Jerkin',
        Hands = 'Ryl.Kgt. Mufflers',
        Ring1 = 'Grace Ring',
        Ring2 = 'Grace Ring',
        Back = 'Amemet Mantle',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Battle Boots +1',
    },
    ['Mid_Shot'] = {
        Body = 'Noct Doublet +1',
        Ring1 = 'Beetle Ring +1',
        Ring2 = 'Beetle Ring +1',
        Legs = 'Noct Brais +1',
    }
};
-- Weapons
sets['Main']['Dagger'] = {}
sets['Main']['Dagger']['Default'] = {
    Main = 'Mercenary\'s Knife',
    Sub = 'Mercenary\'s Knife',
}
sets['Main']['Dagger']['Attack'] = {
    Main = 'Federation Knife',
    Sub = 'Federation Knife',
}
sets['Main']['Dagger']['AttRAcc'] = {
    Main = 'Federation Knife',
    Sub = 'Archer\'s Knife',
}
sets['Main']['Dagger']['RAcc'] = {
    Main = 'Archer\'s Knife',
    Sub = 'Archer\'s Knife',
}

sets['Main']['Club'] = {}
sets['Main']['Club']['None'] = {}
sets['Main']['Club']['Warp'] = {
    main = 'Warp Cudgel',
}

profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    --GoFish = false,
    --IdleVariant = 1,
    --TPVariant = 1
};
local MageSubs = T{'WHM', 'BLM', 'RDM', 'SMN'}
local NinNukes = T{'Katon: Ichi', 'Katon: Ni', 'Katon: San', 'Hyoton: Ichi', 'Hyoton: Ni', 'Hyoton: San', 'Huton: Ichi', 'Huton: Ni', 'Huton: San', 'Doton: Ichi', 'Doton: Ni', 'Doton: San', 'Raiton: Ichi', 'Raiton: Ni', 'Raiton: San', 'Suiton: Ichi', 'Suiton: Ni', 'Suiton: San'};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    varhelper.Initialize();
    varhelper.CreateToggle('GoFish', false);
    varhelper.CreateToggle('DoWork', false);
    varhelper.CreateCycle('IdleVariant', { [1] = 'Default', [2] = 'Evasion' });
    varhelper.CreateCycle('TPVariant', { [1] = 'Default', [2] = 'Evasion' });
    
    local t_cycle = {}
    local t_index = 1
    for t, w in pairs(profile.Sets['Main']) do
        t_cycle[t_index] = t
        t_index = t_index + 1
        local n_index = 1
        local n_cycle = {}
        for n, e in pairs(w) do
            n_cycle[n_index] = n
            n_index = n_index + 1
        end
        varhelper.CreateCycle(t, n_cycle);
    end
    varhelper.CreateCycle('Main', t_cycle);
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
    if (args[1] == 'gofish') then
        varhelper.AdvanceToggle('GoFish');
    elseif (args[1] == 'dowork') then
        varhelper.AdvanceToggle('DoWork');
    elseif (args[1] == 'idleset') then
        varhelper.AdvanceCycle('IdleVariant');
    elseif (args[1] == 'tpset') then
        varhelper.AdvanceCycle('TPVariant');
    elseif (args[1] == 'main') then
        varhelper.AdvanceCycle('Main');
    elseif (args[1] == 'main_type') then
        varhelper.AdvanceCycle(varhelper.GetCycle('Main'));
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local equip_set = {}
    --if next(equip_set) ~= nil then
    --    print('Yes')
    --end
    if (player.Status == 'Engaged') then
        equip_set = gFunc.Combine(equip_set, sets['TP_' .. varhelper.GetCycle('TPVariant')]);
        equip_set = gFunc.Combine(
            equip_set,
            sets['Main'][varhelper.GetCycle('Main')][varhelper.GetCycle(varhelper.GetCycle('Main'))]
        );
        if MageSubs:contains(player.SubJob) then
            equip_set = gFunc.Combine(equip_set, sets.Mage_Sub);
        end
    elseif (player.Status == 'Resting') then
        equip_set = gFunc.Combine(equip_set, sets.Resting);
        if MageSubs:contains(player.SubJob) then
            equip_set = gFunc.Combine(equip_set, sets.MP_Resting);
        end
    else
        equip_set = gFunc.Combine(equip_set, sets['Idle_' .. varhelper.GetCycle('IdleVariant')]);
        equip_set = gFunc.Combine(
            equip_set,
            sets['Main'][varhelper.GetCycle('Main')][varhelper.GetCycle(varhelper.GetCycle('Main'))]
        );
        if MageSubs:contains(player.SubJob) then
            equip_set = gFunc.Combine(equip_set, sets.Mage_Sub);
        end
        if (varhelper.GetToggle('GoFish') == true)  then
            equip_set = gFunc.Combine(equip_set, sets.Fishing);
        elseif (varhelper.GetToggle('DoWork') == true)  then
            equip_set = gFunc.Combine(equip_set, sets.Working);
        end
    end
    if next(equip_set) ~= nil then
        gFunc.EquipSet(equip_set);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if sets[action.Name] then
        gFunc.EquipSet(sets[action.Name]);         
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.FastCast);
end

profile.HandleMidcast = function()
    local MndDebuffs = T{ 'Slow', 'Paralyze', 'Dia', 'Silence' };
    local ElementalDebuffs = T{ 'Burn', 'Rasp', 'Drown', 'Choke', 'Frost', 'Shock' };
    local action = gData.GetAction();
    
    if (action.Skill == 'Ninjutsu') then
        if (NinNukes:contains(action.Name)) then 
            gFunc.EquipSet(sets.NIN_Nuke);
        elseif string.match(action.Name, 'Utsusemi') then
            gFunc.EquipSet(sets.NIN_Utsusemi);
            -- /cancel doesn't work in HorizonXI
            --profile.DoShadows(action);
        else
            gFunc.EquipSet(sets.NIN_Enfeebling);
        end			
    elseif (action.Skill == 'Enfeebling Magic') then
        if (MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.DebuffMND);
        else
            gFunc.EquipSet(sets.DebuffINT);
        end
    elseif (action.Skill == 'Elemental Magic') then
        if (ElementalDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.ElementalDebuff);
        else
            gFunc.EquipSet(sets.Nuke);
        end
    elseif (action.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.DarkMagic);
    elseif string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then
        gFunc.EquipSet(sets.Cure);
    elseif (action.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
    else
        gFunc.EquipSet(sets.DefaultCast);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.Mid_Shot)
end

local WS_STR = T{
    'Fast Blade',
    'Raging Axe',
    'Smash Axe',
    'Gale Axe',
    'Avalanche Axe',
    'Spinning Axe',
    'Rampage',
    'Mistral Axe',
    'Decimation',
    'Onslaught',
    'Slice',
    'Vorpal Scythe',
}
local WS_STR_VIT = T{'Calamity'}
local WS_HYBRID = T{'Blade: Teki', 'Blade: To', 'Blade: Chi'}
local WS_ELE = T{'Blade: Ei', 'Blade: Yu'}
profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (WS_STR:contains(action.Name)) then
        gFunc.EquipSet(sets.WS_STR);
    elseif (WS_STR_VIT:contains(action.Name)) then
        gFunc.EquipSet(sets.WS_STR_VIT);
    elseif (WS_HYBRID:contains(action.Name)) then
        gFunc.EquipSet(sets.WS_HYBRID);
    elseif (WS_ELE:contains(action.Name)) then
        gFunc.EquipSet(sets.WS_ELE);
    else
        gFunc.EquipSet(sets.WS_DEX);
    end
end

return profile;