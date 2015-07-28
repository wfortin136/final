class FightsController < ApplicationController
  
  def index
    @fights = Fight.all
  end

  def create
  end

  def show
    @fight = Fight.find_by(:id => params["id"])
  end

  def update
  end

  def destroy
  end
  
  def new
  end

  def edit
  end

end
