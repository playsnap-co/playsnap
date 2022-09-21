class ReviewsController < ApplicationController
  before_action :set_activity, only: %i[show index new create]
  before_action :set_review, only: %i[show edit update destroy]

  # GET /reviews or /reviews.json
  def index
    # @reviews = policy_scope(Review)
    @reviews = Review.where(activity_id: params[:activity_id])
  end

  def show

  end

  # GET /reviews/new
  def new
    @review = Review.new
    # @review.user = current_user
    @review.activity = @activity
    # authorize @review
  end

  # GET /reviews/1/edit
  def edit
    if @review.user_id == current_user.id
      render 'edit'
    else
      redirect_to activity_path(@activity)
    end
    # authorize @review
  end

  # POST /reviews or /reviews.json
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.activity_id = @activity.id
    # authorize @review
    respond_to do |format|
      if @review.save!
        format.html do
          redirect_to activity_reviews_path(@activity, @review),
                      notice: "Review was successfully created."
        end
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @review.errors, status: :unprocessable_entity
        end
      end
    end
  end



  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    # authorize @review
    respond_to do |format|
      if @review.update(review_params)
        format.html do
          redirect_to review_url(@review),
                      notice: "Review was successfully updated."
        end
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @review.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    # authorize @review
    # @review = @current_user.reviews.find(params[:id])
    @review.destroy!

    respond_to do |format|
      format.html do
        redirect_to activity_reviews_url, notice: "Review was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

  # Only allow a list of trusted parameters through.
  def review_params
    params.require(:review).permit(:rating, :content, :user_id)
  end
end
