class AuthorsController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update]
  before_filter :correct_user,   only: [:edit, :update]
  # GET /authors
  # GET /authors.json
  def index
    @authors = Author.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @authors }
    end
  end

  # GET /authors/1
  # GET /authors/1.json
  def show
    @author = Author.find(params[:id])
    @books = @author.books
    @book = current_user.books.build if signed_in?

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @author }
    end
  end

  # GET /authors/1  28
  # GET /authors/1.json
  def blog
    @author = Author.find(params[:id])

    respond_to do |format|
      format.html # blog.html.erb
      format.json { render json: @author }
    end
  end


  # GET /authors/1  40
  # GET /authors/1.json
  def profileinfo
    @author = Author.find(params[:id])

    respond_to do |format|
      format.html # profileinfo.html.erb
      format.json { render json: @author }
    end
  end


  # GET /authors/1  52
  # GET /authors/1.json
  def interact
    @author = Author.find(params[:id])

    respond_to do |format|
      format.html # interact.html.erb
      format.json { render json: @author }
    end
  end


  # GET /authors/new
  # GET /authors/new.json
  def new
    @author = Author.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @author }
    end
  end


  # GET /authors/1/edit 76
  def edit
    @author = Author.find(params[:id])
    @books = @author.books
    @book = current_user.books.build if signed_in?
    @booklist = Book.where(:author_id => @author.id)
  end


  # POST /authors       
  # POST /authors.json  86
  def create
    @author = Author.new(params[:author])

#    respond_to do |format|
      if @author.save
        sign_in @author
        redirect_to @author
#        format.html { redirect_to @author, notice: 'Author was successfully created.' }
#        format.json { render json: @author, status: :created, location: @author }
      else
        render 'new'
#        format.html { render action: "new" }
#        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
#    end
  end


  # PUT /authors/1 105
  # PUT /authors/1.json
  def update
    @author = Author.find(params[:id])
    @booklist = Book.where(:author_id => @author.id)

#    respond_to do |format|
      if @author.update_attributes(params[:author])
        sign_in @author
        redirect_to @author
#        format.html { redirect_to @author, notice: 'Author was successfully updated.' }
#        format.json { head :ok }
      else
        render 'profileinfo'
#        format.html { render action: "edit" }
#        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
#    end
  end

  # DELETE /authors/1
  # DELETE /authors/1.json
  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    respond_to do |format|
      format.html { redirect_to authors_url }
      format.json { head :ok }
    end
  end


  private

    def correct_user
      @author = Author.find(params[:id])
      redirect_to(signin_path) unless current_user?(@author)
    end
end
