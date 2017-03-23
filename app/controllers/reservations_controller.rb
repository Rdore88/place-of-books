class ReservationsController < ApplicationController

  def index
    @reservation = Reservation.all
    @books = Book.all
  end

  def new
    @book = Book.find(params["book_id"])
  end

  def create
    book = Book.find(params["reservation"]["book_id"])
    book.checked_out = true
    book.save
    dates = { checked_out: Time.now, due_date: 10.days.from_now }
    all_data = reservation_params.merge!(dates)
    Reservation.create(all_data)
    redirect_to "/reservations"
  end

  def return
    @reservation = Reservation.find(params[:id])
    @reservation.book.update(checked_out: false)
    @reservation.update(return_date: Time.now)
    redirect_to "/reservations"
  end

  private def reservation_params
    params.require("reservation").permit("name", "book_id")
  end
end
