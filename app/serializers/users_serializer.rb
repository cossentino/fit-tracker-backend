class UsersSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :username

end