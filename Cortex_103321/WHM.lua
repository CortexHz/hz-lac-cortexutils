local profile = {};
local varhelper = gFunc.LoadFile('common/varhelper.lua');
local sets = {
    ['export'] = {
        Main = 'Blessed Hammer',
        Sub = 'Light Buckler',
        Range = 'Halcyon Rod',
        Ammo = 'Insect Ball',
        Head = 'Republic Circlet',
        Neck = 'Justice Badge',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Angler\'s Gloves',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Red Cape +1',
        Waist = 'Reverend Sash',
        Legs = 'Angler\'s Hose',
        Feet = 'Waders',
    },
    ['Idle_Refresh'] = {
        Head = 'Lgn. Circlet',
        Neck = 'Justice Badge',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Seer\'s Tunic +1',
        Hands = 'Baron\'s Cuffs',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Mist Silk Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Baron\'s Slops',
        Feet = 'Seer\'s Pumps +1',
    },
    ['Idle_Defense'] = {
        Head = 'Lgn. Circlet',
        Neck = 'Justice Badge',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Seer\'s Tunic +1',
        Hands = 'Baron\'s Cuffs',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Mist Silk Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Baron\'s Slops',
        Feet = 'Seer\'s Pumps +1',
    },
    ['TP_Default'] = {
        Head = 'Lgn. Circlet',
        Neck = 'Justice Badge',
        Ear1 = 'Energy Earring +1',
        Ear2 = 'Energy Earring +1',
        Body = 'Seer\'s Tunic +1',
        Hands = 'Baron\'s Cuffs',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Mist Silk Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Baron\'s Slops',
        Feet = 'Seer\'s Pumps +1',
    },
    ['TP_DD'] = {
        Main = 'Blessed Hammer',
        Sub = 'Light Buckler',
        Head = 'Republic Circlet',
        Neck = 'Justice Badge',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Red Cape +1',
        Waist = 'Reverend Sash',
        Legs = 'Seer\'s Slacks +1',
        Feet = 'Seer\'s Pumps +1',
    },
    ['Resting'] = {
        Main = 'Blessed Hammer',
        Body = 'Seer\'s Tunic +1',
        Waist = 'Reverend Sash',
        Legs = 'Baron\'s Slops',
        Back = 'Wizard\'s Mantle',
    },
    ['Fishing'] = {
        Body = 'Angler\'s Tunica',
        Hands = 'Angler\'s Gloves',
        Legs = 'Angler\'s Hose',
        Feet = 'Waders',
    },
    ['FastCast'] = {
        Neck = 'Justice Badge',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Devotee\'s Mitts',
        Back = 'White Cape +1',
    },
    ['DebuffMND'] = {
        Neck = 'Justice Badge',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'White Cape +1',
    },
    ['DebuffINT'] = {
        Neck = 'Justice Badge',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Eremite\'s Ring +1',
        Ring2 = 'Eremite\'s Ring',
    },
    ['DarkMagic'] = {
        Neck = 'Justice Badge',
        Body = 'Ryl.Sqr. Robe',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eremite\'s Ring',
    },
    ['Enhancing'] = {
        Neck = 'Justice Badge',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'White Cape +1',
    },
    ['Cure'] = {
        Neck = 'Justice Badge',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'White Cape +1',
    },
    ['DefaultCast'] = {
        Neck = 'Justice Badge',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'White Cape +1',
    },
    ['Nuke'] = {
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Eremite\'s Ring +1',
        Ring2 = 'Eremite\'s Ring',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    --GoFish = false,
    --IdleVariant = 1,
    --TPVariant = 1
};

local ElementalStaffTable = {
    ['Fire'] = 'Fire Staff',
    ['Earth'] = 'Earth Staff',
    ['Water'] = 'Water Staff',
    ['Wind'] = 'Wind Staff',
    ['Ice'] = 'Ice Staff',
    ['Thunder'] = 'Thunder Staff',
    ['Light'] = 'Light Staff',
    ['Dark'] = 'Dark Staff'
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    varhelper.Initialize();
    varhelper.CreateToggle('GoFish', false);
    varhelper.CreateCycle('IdleVariant', { [1] = 'Refresh', [2] = 'Defense' });
    varhelper.CreateCycle('TPVariant', { [1] = 'Default', [2] = 'DD' });
end

profile.OnUnload = function()
    varhelper.Destroy();
end

profile.HandleCommand = function(args)
    if (args[1] == 'gofish') then
        varhelper.AdvanceToggle('GoFish');
    elseif (args[1] == 'idleset') then
        varhelper.AdvanceCycle('IdleVariant');
    elseif (args[1] == 'tpset') then
        varhelper.AdvanceCycle('TPVariant');
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet('TP_' .. varhelper.GetCycle('TPVariant'));
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    else
        if (varhelper.GetToggle('GoFish') == true) then
            gFunc.EquipSet(sets.Fishing);
        else
            gFunc.EquipSet('Idle_' .. varhelper.GetCycle('IdleVariant'));
        end
    end
end

profile.HandleAbility = function()
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
    if (action.Skill == 'Enfeebling Magic') then
        if (MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.DebuffMND);
        else
            gFunc.EquipSet(sets.DebuffINT);
        end
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    elseif (action.Skill == 'Elemental Magic') then
        if (ElementalDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.ElementalDebuff);
        --elseif (action.Name == 'Impact') then
        --    gFunc.EquipSet(sets.Impact);
        else
            gFunc.EquipSet(sets.Nuke);
        end
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    elseif (action.Skill == 'Dark Magic') then
        --if (action.Name == 'Stun') then
        --    gFunc.EquipSet(sets.Stun);
        --else
        gFunc.EquipSet(sets.DarkMagic);
        --end
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    elseif string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then
        gFunc.EquipSet(sets.Cure);
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
    elseif (action.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
    else
        gFunc.EquipSet(sets.DefaultCast);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;