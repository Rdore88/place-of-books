class AddCheckedoutToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :checked_out, :boolean
  end
end
