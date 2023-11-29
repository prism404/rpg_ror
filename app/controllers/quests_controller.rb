class QuestsController < ApplicationController
before_action :set_quest, only: %i[show edit update destroy]
  
    def index
      @quests = Quest.all
    end
  
    def show
      @quest = Quest.find(params[:id])
    end
  
    def new
      @quest = Quest.new
    end
  
    def create
      @quest = Quest.new(quest_params)
  
      if @quest.save
        redirect_to @quest, notice: 'Quest was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @quest.update(quest_params)
        redirect_to @quest, notice: 'Quest was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @quest.destroy
      redirect_to quests_url, notice: 'Quest was successfully destroyed.'
    end
  
    private
  
    def set_quest
      @quest = Quest.find(params[:id])
    end
  
    def quest_params
      params.require(:quest).permit(:title, :description, :exp)
    end
end
