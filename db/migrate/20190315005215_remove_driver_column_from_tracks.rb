class RemoveDriverColumnFromTracks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tracks, :driver, :string
  end
end
