class AddReferenceToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :user_id, :integer
  end
end
