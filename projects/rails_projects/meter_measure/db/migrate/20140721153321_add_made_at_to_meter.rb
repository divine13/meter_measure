class AddMadeAtToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :made_at, :text
  end
end
