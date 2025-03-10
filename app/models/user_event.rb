class UserEvent < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  belongs_to :attender, class_name: "User", foreign_key: "attender_id"
  belongs_to :created
end
