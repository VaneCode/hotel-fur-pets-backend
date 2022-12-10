class UsersController < ApplicationController
  # before_action :authenticate_user!
  # skip_before_action :verify_authenticity_token
  def index
    render json: User.all, status: :ok
  end
  
end
