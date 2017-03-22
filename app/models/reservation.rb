class Reservation < ApplicationRecord
  belongs_to :book
  delegate :name, to: :book, prefix: true
end
