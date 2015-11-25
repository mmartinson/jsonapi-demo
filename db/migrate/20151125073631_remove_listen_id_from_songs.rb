class RemoveListenIdFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :listen_id
  end
end
