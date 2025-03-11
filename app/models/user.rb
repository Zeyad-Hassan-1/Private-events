class User < ApplicationRecord
  # Associations
  has_many :created_user_events, class_name: "UserEvent", foreign_key: "creator_id"
  has_many :attended_user_events, class_name: "UserEvent", foreign_key: "attender_id"

  has_many :created_events, through: :created_user_events, source: :event
  has_many :attended_events, through: :attended_user_events, source: :event

  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
