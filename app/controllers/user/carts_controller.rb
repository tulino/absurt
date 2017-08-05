class User::CartsController < User:: ApplicationController
  before_action :get_cart, only: %i[show destroy]

  def create
    @cart = Cart.new(cart_params)
    @cart.save
  end

  def show
    @cart_items = CartItem.where(cart_id: @cart.id)
    @cart_items.each { |ci| @cart.total_price += ci.product.price }
  end

  private
  def get_cart
    @cart = Cart.find(params[:id])
  end
  def cart_params
    params.require(:cart).permit(:user_id)
  end
end
