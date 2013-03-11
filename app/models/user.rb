# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  name            :string(255)
#  age             :integer
#  gender          :string(255)
#  email           :string(255)
#  image           :text
#  description     :text
#  likes           :text
#  dislikes        :text
#  pets            :string(255)
#  roommate        :text
#  max_rent        :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#


class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :username, :password, :password_confirmation, :name, :age, :gender, :email, :image, :description, :likes, :dislikes, :pets, :roommate, :max_rent
  serialize :roommate, Hash
  has_and_belongs_to_many :hoods
  validates :name, :presence => true, :length => {:minimum => 2}
  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true
  validates :email, :presence => true, :length => {:minimum => 2}
end
