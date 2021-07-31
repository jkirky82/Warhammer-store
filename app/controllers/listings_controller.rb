class ListingsController < ApplicationController
  #Set before action to authenticate_user before accessing the form
  before_action :authenticate_user!, except: [:index, :show]

  before_action :set_listing, only: %i[ show ]

  #Set before ation to allow signed in users to update, edit and delete listings
  before_action :set_user_listing, only: [ :update, :edit, :destroy ]



  def index
    @listings = Listing.all
    p @listings
  end

  def show
  end

  def new 
    @listings = Listing.new
  end

  def edit
  end

  def create
    @listing = current_user.listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: "Listing was successfully created." }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end

  end

  def update 
  end
  
  def destroy
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :description, :price, :availability)
  end
end
