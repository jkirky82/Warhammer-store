class ListingsController < ApplicationController
  #Set before action to authenticate_user before accessing the form
  before_action :authenticate_user!

  #before_action :set_listing, only: %i[ show ]
  before_action :set_listing, only: [ :show, :update, :edit, :destroy ]


  def index
    @listings = Listing.all
  end

  def show

  end

  def new 
    @listing = Listing.new
  end

  def edit
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing , notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @listing  }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  def update 
  end
  
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: "Listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private


  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :description, :price, :armyfaction_id, :user_id, :paint_id, :condition_id)
  end
end
