class WishlistsController < ApplicationController
  before_action :set_wishlist, only: %i[show edit update destroy]

  # GET /wishlists or /wishlists.json
  def index
    @wishlists = Wishlist.all
  end

  # GET /wishlists/1 or /wishlists/1.json
  def show
  end

  # GET /wishlists/new
  def new
    @wishlist = Wishlist.new
  end

  # GET /wishlists/1/edit
  def edit
  end

  # POST /wishlists or /wishlists.json
  def create
    @wishlist = Wishlist.new(wishlist_params)

    respond_to do |format|
      if @wishlist.save
        format.html do
          redirect_to wishlist_url(@wishlist),
                      notice: "Wishlist was successfully created."
        end
        format.json { render :show, status: :created, location: @wishlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @wishlist.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /wishlists/1 or /wishlists/1.json
  def update
    respond_to do |format|
      if @wishlist.update(wishlist_params)
        format.html do
          redirect_to wishlist_url(@wishlist),
                      notice: "Wishlist was successfully updated."
        end
        format.json { render :show, status: :ok, location: @wishlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @wishlist.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /wishlists/1 or /wishlists/1.json
  def destroy
    @wishlist.destroy

    respond_to do |format|
      format.html do
        redirect_to wishlists_url,
                    notice: "Wishlist was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def wishlist_params
    params.fetch(:wishlist, {})
  end
end
