class BookwormsController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update]
  before_filter :correct_user,   only: [:edit, :update]
  # GET /bookworms
  # GET /bookworms.json
  def index
    @bookworms = Bookworm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookworms }
    end
  end

  # GET /bookworms/1
  # GET /bookworms/1.json
  def show
    @bookworm = Bookworm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookworm }
    end
  end

  # GET /bookworms/new
  # GET /bookworms/new.json
  def new
    @bookworm = Bookworm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookworm }
    end
  end

  # GET /bookworms/1/edit
  def edit
#    @bookworm = Bookworm.find(params[:id])
  end

  # POST /bookworms
  # POST /bookworms.json
  def create
    @bookworm = Bookworm.new(params[:bookworm])

#    respond_to do |format|
      if @bookworm.save
        sign_in @bookworm
        redirect_to @bookworm
#        format.html { redirect_to @bookworm, notice: 'Bookworm was successfully created.' }
#        format.json { render json: @bookworm, status: :created, location: @bookworm }
      else
        render 'new'
#        format.html { render action: "new" }
#        format.json { render json: @bookworm.errors, status: :unprocessable_entity }
      end
#    end
  end

  # PUT /bookworms/1
  # PUT /bookworms/1.json
  def update
      if @bookworm.update_attributes(params[:bookworm])
        sign_in @bookworm
        redirect_to @bookworm
      else
        render 'edit'
      end
  end

  # DELETE /bookworms/1
  # DELETE /bookworms/1.json
  def destroy
    @bookworm = Bookworm.find(params[:id])
    @bookworm.destroy

    respond_to do |format|
      format.html { redirect_to bookworms_url }
      format.json { head :ok }
    end
  end
  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_path, notice: "Please sign in."
      end
    end

    def correct_user
      @bookworm = Bookworm.find(params[:id])
      redirect_to(signin_path) unless current_user?(@bookworm)
    end
end
