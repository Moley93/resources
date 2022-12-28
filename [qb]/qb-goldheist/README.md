This is my first paid release!
Thanks for purchasing it!

Thanks for purchasing The Script! 
`` Evil``

Requires ps-ui
if using minigame is set to true in config.lua then
 Get it from here
https://github.com/Project-Sloth/ps-ui

you can change the minigame by going in client/open.lua

:)


The Script is Encrypted by CFX Escrow System!
but don't worry The Script is fully Configurable!

config.lua

-- into qb-target/init.lua near after config.Peds

`For all the Configuration open config.lua`

in config.target models put this
["goldheist-ped"] = {
        models = {
            "mp_m_securoguard_01",

        },
        options = {
            {
                type = "client",
                event = "qb-goldheist:cinematic:goldstart",
                icon = "fas fa-eye", 
                label = "Sell Bars to Dealer",
            },
            {
                type = "client",
                event = "qb-goldheist:policetryingheist",
                icon = "fas fa-eye", 
                label = "Start Heist",
            }
        },
        distance = 2.5,
    },
and in config.peds put this
{ --goldheist
        model = 'mp_m_securoguard_01',
        coords = vector4(113.56, -1088.03, 28.19, 348.45),
        gender = 'male',
        freeze = true,
        invincible = false,
        blockevents = false,
    },

Discord Server Link ~ https://discord.gg/MEDzUG7cAS
Contact Me ~ EVIL#8263
A feedback will help! - So Join my discord!
Thanks to Tiger for the making it possible!
Greatest Thanks to QBCore Framework!
https://discord.gg/qbcore
