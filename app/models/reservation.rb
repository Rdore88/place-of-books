class Reservation < ApplicationRecord
  belongs_to :book
  delegate :name, to: :book, prefix: true
  validates :book_id, presence: true
end
