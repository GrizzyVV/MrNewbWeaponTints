Config = {}
Config.notificationtitle = 'Weapon Modification'	--- title notification change to whatever
Config.scratchedserial = "The serial has been scratched off."  -- Can place whatever you want here, change it to 0000 or 656565656565----- or whatever you want
Config.breakpoint = 9  --- number to hit from breakpoint greater than or equal to chancerandom
Config.chancerandom = math.random(1,10)	--- math random min, max numbers to roll for break chance
Config.debugprints = true	-- do you want strings printing in the console to debug?


Config.Itemslist = {
    ['newbserialfile'] = { -- using the key as the export name and the item name to make things easier.
        item = 'newbserialfile',
        tintvalue = nil,
        tintname = nil
    },
    ['newbtint1'] = {
        item = 'newbtint1',
        tintvalue = 1,
        tintname = 'Green Weapon Tint',
    },
    ['newbtint2'] = {
        item = 'newbtint2',
        tintvalue = 2,
        tintname = 'Gold Weapon Tint',
    },
    ['newbtint3'] = {
        item = 'newbtint3',
        tintvalue = 3,
        tintname = 'Pink Weapon Tint',
    },
    ['newbtint4'] = {
        item = 'newbtint4',
        tintvalue = 4,
        tintname = 'Army Weapon Tint',
    },
    ['newbtint5'] = {
        item = 'newbtint5',
        tintvalue = 5,
        tintname = 'LSPD Weapon Tint',
    },
    ['newbtint6'] = {
        item = 'newbtint6',
        tintvalue = 6,
        tintname = 'Orange Weapon Tint',
    },
    ['newbtint7'] = {
        item = 'newbtint7',
        tintvalue = 7,
        tintname = 'Platinum Weapon Tint',
    },

}
