class ActivitiesController < ApplicationController
  def index
    sql_query = []

    if params[:query].present?
      sql_query << "items.name ILIKE '#{params[:query]}'"
    end
    if params[:age_group].present?
      sql_query << "age_group = '#{params[:age_group]}'"
    end
    if params[:category_id].present?
      sql_query << "category_id = #{params[:category_id]}"
    end

    if params[:query].present?
      @activities =
        Activity.joins(activity_items: :item).where(sql_query.join(" AND "))
      if @activities.empty?
        @noresults =
          "No matching results. Search again or check out these recommended activities:"
        @activities = Activity.all
      end
    else
      @activities = Activity.where(sql_query.join(" AND "))
    end

    @category = Category.find(params[:category_id]).name if params[
      :category_id
    ].present?

    @age_group = params[:age_group].to_s
  end

  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
    @wishlist = Wishlist.find_by(activity: @activity, user: current_user)
    @heart = Heart.find_by(activity: @activity, user: current_user)
    @reviews = Review.where(activity: @activity).order(created_at: :desc)
  end

  def edit
  end
end
