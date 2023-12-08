class InventoryController < ApplicationController
    def index
        inventory = Inventory.where(id_user: 1)
        @arr = []
        inventory.each do |data|
            item = Item.find(data.id_item)
            @arr.push({'path' => item.path, 'quantity' => data.quantity})
        end        
    end
end