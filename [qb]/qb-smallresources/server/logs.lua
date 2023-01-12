local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1063071629745340426/msb05dhq3qqr_D32vAHWrmQE2WiQMxCtfA0SHdhCnY-JbI-jcl539XdjYldj6PC7iYp5',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1063071629745340426/msb05dhq3qqr_D32vAHWrmQE2WiQMxCtfA0SHdhCnY-JbI-jcl539XdjYldj6PC7iYp5',
    ['playermoney'] = 'https://discord.com/api/webhooks/1063071803737645086/ihjYRD51cUrnR93VXYTmGRYaWtiHdzmcBjTgR-YzTOc0esmlkRFAMr0gx43bcS7PJiC_',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1063071846339195021/2Qa7__rISPNDeDaEHEa1d3D9NpjiBVvDX2qfCm7Sc1BYnGL_mHzPzNzIjAHM3k7UjKG6',
    ['robbing'] = 'https://discord.com/api/webhooks/1063071889532137534/rB1zjuIYuzaMLnaKBQ2VZ22ax048qHXxPXMvb37MA4aQqC9sWVSKtr7WcUH1vRMISFSD',
    ['cuffing'] = 'https://discord.com/api/webhooks/1063071930086854656/4a9duM6xWADR4x-QyQnDHjO0okAiEno6Seq0eQhwLRMQ09xVJeyigBU45mNDw3mrC-w4',
    ['drop'] = 'https://discord.com/api/webhooks/1063072434338672670/MVDKVP3mAhAiqNc37mjfFhy_Wy7uziL7gD4LNry5QzCZ_6o4CfMU7OzJCs8Mf2lsxfuY',
    ['trunk'] = 'https://discord.com/api/webhooks/1063072476323663912/xhiSrWi6JuRXn0DH_0hwNRz-lqb75LzNC5i18B4TTECgvzN8G1glnfFXEKdM0b-CovH3',
    ['stash'] = 'https://discord.com/api/webhooks/1063072523434065971/yfrcxhwTZcRkVmEsNJZ74XqEwuuEah47PbAeX2sFlfZixEhJX-4v3MktjP_B4Voj7Kgh',
    ['glovebox'] = 'https://discord.com/api/webhooks/1063073066076340224/1kdh7vbE38Ddr71Sh5o89vwOay9lx6OrfxKVUvOo9Dftr7LRAUN2LUa1-3xtMdmlihW9',
    ['banking'] = 'https://discord.com/api/webhooks/1063073101706952794/p3ir0E6H0wCqYHRlqZ6bddPxrTUG_IKYH1C_cTrTvRoj8IDqZoMpr1gjIrcbWa5MUdo4',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1063073150033731584/Ss1JV5nJUruqmOd7-RSk9ESQJOow8_53hHfyRJOaaTmbBSEVygJYsW5RH8Cxrw_8IKp4',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1063073199870451762/voQ-FQZA2CZprS35oM019zHDBbiI6yXnbFB8kw6d41TAuAVqH-k_DuGalAZEZ4SSg09O',
    ['shops'] = 'https://discord.com/api/webhooks/1063073334700548217/wK883-OIJHLruPWpLVd9NuUFAPFxbChRtr7GZlYEdedkKS7sEpZY5-smF0AtCG76KZmj',
    ['dealers'] = 'https://discord.com/api/webhooks/1063073372998737971/BWjtfJzzBchq64KzzlXjh4I0NgXwfnvfZUyuIunIkE2ox6pmxU7Mk4vDTxIGoY3owLEi',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1063073417605156894/JMfggJr6iLXgk0LZD3QBW-TophUsg9130RXfAT_txqY1acdpkMtk_mopz9Y5QIyMT2Fd',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1063073463813812297/OeJ-D2ztnXtSav9mbD_IXNo5yTrruft1kgvWOOKMOPk-sf6e1eYShsrHDk-v4I08ojWT',
    ['powerplants'] = 'https://discord.com/api/webhooks/1063073557363568670/Jj0km8FM3tG6TZSQKdbYE06-C0rE2NRoVpB2xxjApOU1o20XohIn3eYp0So7DIvzF7zA',
    ['death'] = 'https://discord.com/api/webhooks/1063073606176866325/PMTGx_G_gvfithDZSYT_Ao1P0R2xAvwdhZOL7dGajl23xbMbi-YF79J4sHH7OQKkjX9V',
    ['joinleave'] = 'https://discord.com/api/webhooks/1063073647985705023/ygWn_SVXY5OeH_-B5FOvHtT3a9pbBCZ78RLwjPE2_WwAnmQs8W7fPFLZQP-szR4uZal9',
    ['report'] = 'https://discord.com/api/webhooks/1063073687135342674/mQkzS981j21mXZqbf-1wvL0hW5NCXxo1GCnxb8jHiF7v2dn93xjzSztPu1OPYA3MCEYz',
    ['me'] = 'https://discord.com/api/webhooks/1063073736741355580/FC20yx1w5msq4yD5uj9br7smqrX2P1An7BSMAMTLOr_mN7lJH6qZId6OO0H2j5vxTEUk',
    ['pmelding'] = 'https://discord.com/api/webhooks/1063073780555055184/PsLKXjVEk4Eh1WW9BrxHN88rMwIk-aHenIsGpD8iAV1qbSRj3Hx1Oi4iwDHBajShfbFY',
    ['112'] = 'https://discord.com/api/webhooks/1063073826512060417/2POW7IhHe3T2lnastixOY7ii8naFNFbRVb5_8xMbhslbtbyaPGiVghWQwYmMt0UhZP-U',
    ['bans'] = 'https://discord.com/api/webhooks/1063073871953154179/GPAx6E4RZ_d--4cKKDSyVRPtxALcwGd0P-myKoKymyYwSHJHN5XixXdNponyehLYnQ3W',
    ['weather'] = 'https://discord.com/api/webhooks/1063073912080052266/JDNtE5E-ekqmgcwJJzNXIcn-3RvVjSqzTmt5VUFoj76K51YQXpL-tnqrC638s96bE7oE',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1063073950495674429/vfVKCnJUYpO29C9LK1HYdmu5wFXHHC2PgaRIh9LWQeoF5DozlN32vWoerBgOAZDDu5vx',
    ['bennys'] = 'https://discord.com/api/webhooks/1063073992598102106/0tn36iqALLuyN6WIAzNh1pxQ9U2fzjFUq36873WY9J9iyq3QBglC-CtQPuSn64k4qIU9',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1063074029596065812/22GKbiCYHSXyIlUOQWgGo0GeRooT0kBbP-iKyUx11BDjUAzVU0JFMj4_AK8aLx6zIUDt',
    ['robbery'] = 'https://discord.com/api/webhooks/1063074089247449138/Y4oZNj51ZEiArQTxdkfFoLEindJr7eu6X6lt97vMYUUqZkQNRJ92optzf8KYqhBvBDVu',
    ['casino'] = 'https://discord.com/api/webhooks/1063074127981850634/LrvOOl8Mwe8lIJl_8qN_slnsYjWeHtJ9lNekq20-0bt2evss-O--l0no9GRTv8LFX-EP',
    ['traphouse'] = 'https://discord.com/api/webhooks/1063074164354842624/GkABS8eXIIIWNZDH-pgnpfqzXzB-0XSFDy8O9ZOXR0QH6MaFnJiVlVYWl4gsbS0aLuLR',
    ['911'] = 'https://discord.com/api/webhooks/1063074202241990738/H10z6MJxXOqBhIWfILCiAzHtK0WrR03awVhuziGtG9a5ZzWyeh7-Z5weuXYiPZ4dJ3vN',
    ['palert'] = 'https://discord.com/api/webhooks/1063074247217528842/o3FkymFwfE2wl4BIKxPJgupRk9h7RSb-s8fG39CMNHEumDbjr06PhlEQkCd22-Xt5ll3',
    ['house'] = 'https://discord.com/api/webhooks/1063074283523428382/j99aKRNXX2mCtFEGPbq6phF2s4BA-udboGDVCko3rkLaepg0tmONb0ZUtyy-B2sUs_AL',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'Near Reality Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/944329338956939334/1063072500394770532/Near_Reality_Roleplay-011.png?width=868&height=671',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
