# == Schema Information
#
# Table name: users_exchanges
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  exchange_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class UsersExchange < ApplicationRecord
  belongs_to :user
  belongs_to :exchange
end
