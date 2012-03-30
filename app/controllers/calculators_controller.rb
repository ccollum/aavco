class CalculatorsController < ApplicationController
  # GET /calculators
  # GET /calculators.json
  def index
    @calculators = Calculator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calculators }
    end
  end

  # GET /calculators/1
  # GET /calculators/1.json
  def show
    @calculator = Calculator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @calculator }
    end
  end

  # GET /calculators/new
  # GET /calculators/new.json
  def new
    @calculator = Calculator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @calculator }
    end
  end

  # GET /calculators/1/edit
  def edit
    @calculator = Calculator.find(params[:id])
  end

  # POST /calculators
  # POST /calculators.json
  def create
    @calculator = Calculator.new(params[:calculator])

    respond_to do |format|
      if @calculator.save
        format.html { redirect_to @calculator, notice: 'Calculator was successfully created.' }
        format.json { render json: @calculator, status: :created, location: @calculator }
      else
        format.html { render action: "new" }
        format.json { render json: @calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /calculators/1
  # PUT /calculators/1.json
  def update
    @calculator = Calculator.find(params[:id])

    respond_to do |format|
      if @calculator.update_attributes(params[:calculator])
        format.html { redirect_to @calculator, notice: 'Calculator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculators/1
  # DELETE /calculators/1.json
  def destroy
    @calculator = Calculator.find(params[:id])
    @calculator.destroy

    respond_to do |format|
      format.html { redirect_to calculators_url }
      format.json { head :no_content }
    end
  end
end
