class BookeventsController < ApplicationController
  # GET /bookevents
  # GET /bookevents.json
  def index
    @bookevents = Bookevent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookevents }
    end
  end

  # GET /bookevents/1
  # GET /bookevents/1.json
  def show
    @bookevent = Bookevent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookevent }
    end
  end

  # GET /bookevents/new
  # GET /bookevents/new.json
  def new
    @bookevent = Bookevent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookevent }
    end
  end

  # GET /bookevents/1/edit
  def edit
    @bookevent = Bookevent.find(params[:id])
  end

  # POST /bookevents
  # POST /bookevents.json
  def create
    @bookevent = Bookevent.new(params[:bookevent])

    respond_to do |format|
      if @bookevent.save
        format.html { redirect_to @bookevent, notice: 'Bookevent was successfully created.' }
        format.json { render json: @bookevent, status: :created, location: @bookevent }
      else
        format.html { render action: "new" }
        format.json { render json: @bookevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookevents/1
  # PUT /bookevents/1.json
  def update
    @bookevent = Bookevent.find(params[:id])

    respond_to do |format|
      if @bookevent.update_attributes(params[:bookevent])
        format.html { redirect_to @bookevent, notice: 'Bookevent was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookevents/1
  # DELETE /bookevents/1.json
  def destroy
    @bookevent = Bookevent.find(params[:id])
    @bookevent.destroy

    respond_to do |format|
      format.html { redirect_to bookevents_url }
      format.json { head :ok }
    end
  end
end
