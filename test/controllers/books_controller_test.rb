require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/books"
    assert_response :success
  end

  test "can see all of a books info" do
    the_hobbit = Book.create(name: "The Hobbit", isbn_number: "9780547928227")
    get "/books/#{the_hobbit.id}"
    assert_includes @response.body, "9780547928227"
  end

  test "can delete a selected book" do
    the_hobbit = Book.create(name: "The Hobbit", isbn_number: "9780547928227")
    delete "/books/#{the_hobbit.id}"
    assert_raises ActiveRecord::RecordNotFound do
      Book.find(the_hobbit.id)
    end
  end

end
