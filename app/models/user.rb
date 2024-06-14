class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :rentals

  enum role: { user: 0, manager: 1, admin: 2 }

  validates :first_name, :last_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true
end
