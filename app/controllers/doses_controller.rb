class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all()
    @dose = Dose.new()
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to(:back)
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
