class AddUploadedToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :uploaded, :boolean, default: false
  end
end
