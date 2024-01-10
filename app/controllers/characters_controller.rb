class CharactersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
    @classes = Classe.all
    @warriors_male = Warrior.where(gender: "male")
    @warriors_female = Warrior.where(gender: "female")
    @mages_male = Mage.where(gender:"male")
    @mages_female = Mage.where(gender:"female")
    @archers_male = Archer.where(gender:"male")
    @archers_female = Archer.where(gender:"female")
  end

  def create
    @character = current_user.characters.new(character_params)
    
    if @character.save
      # Start a new party with this character
      party = current_user.parties.create
  
      redirect_to game_map_path(party), notice: 'Party started successfully.'
    else
      render :new
    end
  end
  
  private
  
  def character_params
    params.require(:character).permit(:name, :image, :classe, :gender)
  end
end
