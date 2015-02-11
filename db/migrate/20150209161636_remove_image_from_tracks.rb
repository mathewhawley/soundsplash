class RemoveImageFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :image, :text
  end
end
