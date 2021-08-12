class ListingsController < ApplicationController
  #Set before action to authenticate_user before accessing the form
  before_action :authenticate_user!

  #before_action :set_listing, only: %i[ show ]
  before_action :set_listing, only: [ :show, :update, :edit, :destroy ]

  #grabs all the data from the listin table and sends it to the index page
  def index
    @listings = Listing.all
  end

  #Sets up stripe payment for the button on the show page 
  def show
    stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      client_reference_id: current_user ? current_user.id : nil,
      customer_email: current_user ? current_user.email : nil,

      line_items: [{
        price_data: {
          unit_amount: @listing.price.to_i * 100,
          currency: 'aud',
          product_data: {
            name: @listing.title,
            description: @listing.description
          },
        },
        quantity: 1
      }],
      payment_intent_data: {
        metadata: {
          listing_id: @listing.id,
          user_id: current_user ? current_user.id : nil
        }
      },
      mode: 'payment',
      success_url: "#{root_url}payments/success?listingId=#{@listing.id}",
      cancel_url: "#{root_url}listings"
    )

    @session_id = stripe_session.id
  end

  def new 
    @listing = Listing.new
  end

  def edit
  end

  #creates a new listing 
  def create
    #The data will come from the listing_params method
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

  #Has the same function as in create, but is used to update all columns in a row 
  def update 
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: "Listing was successfully updated." }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end
  
  #Will destory a row in the listing table 
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: "Listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # sets the listing based on the ID 
  def set_listing
    @listing = Listing.find(params[:id])
  end

  #This is where the hard paramaitars are definded
  def listing_params
    params.require(:listing).permit(:title, :description, :price, :armyfaction_id, :user_id, :paint_id, :condition_id, :picture)
  end
end
