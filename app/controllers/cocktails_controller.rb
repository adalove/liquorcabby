class CocktailsController < ApplicationController
   before_filter :check_if_logged_in
  def index
    @cocktails = Cocktail.order(:name)
  end

  def show
    @cocktail = Cocktail.find( params[:id])
  end

  def new
    @cocktail = Cocktail.new
    @ingredients = Ingredient.all.map(&:name)
  end

  def create
    @cocktail = Cocktail.new( params[:cocktail] )
    @cocktail.created_by = 1 # SHOULD BE USER ID

    params[:tags].split(', ').each do |ingred|
      @cocktail.ingredients << Ingredient.find_or_create_by_name( ingred )
    end

    @cocktail.save
    @cocktails = Cocktail.order(:name)
  end

  def favorite
    cocktail = Cocktail.find(params[:id])
    if @auth.cocktails.include?(cocktail)
      # cocktail.rank -= 1 if cocktail.created_by != @auth.id
      @auth.cocktails.delete(cocktail)
    else
      # cocktail.rank += 1 if cocktail.created_by != @auth.id
      @auth.cocktails << cocktail
    end
  end
end