class HomesController < ApplicationController
    before_action :set_product, only: [:show]

  def index
    @products = Product.order(created_at: :desc).limit(6)
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
