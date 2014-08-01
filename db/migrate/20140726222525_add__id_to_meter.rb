class AddIdToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :_id, :integer
  end
end
