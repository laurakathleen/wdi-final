class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.datetime :date
      t.integer :mileage

      t.timestamps
    end
  end
end
