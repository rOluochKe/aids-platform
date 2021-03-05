class Message < ApplicationRecord
  belongs_to :volunteer
  belongs_to :user
  validates_presence_of :body, :volunteer_id, :user_id
end
