class Book < ApplicationRecord
  has_many :reservations

  def return_book
    self.checked_out = true
    self.save
  end

end
