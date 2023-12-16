class MainController < ApplicationController
    def index
        if current_user
            @saveParty = SaveParty.where(id_user: current_user.id)
        end
    end
end