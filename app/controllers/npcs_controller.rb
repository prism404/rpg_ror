class NpcsController < ApplicationController
    def new
      @npc = Npc.new
      @avatar_options = ["npc_01.jpeg", "npc_02.jpeg", "npc_03.jpeg", "npc_04.jpeg", "npc_05.jpeg"]
    end
  
    def create
      @npc = Npc.new(npc_params)
  
      if @npc.save
        redirect_to @npc, notice: 'Npc was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def npc_params
      params.require(:npc).permit(:name, :avatar, :health_points)
    end
  end
  