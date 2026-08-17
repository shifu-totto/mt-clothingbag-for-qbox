RegisterNetEvent('mt-clothingbag:server:removeBag', function()
    local source = source

    exports.ox_inventory:RemoveItem(
        source,
        'clothing_bag',
        1
    )
end)