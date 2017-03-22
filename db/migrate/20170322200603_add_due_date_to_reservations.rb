class AddDueDateToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :due_date, :datetime
  end
end
