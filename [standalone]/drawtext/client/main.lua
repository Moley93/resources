local test = 0

RegisterNetEvent('ai-drawtext:ShowUI')
AddEventHandler('ai-drawtext:ShowUI', function(text)
	SendNUIMessage({
		action = 'show',
		text = text,
	})
end)

exports('hideUI',function()
	SendNUIMessage({
		action = 'hide',
	})
end)

exports('showUI',function(text)
	SendNUIMessage({
		action = 'show',
		text = text,
	})
end)

RegisterNetEvent('ai-drawtext:HideUI')
AddEventHandler('ai-drawtext:HideUI', function()
	SendNUIMessage({
		action = 'hide'
	})
end)

RegisterCommand("ui:show", function()
	TriggerEvent("ai-drawtext:ShowUI", "show", "Test")
end)

RegisterCommand("ui:hide", function()
	TriggerEvent("ai-drawtext:HideUI")
end)

