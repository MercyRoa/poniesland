class RemovePonyUsernameFromPonies < ActiveRecord::Migration
  def up
    remove_column :ponies, :pony_username
  end

  def down
    add_column :ponies, :pony_username, :string
  end
end
