class FightsController < ApplicationController
  
  def index
  
    if params["keyword"].present?
      term = params["keyword"].strip
    else
      @fights = Fight.all
    end
  end

  def create
    @fight = Fight.new
    scorecard = Scorecard.new
    scorecard.save
    judgescore1 = Judgescore.new
    judgescore2 = Judgescore.new
    judgescore3 = Judgescore.new
    judgescore1.save
    judgescore2.save
    judgescore3.save
    scorecard.j_1_score_id = judgescore1.id
    scorecard.j_2_score_id = judgescore2.id
    scorecard.j_3_score_id = judgescore3.id

    @fight.scorecard_id = scorecard.id
    @fight.fightcard_id = params[:fightcard_id]
    scorecard.fighter_1_id = params[:fighter1_id]
    scorecard.fighter_2_id = params[:fighter2_id]
    @fight.fight_num = params[:fight_num]
    @fight.card_level= params[:card_level]
    @fight.weightclass_id= params[:weightclass]
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
    @fightcard = @fight.fightcard
  end

  def update
    fight = Fight.find_by(:id => params["id"])
    fight.fightcard_id = params[:fightcard_id]
    scorecard= Scorecard.find_by(:id =>fight.scorecard_id)
    scorecard.fighter_1_id = params[:fighter1_id]
    scorecard.fighter_2_id = params[:fighter2_id]
    fight.fight_num = params[:fight_num]
    fight.card_level= params[:card_level]
    fight.weightclass_id= params[:weightclass]
    fight.method = params[:method]
  
    scorecard.save
    fight.save
    redirect_to root_url
  end

  def destroy
    fight = Fight.find_by(:id => params["id"])
    scorecard = fight.scorecard
    fight.score_1.delete
    fight.score_2.delete
    fight.score_3.delete

    fight.scorecard.delete
    fight.delete
    redirect_to "/fights"
  end
  
  def new
    @fightcard = Fightcard.find_by(:id => params["fcid"])
    @fight = Fight.new
  end

end
