class PartiesController < ApplicationController
    before_action :set_party, only: [:destroy]
    
    def destroy
        @party.destroy
        redirect_to root_path
      end
  
    private
  
    def set_party
      @party = current_user.parties.find(params[:id])
    end
end
  