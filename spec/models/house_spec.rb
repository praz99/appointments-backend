require 'rails_helper'

RSpec.describe House, type: :model do
  # Association test
  it { should have_many(:appointments).dependent(:destroy) }

  # Validation tests
  it { should validate_presence_of(:house_type) }
  it { should validate_presence_of(:number_of_rooms) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:built_date) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:image) }
end
