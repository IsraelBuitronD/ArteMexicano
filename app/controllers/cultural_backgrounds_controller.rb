#encoding: utf-8
class CulturalBackgroundsController < ApplicationController

  before_filter :authenticate_user!, except: [:show]

  # GET /cultural_backgrounds
  # GET /cultural_backgrounds.json
  def index
    @cultural_backgrounds = CulturalBackground.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cultural_backgrounds }
    end
  end

  # GET /cultural_backgrounds/1
  # GET /cultural_backgrounds/1.json
  def show
    @cultural_background = CulturalBackground.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cultural_background }
    end
  end

  # GET /cultural_backgrounds/new
  # GET /cultural_backgrounds/new.json
  def new
    @cultural_background = CulturalBackground.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cultural_background }
    end
  end

  # GET /cultural_backgrounds/1/edit
  def edit
    @cultural_background = CulturalBackground.find(params[:id])
  end

  # POST /cultural_backgrounds
  # POST /cultural_backgrounds.json
  def create
    @cultural_background = CulturalBackground.new(params[:cultural_background])

    respond_to do |format|
      if @cultural_background.save
        format.html { redirect_to @cultural_background, notice: 'Cultural background was successfully created.' }
        format.json { render json: @cultural_background, status: :created, location: @cultural_background }
      else
        format.html { render action: "new" }
        format.json { render json: @cultural_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cultural_backgrounds/1
  # PUT /cultural_backgrounds/1.json
  def update
    @cultural_background = CulturalBackground.find(params[:id])

    respond_to do |format|
      if @cultural_background.update_attributes(params[:cultural_background])
        format.html { redirect_to @cultural_background, notice: 'Cultural background was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cultural_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cultural_backgrounds/1
  # DELETE /cultural_backgrounds/1.json
  def destroy
    @cultural_background = CulturalBackground.find(params[:id])
    @cultural_background.destroy

    respond_to do |format|
      format.html { redirect_to cultural_backgrounds_url }
      format.json { head :no_content }
    end
  end
end
