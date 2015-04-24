class RenameLocationIdColumnToPosition < ActiveRecord::Migration
  def change
    rename_column :hoods, :location_id, :position
  end
end
