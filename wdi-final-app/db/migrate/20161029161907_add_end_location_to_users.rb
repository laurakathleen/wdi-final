class AddEndLocationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :end_location, :string
  end
end
