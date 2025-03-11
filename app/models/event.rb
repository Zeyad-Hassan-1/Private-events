class Event < ApplicationRecord
  has_many :user_events, dependent: :destroy
  has_many :creators, through: :user_events, source: :creator
  has_many :attenders, through: :user_events, source: :attender

  scope :past, -> { where("date < ?", Date.current) }
  scope :upcoming, -> { where("date >= ?", Date.current) }
end
