class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :full_name

      t.timestamps null: false
    end
  end
end
