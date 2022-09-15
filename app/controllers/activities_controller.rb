class ActivitiesController < ApplicationController
  def index
    sql_query = []

    sql_query << "items.name ILIKE '#{params[:query]}'" if params[:query].present?
    sql_query << "age_group = '#{params[:age_group]}'" if params[:age_group].present?
    sql_query << "category_id = #{params[:category_id]}" if params[:category_id].present?

    if params[:query].present?
      @activities = Activity.joins(activity_items: :item).where(sql_query.join(" AND "))
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
    @wishlist = Wishlist.new
    @wishlist_exists = !(Wishlist.where(activity: @activity, user: current_user) == [])
  end

  def edit
  end
end
