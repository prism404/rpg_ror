class InventoryController < ApplicationController
    def index 
        @inventory = Inventory.new
        @inventorys = Inventory.all()
    end

    def create
        @inventory = Inventory.new(inventory_params)
        # if @inventory.save()
    end
end
