class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :date, presence: true

  def self.user_new_appointment(user, house_id, date)
    user_appointments = user.appointments
    user_appointments.new(house_id: house_id, date: date)
  end
end
