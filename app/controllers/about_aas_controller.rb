class AboutAasController < ApplicationController
  # GET /about_aas
  # GET /about_aas.json
  def index
    @about_aas = AboutAa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @about_aas }
    end
  end

  # GET /about_aas/1
  # GET /about_aas/1.json
  def show
    @about_aa = AboutAa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @about_aa }
    end
  end

  # GET /about_aas/new
  # GET /about_aas/new.json
  def new
    @about_aa = AboutAa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @about_aa }
    end
  end

  # GET /about_aas/1/edit
  def edit
    @about_aa = AboutAa.find(params[:id])
  end

  # POST /about_aas
  # POST /about_aas.json
  def create
    @about_aa = AboutAa.new(params[:about_aa])

    respond_to do |format|
      if @about_aa.save
        format.html { redirect_to @about_aa, notice: 'About aa was successfully created.' }
        format.json { render json: @about_aa, status: :created, location: @about_aa }
      else
        format.html { render action: "new" }
        format.json { render json: @about_aa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /about_aas/1
  # PUT /about_aas/1.json
  def update
    @about_aa = AboutAa.find(params[:id])

    respond_to do |format|
      if @about_aa.update_attributes(params[:about_aa])
        format.html { redirect_to @about_aa, notice: 'About aa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @about_aa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_aas/1
  # DELETE /about_aas/1.json
  def destroy
    @about_aa = AboutAa.find(params[:id])
    @about_aa.destroy

    respond_to do |format|
      format.html { redirect_to about_aas_url }
      format.json { head :no_content }
    end
  end
end
