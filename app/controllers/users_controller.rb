class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :update, :edit, :destroy ]

  def index
  end

  def show
  end

  def edit  
  end
  
  #Upadtes all columns of all sers information in a row 
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "Listing was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  #Destory a user account and the profile as it is linked
  def destroy
    @user.profile.destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: "Listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private 

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :first_name , :last_name, :email, profile_attributes: [:street_address, :street_number, :suburb, :state, :postcode ])
  end
  

end
