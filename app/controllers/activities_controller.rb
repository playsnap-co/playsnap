class ActivitiesController < ApplicationController
  def index
    sql_query = []

    sql_query << "items.name ILIKE '#{params[:query]}'" if params[:query].present?
    sql_query << "age_group = '#{params[:age_group]}'" if params[:age_group].present?
    sql_query << "category_id = #{params[:category_id]}" if params[:category_id].present?

    if params[:query].present?
      @activities = Activity.joins(activity_items: :item).where(sql_query.join(" AND "))
      if @activities.empty?
         @noresults = "No matching results, search again!"
         @activities = Activity.all
      end
    else
      @activities = Activity.where(sql_query.join(" AND "))
    end

    @category = Category.find(params[:category_id]).name if params[:category_id].present?

    @age_group = params[:age_group].to_s

  end

  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
    @wishlist = Wishlist.find_by(activity: @activity, user: current_user)
    @heart = Heart.find_by(activity: @activity, user: current_user)
    @reviews = Review.where(activity: @activity, user: current_user).order("created_at DESC")
  end

  def edit
  end
end
