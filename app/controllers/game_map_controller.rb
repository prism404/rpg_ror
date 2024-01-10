class GameMapController < ApplicationController
    def show
        @party = Party.find(params[:id])
        @current_character = current_user.characters.last # Or your logic to find the current character
    end
end
