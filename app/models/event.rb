class Event < ApplicationRecord
  has_many :user_events, dependent: :destroy
  has_many :creators, through: :user_events, source: :creator
  has_many :attenders, through: :user_events, source: :attender
end
