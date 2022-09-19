class HeartsController < ApplicationController
  before_action :set_heart, only: %i[ show edit update destroy ]

  # GET /hearts or /hearts.json
  def index
    @hearts = current_user.hearts.includes(:activity)
  end

  # GET /hearts/1 or /hearts/1.json
  def show
  end

  # GET /hearts/new
  def new
    @heart = Heart.new
  end

  # GET /hearts/1/edit
  def edit
  end

  # POST /hearts or /hearts.json
  def create
    @activity = Activity.find_by_id(params[:activity_id])
    @heart = Heart.find_by(activity: @activity, user: current_user)

    respond_to do |format|
      if @heart
        @heart.destroy
        format.json { render json: { heart: nil } }
      else
        @heart = Heart.new(user: current_user, activity: @activity)
        @heart.save
        format.json { render json: { heart: @heart } }
      end
      format.html { redirect_to activity_path(@activity) }
    end
  end

  # PATCH/PUT /hearts/1 or /hearts/1.json
  def update
    @heart = Heart.where(activity: Activity.find(params[:activity]), user: current_user)
    if @heart == []
      Heart.create(activity: Activity.find(params[:activity]), user: current_user)
      @heart_exists = true
    else
      @heart.destroy_all
      @heart_exists = false
    end

    respond_to do |format|
      if @heart.update(heart_params)
        format.html do
          redirect_to heart_url(@heart),
                      notice: "heart was successfully updated."
        end
        format.json { render :show, status: :ok, location: @heart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @heart.errors, status: :unprocessable_entity
        end

      end
    end
  end

  # DELETE /hearts/1 or /hearts/1.json
  def destroy
    @heart.destroy

    respond_to do |format|
      format.html do
        redirect_to heart_url,
                    notice: "heart was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_heart
    @heart = Heart.find(params[:id])
  end
end
