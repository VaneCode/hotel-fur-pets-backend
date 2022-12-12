require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'Samantha Woods', photo: 'https/picture.com', phone: '1234', email: 'sam@outlook.com', password: 'password',
             password_confirmation: 'password')
  end

  before { subject.save }

  context 'Test user validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'phone should be present' do
      subject.phone = nil
      expect(subject).to_not be_valid
    end

    it 'email should be present' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'email should be present' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end

  context 'Test user methods' do
    it 'user is not the admin the method admin should be false' do
      user = User.new(name: 'Samantha Woods', photo: 'https/picture.com', phone: '1234', email: 'sam@outlook.com', password: 'password',
                      password_confirmation: 'password')
      admin = user.admin?
      expect(admin).to be false
    end

    it 'user is the admin the method admin should be true' do
      user = User.new(name: 'Samantha Woods', photo: 'https/picture.com', phone: '1234', email: 'sam@outlook.com', password: 'password',
                      password_confirmation: 'password', role: 'admin')
      admin = user.admin?
      expect(admin).to be true
    end
  end
end
