# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  reported   :boolean
#  available  :boolean
#  banned     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :users_exchanges
  has_many :exchanges, through: :users_exchanges
end
