class ManufacturingTechniquesController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  # GET /manufacturing_techniques
  # GET /manufacturing_techniques.json
  def index
    if params[:q]
      @manufacturing_techniques = ManufacturingTechnique.where("name LIKE ?", "%#{params[:q]}%").select(['name', 'id']).order(:name)
    else
      @manufacturing_techniques = ManufacturingTechnique.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manufacturing_techniques.map(&:attributes) }
    end
  end

  # GET /manufacturing_techniques/1
  # GET /manufacturing_techniques/1.json
  def show
    @manufacturing_technique = ManufacturingTechnique.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manufacturing_technique }
    end
  end

  # GET /manufacturing_techniques/new
  # GET /manufacturing_techniques/new.json
  def new
    @manufacturing_technique = ManufacturingTechnique.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manufacturing_technique }
    end
  end

  # GET /manufacturing_techniques/1/edit
  def edit
    @manufacturing_technique = ManufacturingTechnique.find(params[:id])
  end

  # POST /manufacturing_techniques
  # POST /manufacturing_techniques.json
  def create
    @manufacturing_technique = ManufacturingTechnique.new(params[:manufacturing_technique])

    respond_to do |format|
      if @manufacturing_technique.save
        format.html { redirect_to @manufacturing_technique, notice: 'Manufacturing technique was successfully created.' }
        format.json { render json: @manufacturing_technique, status: :created, location: @manufacturing_technique }
      else
        format.html { render action: "new" }
        format.json { render json: @manufacturing_technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /manufacturing_techniques/1
  # PUT /manufacturing_techniques/1.json
  def update
    @manufacturing_technique = ManufacturingTechnique.find(params[:id])

    respond_to do |format|
      if @manufacturing_technique.update_attributes(params[:manufacturing_technique])
        format.html { redirect_to @manufacturing_technique, notice: 'Manufacturing technique was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @manufacturing_technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manufacturing_techniques/1
  # DELETE /manufacturing_techniques/1.json
  def destroy
    @manufacturing_technique = ManufacturingTechnique.find(params[:id])
    @manufacturing_technique.destroy

    respond_to do |format|
      format.html { redirect_to manufacturing_techniques_url }
      format.json { head :no_content }
    end
  end
end
