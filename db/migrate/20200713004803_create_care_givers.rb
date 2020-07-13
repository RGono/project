class CreateCareGivers < ActiveRecord::Migration[5.2]
  def change
    create_table :care_givers do |t|
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end