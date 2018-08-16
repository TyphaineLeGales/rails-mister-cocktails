class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
      allowed_params = params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
    @dose = Dose.new(allowed_params)
     @cocktail = Cocktail.find(params[:cocktail_id])
     @dose.cocktail_id = @cocktail.id
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:cocktail_id])
    @dose.destroy
  end
end
