class CurrentEventsController < ApplicationController
  # GET /current_events
  # GET /current_events.json
  def index
    @current_events = CurrentEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @current_events }
    end
  end

  # GET /current_events/1
  # GET /current_events/1.json
  def show
    @current_event = CurrentEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @current_event }
    end
  end

  # GET /current_events/new
  # GET /current_events/new.json
  def new
    @current_event = CurrentEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @current_event }
    end
  end

  # GET /current_events/1/edit
  def edit
    @current_event = CurrentEvent.find(params[:id])
  end

  # POST /current_events
  # POST /current_events.json
  def create
    @current_event = CurrentEvent.new(params[:current_event])

    respond_to do |format|
      if @current_event.save
        format.html { redirect_to @current_event, notice: 'Current event was successfully created.' }
        format.json { render json: @current_event, status: :created, location: @current_event }
      else
        format.html { render action: "new" }
        format.json { render json: @current_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /current_events/1
  # PUT /current_events/1.json
  def update
    @current_event = CurrentEvent.find(params[:id])

    respond_to do |format|
      if @current_event.update_attributes(params[:current_event])
        format.html { redirect_to @current_event, notice: 'Current event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @current_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_events/1
  # DELETE /current_events/1.json
  def destroy
    @current_event = CurrentEvent.find(params[:id])
    @current_event.destroy

    respond_to do |format|
      format.html { redirect_to current_events_url }
      format.json { head :no_content }
    end
  end
end
