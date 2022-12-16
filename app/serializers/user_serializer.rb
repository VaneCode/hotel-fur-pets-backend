class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :phone, :email, :password, :role, :created_at
end
