class Volunteer < ApplicationRecord
  validates_presence_of :request_type, :description, :location, :latitude, :longitude, :status, :request_due_date
  validates :description, length: { minimum: 10, maximum: 300 }
  validate :start_datetime_cannot_be_in_the_past

  belongs_to :user

  private

  def start_datetime_cannot_be_in_the_past
    errors.add(:request_due_date, "can't be in the past") if request_due_date.present? && request_due_date < Time.now
  end
end
