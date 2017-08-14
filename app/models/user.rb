# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  email           :string
#  reported        :boolean
#  available       :boolean
#  banned          :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord
  has_many :users_exchanges
  has_many :exchanges, through: :users_exchanges

  validates :first_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true, on: :create
  validates :password, presence: true, on: :create

  has_secure_password
end
