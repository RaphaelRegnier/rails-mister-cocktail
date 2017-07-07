class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all()
    @dose = Dose.new()
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient])
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save
    redirect_to cocktails_url
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
