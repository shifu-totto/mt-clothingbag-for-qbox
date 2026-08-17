local bagObject = nil

exports('useClothingBag', function(data, slot)
    if bagObject and DoesEntityExist(bagObject) then
        lib.notify({
            type = 'error',
            description = 'すでに衣装バッグを使用しています'
        })
        return
    end

    
    local success = lib.progressBar({
        duration = 2000,
        label = 'バッグを地面に置いています...',
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = true,
            car = true,
            combat = true
        },
        anim = {
            dict = 'random@domestic',
            clip = 'pickup_low'
        }
    })

    if not success then
        return
    end

    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local position = coords + forward * 1.0

    local model = `prop_big_bag_01`

    lib.requestModel(model)

    bagObject = CreateObject(
        model,
        position.x,
        position.y,
        position.z,
        false,
        false,
        false
    )

    PlaceObjectOnGroundProperly(bagObject)
    SetEntityAsMissionEntity(bagObject, true, true)

    
    success = lib.progressBar({
        duration = 3000,
        label = 'バッグを開いています...',
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = true,
            car = true,
            combat = true
        },
        anim = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            clip = 'machinic_loop_mechandplayer'
        }
    })

    if not success then
        return
    end

    TriggerEvent('illenium-appearance:client:openClothingShopMenu', false)

    success = lib.progressBar({
        duration = 2000,
        label = 'バッグを回収しています...',
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = true,
            car = true,
            combat = true
        },
        anim = {
            dict = 'random@domestic',
            clip = 'pickup_low'
        }
    })

    if not success then
        return
    end

    if bagObject and DoesEntityExist(bagObject) then
        DeleteEntity(bagObject)
    end

    bagObject = nil

    TriggerServerEvent('mt-clothingbag:server:removeBag')
end)