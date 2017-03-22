class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.datetime :checked_out
      t.datetime :return_date
      t.integer :book_id

      t.timestamps
    end
  end
end
