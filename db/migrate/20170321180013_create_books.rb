class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :isbn_number
      t.text :description

      t.timestamps
    end
  end
end
