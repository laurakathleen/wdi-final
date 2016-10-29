class AddBranchToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :branch, :string
  end
end
