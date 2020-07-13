class DailyActivity < ApplicationRecord
  belongs_to :care_giver
  belongs_to :child
end
