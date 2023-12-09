class EnigmasController < ApplicationController
    def index
        @enigmas = Enigma.all
    end
    
    def show 
        @enigma = Enigma.find(params[:id])
    end
    
    def new
        @enigma = Enigma.new
    end
    
    def create
        @enigma = Enigma.new(enigma_params)
        if @enigma.save
          redirect_to @enigma, notice: 'Enigma was successfully created.'
        else
          render :new
        end
    end
      
    private
      
    def enigma_params
        params.require(:enigma).permit(:question, :correct_response, :response1, :response2, :response3)
    end
end
    