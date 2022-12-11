function SendToDiscord(title, message, iserror)
    if GetConvar('lazy_motel:logs', "").match('https://', '[a-z]*://[^ >,;]*') then
        local color = {
            default = 0xf99f04,
            error = "red"
        }
        local embeds = {
            {
                type = "rich",
                title = title,
                author = {
                    name = "Lazy Motel",
                    icon_url = 'https://avatars.githubusercontent.com/u/64617706?.jpg'
                },
                description = message,
                color = iserror and color.error or color.default
            }
        }
        PerformHttpRequest(GetConvar('lazy-motel:logs', ""), function(err, data, header)
            if err then print(err) end
        end, 'POST',
            json.encode({ embeds = embeds }),
            { ['Content-Type'] = 'application/json' })

    end
end
