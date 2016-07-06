class StoreController < ApplicationController
  before_filter :increment_index_access_counter
  
  def index
    @products = Product.order(:title)   
  end

  def increment_index_access_counter
    if session[:counter].nil?
      session[:counter] = 0
      @increment_counter =  session[:counter]
    else
      session[:counter] += 1
      @increment_counter = session[:counter]
    end
  end
end
