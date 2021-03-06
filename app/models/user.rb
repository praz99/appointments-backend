class User < ApplicationRecord
  has_secure_password

  has_many :appointments, dependent: :destroy
  validates :username, presence: true, uniqueness: true, length: { in: 3..30 }
  validates :password, presence: true, length: { minimum: 6 }
end
