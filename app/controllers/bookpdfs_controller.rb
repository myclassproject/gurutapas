class BookpdfsController < ApplicationController
  # GET /bookpdfs
  # GET /bookpdfs.json
  def index
    @bookpdfs = Bookpdf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookpdfs }
    end
  end

  # GET /bookpdfs/1
  # GET /bookpdfs/1.json
  def show
    @bookpdf = Bookpdf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookpdf }
    end
  end

  # GET /bookpdfs/new
  # GET /bookpdfs/new.json
  def new
    @bookpdf = Bookpdf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookpdf }
    end
  end

  # GET /bookpdfs/1/edit
  def edit
    @bookpdf = Bookpdf.find(params[:id])
  end

  # POST /bookpdfs
  # POST /bookpdfs.json
  def create
    @bookpdf = Bookpdf.new(params[:bookpdf])

    respond_to do |format|
      if @bookpdf.save
        format.html { redirect_to @bookpdf, notice: 'Bookpdf was successfully created.' }
        format.json { render json: @bookpdf, status: :created, location: @bookpdf }
      else
        format.html { render action: "new" }
        format.json { render json: @bookpdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookpdfs/1
  # PUT /bookpdfs/1.json
  def update
    @bookpdf = Bookpdf.find(params[:id])

    respond_to do |format|
      if @bookpdf.update_attributes(params[:bookpdf])
        format.html { redirect_to @bookpdf, notice: 'Bookpdf was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookpdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookpdfs/1
  # DELETE /bookpdfs/1.json
  def destroy
    @bookpdf = Bookpdf.find(params[:id])
    @bookpdf.destroy

    respond_to do |format|
      format.html { redirect_to bookpdfs_url }
      format.json { head :ok }
    end
  end
end
