# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  password_digest :string(255)
#  name            :string(255)
#  age             :integer
#  gender          :string(255)
#  email           :string(255)
#  image           :text
#  description     :text
#  occupation      :string(255)
#  sociability     :integer
#  sleep_hours     :integer
#  is_smoker       :boolean
#  cooks           :string(255)
#  pets            :string(255)
#  roommate        :text
#  max_rent        :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#


class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :password, :password_confirmation, :name, :age, :gender, :email, :image, :description, :occupation, :sociability, :sleep_hours, :is_smoker, :pets, :roommate, :max_rent, :hood_ids
  serialize :roommate, Hash
  has_and_belongs_to_many :hoods
  has_many :messages
  has_many :contacts, :through => :messages
  validates :name, :presence => true, :length => {:minimum => 2}
  validates :email, :presence => true, :length => {:minimum => 2}

  def received_messages
    Message.where(:contact_id => self.id)
  end
end
