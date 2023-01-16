Citizen.CreateThread(function()
	while true do
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(1051575611455455286)

        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('nrbiglogotrans.png')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('Join Near Reality Today!')
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('nrsmalllogotrans')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('Join Near Reality Today!')


        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Join Discord!", "https://discord.gg/near-reality")
        SetDiscordRichPresenceAction(1, "Join Server!", "fivem://147.189.170.236:30120")

        -- It updates every minute just in case.
		Citizen.Wait(60000)
	end
end)