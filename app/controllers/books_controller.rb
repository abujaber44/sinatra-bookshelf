class BooksController < ApplicationController

  get "/books" do
    redirect_if_not_logged_in
    @books = current_user.books
    erb :"books/index"
  end

  get "/books/new" do
    @book = Book.new
    erb :"/books/new"
  end

  post "/books" do
    redirect_if_not_logged_in
    @book = current_user.books.build(params[:book])
    if @book.save
      redirect "/books"
    else
      @errors = @book.errors.full_messages
      erb :"/books/new"
    end
  end

end
