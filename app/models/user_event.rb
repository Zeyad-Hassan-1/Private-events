class UserEvent < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  belongs_to :attender, class_name: "User", foreign_key: "attender_id", optional: true
  belongs_to :event

  validates :creator_id, presence: true
  validates :event_id, presence: true
end
