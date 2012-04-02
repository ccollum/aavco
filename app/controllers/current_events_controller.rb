class CurrentEventsController < ApplicationController
  # GET /currentevents
  # GET /currentevents.json
  def index
    @currentevents = currentevents.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @currentevents }
    end
  end

  # GET /currentevents/1
  # GET /currentevents/1.json
  def show
    @currentevent = currentevent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @currentevent }
    end
  end

  # GET /currentevents/new
  # GET /currentevents/new.json
  def new
    @currentevent = currentevent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @currentevent }
    end
  end

  # GET /currentevents/1/edit
  def edit
    @currentevent = currentevent.find(params[:id])
  end

  # POST /currentevents
  # POST /currentevents.json
  def create
    @currentevent = currentevent.new(params[:currentevent])

    respond_to do |format|
      if @currentevent.save
        format.html { redirect_to @currentevent, notice: 'currentevent was successfully created.' }
        format.json { render json: @currentevent, status: :created, location: @currentevent }
      else
        format.html { render action: "new" }
        format.json { render json: @currentevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /currentevents/1
  # PUT /currentevents/1.json
  def update
    @currentevent = currentevent.find(params[:id])

    respond_to do |format|
      if @currentevent.update_attributes(params[:currentevent])
        format.html { redirect_to @currentevent, notice: 'currentevent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @currentevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currentevents/1
  # DELETE /currentevents/1.json
  def destroy
    @currentevent = currentevent.find(params[:id])
    @currentevent.destroy

    respond_to do |format|
      format.html { redirect_to currentevents_url }
      format.json { head :no_content }
    end
  end
end
