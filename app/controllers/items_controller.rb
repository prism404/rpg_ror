class ItemsController < ApplicationController 
    def index
        @items = Item.all()
    end 

    # VIEW POUR LA CREATION D'ITEM , [SUBMITION] => METHOD "create"  
    def new
        @item = Item.new
    end

    # RECUPERER LES CHAMPS ET METTRE DANS LA TABLE "item" , [REDIRECT] => PAGE "/items"  
    def create
        @item = Item.new(item_params)
        if @item.save
            redirect_to(items_path())
        else
            render :new
        end            
    end

    # VIEW POUR LA MODIF D'ITEM , [SUBMITION] => METHOD "update"
    def edit
        @item = Item.find(params[:id])
    end
    
    # MET A JOUR LES ITEM DANS LA TABLE "item" ,  [REDIRECT] => PAGE "/items"  
    def update
        @item = Item.find(params[:id])
        if @item.update(item_params)   
            redirect_to(items_path())
        else   
            render :new
        end
    end

    # SUPPRESSION D'ITEM PAR "id" DANS LA TABLE "item" 
    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to(items_path())
    end

    private

    # DEFINIER LES CHAMPS A UTILISER LORS DE LA MISE EN DB  
    def item_params
        params.require(:item).permit(:path, :name, :categorie, :stats)
    end

end