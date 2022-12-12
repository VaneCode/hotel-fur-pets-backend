require 'rails_helper'

RSpec.describe Booking, type: :model do
  before(:each) do
    @user = User.new(name: 'Samantha Woods', photo: 'https/picture.com', phone: '1234', email: 'sam@outlook.com', password: 'password',
                     password_confirmation: 'password')
    @hotel = Hotel.create(name: 'Hounds Lounge', location: 'Arkansas, United States', rating: 4, price: 39.99, photo: 'https://www.houndslounge.com/wp-content/uploads/2019/05/Owner-Mandy-holding-clients-pet-at-front-desk.jpg',
                          description: 'Overnight stays are full of fun at Hounds Lounge. All furry guests get their own private luxury suites, complete with fresh food and water bowls, and a very trendy raised bed!')
    @booking = Booking.create(checking_in: '20-04-2021', checking_out: '25-04-2021', user_id: @user.id, hotel_id: @hotel.id, animal_type: 'dog', animal_name: 'Max')
  end

  context 'Test booking validations' do
    it 'checking in should be present' do
      @booking.checking_in = nil
      expect(@booking).to_not be_valid
    end

    it 'checking out should be present' do
      @booking.checking_out = nil
      expect(@booking).to_not be_valid
    end

    it 'animal type in should be present' do
      @booking.animal_type = nil
      expect(@booking).to_not be_valid
    end

    it 'animal name in should be present' do
      @booking.animal_name = nil
      expect(@booking).to_not be_valid
    end
  end
end
