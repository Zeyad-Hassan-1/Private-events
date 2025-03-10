class User < ApplicationRecord
  has_many :user_events
  has_many :created_events, through: :user_events, source: :event
  has_many :attended_events, through: :user_events, source: :event

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
