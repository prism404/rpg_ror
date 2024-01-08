class GameMapController < ApplicationController
    def show
        @party = Party.find(params[:id])
    end
end
