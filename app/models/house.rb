class House < ApplicationRecord
  has_many :appointments, dependent: :destroy

  validates_presence_of :house_type, :number_of_rooms, :location, :price, :built_date, :description, :image
end
