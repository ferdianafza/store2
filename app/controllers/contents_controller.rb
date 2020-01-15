class ContentsController < ApplicationController
  def show
    @comment = Comment.new(product_id: @product.id)
  end
end