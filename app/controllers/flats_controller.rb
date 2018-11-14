class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]
  def index
    @flats = Flat.all
  end

  def show; end

  def new
    @flat = Flat.new
  end

  def create
    redirect_to flat_path(Flat.create!(flat_params))
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :description, :address,
                                 :price_per_night, :number_of_guests)
  end
end
