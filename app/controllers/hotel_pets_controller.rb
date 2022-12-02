class HotelPetsController < ApplicationController
  before_action :set_hotel_pet, only: %i[show update destroy]

  # GET /hotel_pets
  def index
    @hotel_pets = HotelPet.all

    render json: @hotel_pets
  end

  # GET /hotel_pets/1
  def show
    render json: @hotel_pet
  end

  # POST /hotel_pets
  def create
    @hotel_pet = HotelPet.new(hotel_pet_params)

    if @hotel_pet.save
      render json: @hotel_pet, status: :created, location: @hotel_pet
    else
      render json: @hotel_pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hotel_pets/1
  def update
    if @hotel_pet.update(hotel_pet_params)
      render json: @hotel_pet
    else
      render json: @hotel_pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hotel_pets/1
  def destroy
    @hotel_pet.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hotel_pet
    @hotel_pet = HotelPet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def hotel_pet_params
    params.require(:hotel_pet).permit(:name, :address, :rating, :bio, :price, :continent)
  end
end
