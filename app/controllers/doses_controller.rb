class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
      allowed_params = params.require(:doses).permit(:description, :ingredient_id, :cocktail_id)
    @dose = Dose.new(allowed_params)
    if @dose.save
      redirect_to dose_path(@cocktail)
    else
      render :new
    end

  end

  def destroy
  end
end
