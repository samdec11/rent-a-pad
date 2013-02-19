
class User < ActiveRecord::Base
  attr_accessible :name, :password, :age, :gender, :email, :max_rent, :image, :hood_ids
  has_and_belongs_to_many :hoods
end
