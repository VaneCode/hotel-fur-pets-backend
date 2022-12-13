class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :phone, :photo, :email, :password, :role, :created_at 
end
