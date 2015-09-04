class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :name
      t.boolean :available

      t.timestamps null: false
    end
  end
end
