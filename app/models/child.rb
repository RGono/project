class Child < ApplicationRecord
  has_many :daily_activities
  has_many :care_givers, through: :daily_activities
end
