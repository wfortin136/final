class FightsController < ApplicationController
  
  def index
    @fights = Fight.all
  end

  def create
    @fight = Fight.new
    scorecard = Scorecard.new
    scorecard.save
    
    @fight.scorecard_id = scorecard.id
    @fight.fightcard_id = params[:fightcard_id]
    scorecard.fighter_1_id = params[:fighter1_id]
    scorecard.fighter_2_id = params[:fighter2_id]
    @fight.fight_num = params[:fight_num]
    @fight.card_level= params[:card_level]
    @fight.weightclass= params[:weightclass]
    @fight.method = params[:method]
    @fight.fighttime_db(params[:round].to_i, params[:min].to_i, params[:sec].to_i)
    scorecard.save

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
    fight = Fight.find_by(:id => params["id"])
    fight.delete
    redirect_to "/fights"
  end
  
  def new
    @fight = Fight.new
  end

end
