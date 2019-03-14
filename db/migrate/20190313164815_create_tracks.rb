class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :start
      t.string :destination
      t.string :driver
      t.string :car
      t.text :comment

      t.timestamps
    end
  end
end
