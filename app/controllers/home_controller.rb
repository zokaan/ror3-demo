class HomeController < ApplicationController
  def index
    @welcome_message = 'Ruby on Rails for beginners 2017'
    @msg = 'Web shop demo application'
    @broj = Product.count
  end

  def test
    # puts params.inspect
  end

  def products
  @products = Product.order("#{sort_column} #{sort_direction}")
    # @products = Product.all
  end

  def about

  end

  private
  def sortable_columns
    ["name", "price"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "price"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end



end
