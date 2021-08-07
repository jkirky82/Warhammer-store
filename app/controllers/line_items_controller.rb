class LineItemsController < ApplicationController

  def create
    # Find associated product and current cart
    chosen_listing = Listing.find(params[:listing_id])
    current_cart = @current_cart
  
    # If cart already has this product then find the relevant line_item and iterate quantity otherwise create a new line_item for this product
    if current_cart.listings.include?(chosen_listing)
      # Find the line_item with the chosen_product
      @line_item = current_cart.line_items.find_by(:listing_id => chosen_listing)
      # Iterate the line_item's quantity by one
      @line_item.quantity += 1
    else
      @line_item = LineItem.new
      @line_item.cart = current_cart
      @line_item.product = chosen_listing
    end
  
    # Save and redirect to cart show path
    @line_item.save
    redirect_to cart_path(current_cart)
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to cart_path(@current_cart)
  end  
  
  private
    def line_item_params
      params.require(:line_item).permit(:quantity,:listing_id, :cart_id)
    end
end
