# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  subject    :string(255)
#  body       :text
#  user_id    :integer
#  contact_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :contact, :class_name => 'User', :inverse_of => :messages
end
