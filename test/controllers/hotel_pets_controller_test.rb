require 'test_helper'

class HotelPetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotel_pet = hotel_pets(:one)
  end

  test 'should get index' do
    get hotel_pets_url, as: :json
    assert_response :success
  end

  test 'should create hotel_pet' do
    assert_difference('HotelPet.count') do
      post hotel_pets_url,
           params: { hotel_pet: { address: @hotel_pet.address, bio: @hotel_pet.bio, continent: @hotel_pet.continent, name: @hotel_pet.name, price: @hotel_pet.price, rating: @hotel_pet.rating } }, as: :json
    end

    assert_response :created
  end

  test 'should show hotel_pet' do
    get hotel_pet_url(@hotel_pet), as: :json
    assert_response :success
  end

  test 'should update hotel_pet' do
    patch hotel_pet_url(@hotel_pet),
          params: { hotel_pet: { address: @hotel_pet.address, bio: @hotel_pet.bio, continent: @hotel_pet.continent, name: @hotel_pet.name, price: @hotel_pet.price, rating: @hotel_pet.rating } }, as: :json
    assert_response :success
  end

  test 'should destroy hotel_pet' do
    assert_difference('HotelPet.count', -1) do
      delete hotel_pet_url(@hotel_pet), as: :json
    end

    assert_response :no_content
  end
end
