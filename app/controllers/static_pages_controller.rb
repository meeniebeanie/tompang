class StaticPagesController < ApplicationController
  def home
    @products = Product.all
  end

  def help
  end

  def contact_us
  end

  def about
  end
end
