class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all.sample(25)
  end

  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
  end
end
