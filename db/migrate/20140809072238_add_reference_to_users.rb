class AddReferenceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :meter_id, :integer
  end
end
