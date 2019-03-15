class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :surname
      t.string :address

      t.timestamps
    end
  end
end
