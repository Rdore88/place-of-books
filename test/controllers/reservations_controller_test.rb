require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest

  test "can assign reservation" do
    bio = Book.create(name: "NSYNC Biographies" )
    get "/reservations/#{bio.id}/new", params: {name: "Molly"}
    assert_response :success
  end

  # test "can see index of reservations" do
  #   get "/reservations"
  #   assert_select "td", "Molly"
  # end

  # test "can return book" do
  #   hobbit = Reservation.create(name: "Robby Dore")
  #   get "/reservations/#{hobbit.id}/return"
  #   assert_redirected_to "/reservations"
  # end
end
