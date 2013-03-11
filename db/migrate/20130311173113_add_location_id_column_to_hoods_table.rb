class AddLocationIdColumnToHoodsTable < ActiveRecord::Migration
  def change
    add_column :hoods, :location_id, :integer
  end
end
