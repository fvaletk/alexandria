# app/controllers/books_controller.rb
class BooksController < ApplicationController
  def index
    books = orchestrate_query(Book.all)
    render serializer(books)
  end

  def show
    render serializer(book)
  end

  def create
    book = Book.create(book_params)
    render serializer(book).merge(status: :created, location: book)
  end

  private

  def book
    @book ||= params[:id] ? Book.find_by!(id: params[:id]) : Book.new(book_params)
  end
  alias_method :resource, :book

  def book_params
    params.require(:data).permit(:title, :subtitle, :isbn_10, :isbn_13,
                                 :description, :released_on, :publisher_id,
                                 :author_id, :cover)
  end
end
