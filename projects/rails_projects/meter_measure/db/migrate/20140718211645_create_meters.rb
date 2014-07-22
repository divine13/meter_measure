class CreateMeters < ActiveRecord::Migration
  def change
    create_table :meters do |t|
      t.string :day
      t.string :time
      t.integer :reading
      t.string :note

      t.timestamps
    end
  end
end
