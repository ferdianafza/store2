class HomesController < ApplicationController
    before_action :set_product, only: [:show]

  def index
    @products = Product.all
  end

  def show
    @comment = Comment.new(product_id: @product.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
  end

end
