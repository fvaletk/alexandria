# app/controllers/books_controller.rb
class BooksController < ApplicationController
  def index
    books = orchestrate_query(Book.all)
    render serializer(books)
  end

  def show
    render serializer(book)
  end

  private

  def book
    @book ||= params[:id] ? Book.find_by!(id: params[:id]) : Book.new(book_params)
  end
  alias_method :resource, :book
end
