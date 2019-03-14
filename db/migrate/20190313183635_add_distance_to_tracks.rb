class AddDistanceToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :distance, :integer
    add_column :tracks, :description, :string

    remove_column :tracks, :comment, :string
  end
end
