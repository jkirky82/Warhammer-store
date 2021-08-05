module ListingsHelper
  def render_buy_button
      puts "has_profile"
      button = "<button data-stripe=\"payment\" class=\"btn btn-primary p-3\">Buy: $#{@listing.price}</button>"
      return button.html_safe
  end
end
