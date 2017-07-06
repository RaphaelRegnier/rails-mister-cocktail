class CocktailsController < ApplicationController
before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_cocktail
  @cocktail = Cocktail.find(params[:id])
  end

def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
