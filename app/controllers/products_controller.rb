class ProductsController < ApplicationController
  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  before_action :signed_in_user, only: [:create, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def edit
    if current_user != product.user
      redirect_to category_product_url(category, product)
      flash[:error] = 'You are not allowed to edit this product.'
    end
  end

  def create
    self.product = Product.new(product_params)
    if product.save
      category.products << product
      redirect_to category_product_url(category, product),
                  notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if current_user == product.user
      if self.product.update(product_params)
        redirect_to category_product_url(category, product),
                    notice: 'Product was successfully updated.'
      else
        render action: 'edit'
      end
    else
      redirect_to category_product_url(category, product)
      flash[:error] = 'You are not allowed to edit this product.'
    end
  end

  # DELETE /products/1
  def destroy
    product.destroy
    redirect_to category_url(product.category),
                notice: 'Product was successfully destroyed.'
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id)
  end

  def signed_in_user
    redirect_to new_user_session_path,
                notice: "You are not logged in" unless user_signed_in?
  end

  def owner
    current_user != product.user
  end
end
