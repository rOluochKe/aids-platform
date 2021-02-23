require 'rails_helper'

RSpec.describe '/volunteers', type: :request do
  let(:valid_attributes) do
    {
      'id' => '1',
      'request_type' => 'Need',
      'description' => 'Technology can be used in many ways',
      'location' => 'Nairobi',
      'longitude' => '1.2921',
      'latitude' => '36.8219',
      'status' => 'Fulfilled',
      'request_due_date' => 'Fri, 18 Oct 2021'
    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      volunteer = Volunteer.new(valid_attributes)
      volunteer.save
      get volunteers_url
      expect(response).to be_successful
    end
  end

  describe 'GET /create' do
    it 'renders a successful response' do
      get volunteers_url
      expect(response).to be_successful
    end
  end

  describe 'GET /update' do
    it 'renders a successful response' do
      volunteer = Volunteer.new(valid_attributes)
      volunteer.save
      get volunteers_url
      expect(response).to be_successful
    end
  end
end
