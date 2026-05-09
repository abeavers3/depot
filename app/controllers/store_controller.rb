class StoreController < ApplicationController
  include CurrentCart

  before_action :set_cart

  def index
    @categories = Category.order(:name)

    if params[:category_id].present?
      @selected_category = Category.find_by(id: params[:category_id])
      @products = Product.where(category_id: params[:category_id]).order(:title)
    else
      @products = Product.order(:title)
    end
  end
end
