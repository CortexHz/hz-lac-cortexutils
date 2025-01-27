local profile = {};
local varhelper = gFunc.LoadFile('common/varhelper_modded.lua');
local sets = {
    -- Weapons
    ['Weapon'] = {},
    ['Idle'] = {},
    ['TP'] = {},

    ['Resting'] = {
        Main = 'Dark Staff',
        Neck = 'Checkered Scarf',
        --Body = 'Seer\'s Tunic +1',
        Body = 'Errant Hpl.',
        --Body = 'Black Cloak',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
    },
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
    ['FastCast'] = {
        Ring1 = 'Tamas Ring',
    },
    ['DebuffMND'] = {
        Head = 'Igqira Tiara',
        Neck = 'Enfeebling Torque',
        Body = 'Wizard\'s Coat',
        Hands = 'Errant Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Saintly Ring',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
    },
    ['DebuffINT'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Igqira Tiara',
        Neck = 'Enfeebling Torque',
        Body = 'Wizard\'s Coat',
        Hands = 'Errant Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Wizard\'s Sabots',
    },
    ['DarkMagic'] = {
        Head = 'Wizard\'s Petasos',
        Body = 'Ryl.Sqr. Robe +2',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Wizard\'s Sabots',
    },
    ['Enhancing'] = {
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring +1',
    },
    ['Cure'] = {
        Neck = 'Justice Badge',
        Body = 'Wizard\'s Coat',
        Hands = 'Errant Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Saintly Ring',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
    },
    ['Spikes'] = {
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring +1',
    },
    ['Nuke'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Elemental Torque',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Igqira Weskit',
        --Body = 'Ryl.Sqr. Robe +2',
        --Hands = 'Sorcerer\'s Gloves',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Tamas Ring',
        --Ring2 = 'Eremite\'s Ring +1',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        --Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        --Legs = 'Seer\'s Slacks +1',
        Feet = 'Wizard\'s Sabots',
    },
    ['Nation'] = {
        Head = 'Republic Circlet',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring +1',
        Waist = 'Penitent\'s Rope',
    },
    ['Burst'] = {
        Hands = 'Sorcerer\'s Gloves',
    },
    ['Elemental'] = {
    },
    ['export'] = {
        Main = 'Earth Staff',
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Checkered Scarf',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Phantom Earring',
        Body = 'Wizard\'s Coat',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring +1',
        Back = 'Black Cape +1',
        Waist = 'Reverend Sash',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Wizard\'s Sabots',
    },
};
-- Weapons
sets['Weapon']['Scythe'] = {}
sets['Weapon']['Scythe']['Ivory'] = {
    main = 'Falcastra',
}
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

-- Armor
sets['Idle']['Default'] = {
    Ammo = 'Phtm. Tathlum',
    Neck = 'Elemental Torque',
    Ear1 = 'Moldavite Earring',
    Ear2 = 'Phantom Earring',
    Body = 'Black Cloak',
    Hands = 'Wizard\'s Gloves',
    Ring1 = 'Tamas Ring',
    Ring2 = 'Phalanx Ring',
    Back = 'Rainbow Cape',
    Waist = 'Penitent\'s Rope',
    Legs = 'Errant Slops',
    Feet = 'Wizard\'s Sabots',
}
sets['Idle']['Defense'] = {
    Ammo = 'Phtm. Tathlum',
    Head = 'Wizard\'s Petasos',
    Neck = 'Elemental Torque',
    Ear1 = 'Moldavite Earring',
    Ear2 = 'Phantom Earring',
    Body = 'Igqira Weskit',
    Hands = 'Wizard\'s Gloves',
    Ring1 = 'Tamas Ring',
    Ring2 = 'Phalanx Ring',
    Back = 'Rainbow Cape',
    Waist = 'Penitent\'s Rope',
    Legs = 'Errant Slops',
    Feet = 'Wizard\'s Sabots',
}

sets['Idle']['L65'] = {
    Ammo = 'Phtm. Tathlum',
    Head = 'Wizard\'s Petasos',
    Neck = 'Elemental Torque',
    Ear1 = 'Moldavite Earring',
    Ear2 = 'Phantom Earring',
    Body = 'Wizard\'s Coat',
    Hands = 'Wizard\'s Gloves',
    Ring1 = 'Tamas Ring',
    Ring2 = 'Phalanx Ring',
    Back = 'Black Cape +1',
    Waist = 'Penitent\'s Rope',
    Legs = 'Wizard\'s Tonban',
    Feet = 'Wizard\'s Sabots',
}


sets['TP']['Default'] = {
    Head = 'Wizard\'s Petasos',
    Neck = 'Checkered Scarf',
    Ear1 = 'Moldavite Earring',
    Ear2 = 'Phantom Earring',
    Body = 'Wizard\'s Coat',
    Hands = 'Wizard\'s Gloves',
    Ring1 = 'Tamas Ring',
    Ring2 = 'Eremite\'s Ring +1',
    Back = 'Black Cape +1',
    Waist = 'Penitent\'s Rope',
    Legs = 'Wizard\'s Tonban',
    Feet = 'Wizard\'s Sabots',
}
sets['TP']['Acc'] = {
    Head = 'Wizard\'s Petasos',
    Neck = 'Checkered Scarf',
    Ear1 = 'Moldavite Earring',
    Ear2 = 'Phantom Earring',
    Body = 'Wizard\'s Coat',
    Hands = 'Wizard\'s Gloves',
    Ring1 = 'Tamas Ring',
    Ring2 = 'Eremite\'s Ring +1',
    Back = 'Black Cape +1',
    Waist = 'Penitent\'s Rope',
    Legs = 'Wizard\'s Tonban',
    Feet = 'Wizard\'s Sabots',
}


profile.Sets = sets;

profile.Packer = {
};



local Settings = {
    --GoFish = false,
    --IdleVariant = 1,
    --TPVariant = 1
};

local NinNukes = T{'Katon: Ichi', 'Katon: Ni', 'Katon: San', 'Hyoton: Ichi', 'Hyoton: Ni', 'Hyoton: San', 'Huton: Ichi', 'Huton: Ni', 'Huton: San', 'Doton: Ichi', 'Doton: Ni', 'Doton: San', 'Raiton: Ichi', 'Raiton: Ni', 'Raiton: San', 'Suiton: Ichi', 'Suiton: Ni', 'Suiton: San'};

local ElementalStaffTable = {
    ['Fire'] = 'Fire Staff',
    ['Earth'] = 'Earth Staff',
    ['Water'] = 'Water Staff',
    ['Wind'] = 'Wind Staff',
    ['Ice'] = 'Aquilo\'s Staff',
    ['Thunder'] = 'Thunder Staff',
    ['Light'] = 'Light Staff',
    ['Dark'] = 'Dark Staff'
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    varhelper.Initialize();
    varhelper.CreateToggle('GoFish', false);
    varhelper.CreateToggle('DoWork', false);
    varhelper.CreateSetCycle('Idle', profile.Sets['Idle']);
    varhelper.CreateSetCycle('TP', profile.Sets['TP']);
    varhelper.CreateSetCycle('Weapon', profile.Sets['Weapon']);
    varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')]);
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
        varhelper.AdvanceCycle('Idle');
    elseif (args[1] == 'tpset') then
        varhelper.AdvanceCycle('TP');
    elseif (args[1] == 'weapon') then
        varhelper.DestroyCycle('W.Variant')
        varhelper.AdvanceCycle('Weapon');
        varhelper.CreateSetCycle('W.Variant', profile.Sets['Weapon'][varhelper.GetCycle('Weapon')]);
    elseif (args[1] == 'weapon_variant') then
        varhelper.AdvanceCycle('W.Variant');
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local equip_set = {}
    --if next(equip_set) ~= nil then
    --    print('Yes')
    --end
    if (player.Status == 'Engaged') then
        equip_set = gFunc.Combine(equip_set, sets['TP'][varhelper.GetCycle('TP')]);
        equip_set = gFunc.Combine(
            equip_set,
            sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]
        );
    elseif (player.Status == 'Resting') then
        equip_set = gFunc.Combine(equip_set, sets.Resting);
    else
        equip_set = gFunc.Combine(equip_set, sets['Idle'][varhelper.GetCycle('Idle')]);
        equip_set = gFunc.Combine(
            equip_set,
            sets['Weapon'][varhelper.GetCycle('Weapon')][varhelper.GetCycle('W.Variant')]
        );
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
            gFunc.EquipSet(sets.Nuke);
        elseif string.match(action.Name, 'Utsusemi') then
            gFunc.EquipSet(sets.NIN_Utsusemi);
            -- /cancel doesn't work in HorizonXI
            --profile.DoShadows(action);
        else
            gFunc.EquipSet(sets.NIN_Enfeebling);
        end
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    elseif (action.Skill == 'Enfeebling Magic') then
        if (MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.DebuffMND);
        else
            gFunc.EquipSet(sets.DebuffINT);
        end
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    elseif (action.Skill == 'Elemental Magic') then
        if (ElementalDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.ElementalDebuff);
        else
            gFunc.EquipSet(sets.Nuke);
        end
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    elseif (action.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.DarkMagic);
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    elseif string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then
        gFunc.EquipSet(sets.Cure);
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    elseif (action.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    else
        gFunc.EquipSet(sets.DefaultCast);
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

local WS_STR = T{
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
        gFunc.EquipSet(sets.WS_STR);
    end
end

return profile;