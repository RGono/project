class CareGiver < ApplicationRecord
  has_many :daily_activities
  has_many :children, through: :daily_activities
  
  has_many :comments
  has_many :commented, through: :comments, source: :daily_activity
  
  has_secure_password
end
