class BooksController < ApplicationController
  before_filter :signed_in_user

  def create
    @book = current_user.books.build(params[:book])
    if @book.save
      redirect_to author_path(current_user)
    else
      redirect_to edit_author_path(current_user)
    end
   end

  def edit
    @booklist = Book.find(params[:author_id])
    if @book.save
      redirect_to author_path(current_user)
    else
      redirect_to edit_author_path(current_user)
    end
   end


  def update
    @bklist = Book.find(params[:id])
      if @bklist.update_attributes(params[:book])
         redirect_to author_path(current_user)
      else
         redirect_to edit_author_path(current_user)
      end
  end


  def destroy
  end

  def new
  end
end