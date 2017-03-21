require "pry"

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def create
    Book.create(book_info)
    redirect_to "/books"
  end

  def view
    @book = Book.find(params["id"])
  end

  def edit
    @book = Book.find(params["id"])
  end

  def update
    @book = Book.find(params["id"])
    @book.update(book_info)
    @book.save
    redirect_to "/books"
  end

  def delete
    @book = Book.find(params["id"])
    @book.destroy
    redirect_to "/books"
  end

  private def book_info
    params.require("book").permit("name", "isbn_number", "description")
  end
end
