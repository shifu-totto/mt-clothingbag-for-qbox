# Discription (JP below)
its fork from mt-clothing and adaoted for QBox
original and respect here https://github.com/MT-Scripts/mt-clothingbag
By using this item, you can change clothes anywhere.

mt-clothingのフォークです
QBcore環境で動作していたスクリプトをQboxで動作するようにしました。
アイテムを使用するとで、どこでも着替えができるようになります。

# mt-clothingbag
Simple clothing bag script for QBox

# Instalation:
1. Add image for [ox]/ox_inventory/web/images from mt-clothingbag/inventory_images
mt-clothingbag/inventory_imagesの画像を[ox]/ox_inventory/web/imagesに入れる
2. Add bellow [ox]/ox_inventory/data/items.lua
下記アイテムのコードを[ox]/ox_inventory/data/items.luaに追記する

```
['clothing_bag'] = {
    label = 'Clothing Bag',
    weight = 10,
    stack = false,
    close = true,
    description = 'Portable clothing bag',

    client = {
        export = 'mt-clothingbag.useClothingBag'
    }
},

```

# Dependicies
- (qbx_core)[https://github.com/Qbox-project/qbx_core]