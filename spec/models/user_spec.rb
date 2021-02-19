require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  it { should have_many(:appointments).dependent(:destroy) }

  # Validation tests
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }

  it { should validate_presence_of(:password_digest) }
  it { should have_secure_password }

  it { should validate_length_of(:username).is_at_least(3) }
  it { should validate_length_of(:username).is_at_most(30) }

  it { should validate_length_of(:password_digest).is_at_least(6) }
end
