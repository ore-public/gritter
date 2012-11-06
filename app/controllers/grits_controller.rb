class GritsController < ApplicationController
  # GET /grits
  # GET /grits.json
  def index
    @grits = Grit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grits }
    end
  end

  # GET /grits/1
  # GET /grits/1.json
  def show
    @grit = Grit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grit }
    end
  end

  # GET /grits/new
  # GET /grits/new.json
  def new
    @grit = Grit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grit }
    end
  end

  # GET /grits/1/edit
  def edit
    @grit = Grit.find(params[:id])
  end

  # POST /grits
  # POST /grits.json
  def create
    @grit = Grit.new(params[:grit])

    respond_to do |format|
      if @grit.save
        format.html { redirect_to @grit, notice: 'Grit was successfully created.' }
        format.json { render json: @grit, status: :created, location: @grit }
      else
        format.html { render action: "new" }
        format.json { render json: @grit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grits/1
  # PUT /grits/1.json
  def update
    @grit = Grit.find(params[:id])

    respond_to do |format|
      if @grit.update_attributes(params[:grit])
        format.html { redirect_to @grit, notice: 'Grit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grits/1
  # DELETE /grits/1.json
  def destroy
    @grit = Grit.find(params[:id])
    @grit.destroy

    respond_to do |format|
      format.html { redirect_to grits_url }
      format.json { head :no_content }
    end
  end
end
