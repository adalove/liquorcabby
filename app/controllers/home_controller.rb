class HomeController < ApplicationController
  def index
    user = User.new
    @cocktail = Cocktail.all.first
  end
end