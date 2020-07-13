class Comment < ApplicationRecord
  belongs_to :care_giver
  belongs_to :daily_activity
end
