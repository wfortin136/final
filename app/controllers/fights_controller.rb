class FightsController < ApplicationController
  
  def index
    @fights = Fight.all
  end

  def create
    @fight = Fight.new
    @fight.fightcard_id = params[:fightcard_id]
    #@fight.fighter_1.id = params[:fighter1_id]
    #@fight.fighter_2.id = params[:fighter2_id]
    @fight.fight_num = params[:fight_num]
    @fight.card_level= params[:card_level]
    @fight.weightclass= params[:weightclass]
    @fight.method = params[:method]

    if @fight.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @fight = Fight.find_by(:id => params["id"])
  end
  
  def edit
    @fight = Fight.find_by(:id => params["id"])
  end

  def update
    fight = Fight.find_by(:id => params["id"])
    fight.fightcard_id = params[:fightcard_id]
    #fight.fighter_1.id = params[:fighter1_id]
    #fight.fighter_2.id = params[:fighter2_id]
    fight.fight_num = params[:fight_num]
    fight.card_level= params[:card_level]
    fight.weightclass= params[:weightclass]
    fight.method = params[:method]
   
    fight.save
    redirect_to root_url
  end

  def destroy
    #fight = Fight.find_by(:id => params["id"])
    #fight.delete
    #redirect_to "/movies"
  end
  
  def new
    @fight = Fight.new
  end

end
