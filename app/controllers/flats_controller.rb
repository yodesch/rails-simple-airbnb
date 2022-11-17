class FlatsController < ApplicationController

  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index

    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end


  def show
  end

  def edit
  end

  def create
    @flat = Flat.new(flat_params)
      if @flat.save
      redirect_to flat_path(@flat)
      else
        render 'new'
      end
  end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  def search
    if params[:query].blank?
      redirect_to flats_path and return
    else
      @parameter = params[:query].downcase
      @results = Flat.all.where('lower(name) LIKE :search', search: "%#{@parameter}%")
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
