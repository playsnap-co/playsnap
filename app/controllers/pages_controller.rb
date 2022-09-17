class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :design, :about_playsnap ]

  def home
    @items = []
    if params[:query].present?
      sql_query = "name ILIKE :query"

      @items = Item.where(sql_query, query: "#{params[:query]}%").first(5)

    end
    respond_to do |format|
      format.html
      format.text { render partial: "pages/list", locals: {items: @items}, formats: [:html] }
    end
  end

  def design
  end

  def about_playsnap
  end
end
