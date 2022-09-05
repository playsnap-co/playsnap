class ActivitiesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "object ILIKE :query AND age_group = :age_group AND category_id = :category_id"
      @activities = Activity.where(sql_query, query: "%#{params[:query]}%", age_group: "#{params[:age_group]}", category_id: "#{params[:category_id]}" )
      @category = Category.find(params[:category_id]).sort
    else
      @activities = Activity.all.sample(25)
    end
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
