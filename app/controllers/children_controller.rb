class ChildrenController < ApplicationController
  before_action :set_child, only: %i[show edit update destroy]

  # GET /children or /children.json
  def index
    # @children = policy_scope(Child)
  end

  # GET /children/1 or /children/1.json
  def show
    # @child.user = current_user
    # authorize @child
  end

  # GET /children/new
  def new
    @child = Child.new
    # authorize @child
  end

  # GET /children/1/edit
  def edit
    # authorize @child
  end

  # POST /children or /children.json
  def create
    @child = Child.new(child_params)
    @child.user = current_user
    # authorize @child

    respond_to do |format|
      if @child.save
        format.html do
          redirect_to child_url(@child),
                      notice: "Child was successfully created."
        end
        format.json { render :show, status: :created, location: @child }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @child.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /children/1 or /children/1.json
  def update
    # authorize @child
    respond_to do |format|
      if @child.update(child_params)
        format.html do
          redirect_to child_url(@child),
                      notice: "Child was successfully updated."
        end
        format.json { render :show, status: :ok, location: @child }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @child.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /children/1 or /children/1.json
  def destroy
    # authorize @child
    @child.destroy

    respond_to do |format|
      format.html do
        redirect_to children_url, notice: "Child was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_child
    @child = Child.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def child_params
    params.require(:child).permit(:name, :age, :gender)
  end
end
