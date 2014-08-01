class AddDownloadedFieldToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :downloaded, :boolean, default: false
  end
end
