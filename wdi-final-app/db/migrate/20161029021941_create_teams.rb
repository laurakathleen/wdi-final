class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.integer :months
      t.string :start_location
      t.string :end_location
      t.integer :goal
      t.string :name
      t.string :branch

      t.timestamps
    end
  end
end
