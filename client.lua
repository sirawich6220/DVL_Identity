RegisterNetEvent('DVL_Identity:open_menu')
AddEventHandler('DVL_Identity:open_menu', function()
    SendNUIMessage(({
        action='open'
    }))
    SetNuiFocus(true,true)
end)

RegisterNUICallback("DVL_Identity:get_input", function(data)
    local id=GetPlayerServerId(PlayerId())
TriggerServerEvent('DVL_Identity:mysql_save',id,data)
end)

RegisterNetEvent('DVL_Identity:close_menu')
AddEventHandler('DVL_Identity:close_menu', function()
    SendNUIMessage(({
        action='close'
    }))
    SetNuiFocus(false,false)
end)