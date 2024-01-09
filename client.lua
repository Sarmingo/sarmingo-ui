RegisterCommand("+close", function()
    SendNUIMessage({
        type = "close_image"
    })
end, false)

RegisterCommand("-close", function () 
end)

RegisterKeyMapping('+close', 'Close(Sarmingo UI)', 'keyboard', 'BACK')

function show_image(imageUrl)
    SendNUIMessage({
        type = "show_image",
        url = imageUrl
    })
end

RegisterNetEvent('show_image')
AddEventHandler('show_image', function (imageUrl)
    show_image(imageUrl)
end)