# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  first_name          :string
#  last_name           :string
#  email               :string
#  password_digest     :string
#  language            :string
#  available           :boolean
#  current_exchange_id :integer
#  reported            :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
end
