class CreateDailyActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_activities do |t|
      t.datetime :date
      t.string :location
      t.string :daily_log
      t.belongs_to :care_giver, foreign_key: true
      t.belongs_to :child, foreign_key: true

      t.timestamps
    end
  end
end
