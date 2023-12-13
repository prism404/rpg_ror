class InventoryController < ApplicationController
    def index
        inventory = Inventory.where(id_user: 1)
        @arr = []
        inventory.each do |data|
            item = Item.find(data.id_item)
            @arr.push({"id" => data.id, 'path' => item.path, 'quantity' => data.quantity})
        end        
    end

    def update
        inventory = Inventory.find(params[:id])
        if inventory.quantity == 0
            redirect_to inventory_path()            
        else
            inventory.quantity -= 1
            if inventory.update(:quantity => inventory.quantity)   
                redirect_to inventory_path()            
            end
        end  
    end

end