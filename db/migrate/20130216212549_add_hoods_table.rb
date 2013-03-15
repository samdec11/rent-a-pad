class AddHoodsTable < ActiveRecord::Migration
  def change
    create_table :hoods do |t|
      t.string :name
      t.text :image
      t.integer :location_id
      t.timestamps
    end
  end
end
