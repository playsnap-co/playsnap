class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :design, :about_playsnap ]

  def home
    @objects = []
    if params[:query].present?
      sql_query = "object ILIKE :query"

      activities = Activity.where(sql_query, query: "%#{params[:query]}%")
      @objects = activities.pluck(:object).uniq


    else
      @objects = Activity.all.pluck(:object).uniq
    end
    respond_to do |format|
      format.html
      format.text { render partial: "pages/list", locals: {objects: @objects}, formats: [:html] }
    end
  end

  def design
  end

  def about_playsnap
  end
end
