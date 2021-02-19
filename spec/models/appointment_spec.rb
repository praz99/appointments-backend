require 'rails_helper'

RSpec.describe Appointment, type: :model do
  # Association test
  it { should belong_to(:house) }
  it { should belong_to(:user) }

  # Validation test
  it { should validate_presence_of(:date) }
end
