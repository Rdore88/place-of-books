require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest

  test "can assign reservation" do
    bio = Book.create(name: "NSYNC Biographies" )
    get "/reservations/#{bio.id}/new", params: {name: "Molly"}
    assert_response :success
  end
end
