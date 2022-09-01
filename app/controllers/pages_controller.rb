class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :design, :about_playsnap ]

  def home
  end

  def design
  end

  def about_playsnap
  end
end
