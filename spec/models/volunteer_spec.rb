require 'rails_helper'

RSpec.describe Volunteer, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:request_type) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:longitude) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:request_due_date) }

  it 'must have at least 10 chars in description' do
    volunteer = Volunteer.create(
      request_type: 'John',
      description: '',
      location: 36.8219,
      longitude: 1.2921,
      status: 'Fulfilled',
      request_due_date: 'Fri, 18 Oct 2021'
    )

    volunteer.description = 'a' * 8
    expect(volunteer).not_to be_valid
  end

  it 'must have fewer than 300 chars in description' do
    volunteer = Volunteer.create(
      request_type: 'John',
      description: '',
      location: 36.8219,
      longitude: 1.2921,
      status: 'Fulfilled',
      request_due_date: 'Fri, 18 Oct 2021'
    )

    volunteer.description = 'a' * 302
    expect(volunteer).not_to be_valid
  end
end
