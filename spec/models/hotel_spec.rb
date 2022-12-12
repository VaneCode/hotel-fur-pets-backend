require 'rails_helper'

RSpec.describe Hotel, type: :model do
  before(:each) do
    @hotel = Hotel.create(name: 'Hounds Lounge', location: 'Arkansas, United States', rating: 4, price: 39.99, photo: 'https://www.houndslounge.com/wp-content/uploads/2019/05/Owner-Mandy-holding-clients-pet-at-front-desk.jpg',
                          description: 'Overnight stays are full of fun at Hounds Lounge. All furry guests get their own private luxury suites, complete with fresh food and water bowls, and a very trendy raised bed!')
  end

  context 'Test hotel validations' do
    it 'is valid with valid attributes' do
      expect(@hotel).to be_valid
    end

    it 'name should be present' do
      @hotel.name = nil
      expect(@hotel).to_not be_valid
    end

    it 'location should be present' do
      @hotel.location = nil
      expect(@hotel).to_not be_valid
    end

    it 'description should be present' do
      @hotel.description = nil
      expect(@hotel).to_not be_valid
    end

    it 'rating should be present' do
      @hotel.rating = nil
      expect(@hotel).to_not be_valid
    end

    it 'photo should be present' do
      @hotel.photo = nil
      expect(@hotel).to_not be_valid
    end

    it 'price should be present' do
      @hotel.price = nil
      expect(@hotel).to_not be_valid
    end
  end
end
