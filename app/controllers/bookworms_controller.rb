class BookwormsController < ApplicationController
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
    @bookworm = Bookworm.find(params[:id])
  end

  # POST /bookworms
  # POST /bookworms.json
  def create
    @bookworm = Bookworm.new(params[:bookworm])

    respond_to do |format|
      if @bookworm.save
        format.html { redirect_to @bookworm, notice: 'Bookworm was successfully created.' }
        format.json { render json: @bookworm, status: :created, location: @bookworm }
      else
        format.html { render action: "new" }
        format.json { render json: @bookworm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookworms/1
  # PUT /bookworms/1.json
  def update
    @bookworm = Bookworm.find(params[:id])

    respond_to do |format|
      if @bookworm.update_attributes(params[:bookworm])
        format.html { redirect_to @bookworm, notice: 'Bookworm was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookworm.errors, status: :unprocessable_entity }
      end
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
end
