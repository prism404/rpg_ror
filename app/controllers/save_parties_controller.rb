class SavePartiesController < ApplicationController
    
    def new
        if current_user
            @save = SaveParty.new
        end
    end     
    
    def create
        saveParty = SaveParty.new(
                                :id_user => current_user.id, 
                                :id_character => 1, 
                                :etap => 0,
                                :content => params[:save_party][:content],
                            )
        if saveParty.save
            redirect_to root_path
        else
            redirect_to new_save_party_path 
        end
    end

end