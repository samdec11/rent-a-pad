class AddHoodsUsersTable < ActiveRecord::Migration
  def change
    create_join_table(:hoods, :users)
  end
end
