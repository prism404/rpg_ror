class QuestsController < ApplicationController
before_action :set_quest, only: %i[show edit update destroy]
  
  def index
    @quests = Quest.all
    @items = Item.all
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
      redirect_to @quest
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @quest.update(quest_params)
      redirect_to @quest
    else
      render :edit
    end
  end

  def destroy
    @quest = Quest.find(params[:id])
    @quest.destroy
  end
  
  private
  
  def set_quest
    @quest = Quest.find(params[:id])
  end
  
  def quest_params
    params.require(:quest).permit(:name, :description, :exp, :item_1_id, :item_2_id, :item_3_id)
  end
end
