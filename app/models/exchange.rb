# == Schema Information
#
# Table name: exchanges
#
#  id             :integer          not null, primary key
#  first_user_id  :integer
#  second_user_id :integer
#  last_sent_time :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Exchange < ApplicationRecord
  has_many :letters
  has_many :users_exchanges
  has_many :users, through: :users_exchanges
end
