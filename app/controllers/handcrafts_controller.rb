class HandcraftsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  # GET /handcrafts
  # GET /handcrafts.json
  def index
    if params[:tag]
      @handcrafts = Handcraft.tagged_with(params[:tag])
    else
      @handcrafts = Handcraft.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handcrafts }
    end
  end

  # GET /handcrafts/1
  # GET /handcrafts/1.json
  def show
    @handcraft = Handcraft.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handcraft }
    end
  end

  # GET /handcrafts/new
  # GET /handcrafts/new.json
  def new
    @handcraft = Handcraft.new
    @handcraft.photos.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handcraft }
    end
  end

  # GET /handcrafts/1/edit
  def edit
    @handcraft = Handcraft.find(params[:id])
    @handcraft.photos.build
  end

  # POST /handcrafts
  # POST /handcrafts.json
  def create
    @handcraft = Handcraft.new(params[:handcraft])

    respond_to do |format|
      if @handcraft.save
        format.html { redirect_to @handcraft, notice: 'Handcraft was successfully created.' }
        format.json { render json: @handcraft, status: :created, location: @handcraft }
      else
        format.html { render action: "new" }
        format.json { render json: @handcraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handcrafts/1
  # PUT /handcrafts/1.json
  def update
    @handcraft = Handcraft.find(params[:id])

    respond_to do |format|
      if @handcraft.update_attributes(params[:handcraft])
        format.html { redirect_to @handcraft, notice: 'Handcraft was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handcraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handcrafts/1
  # DELETE /handcrafts/1.json
  def destroy
    @handcraft = Handcraft.find(params[:id])
    @handcraft.destroy

    respond_to do |format|
      format.html { redirect_to handcrafts_url }
      format.json { head :no_content }
    end
  end
end
