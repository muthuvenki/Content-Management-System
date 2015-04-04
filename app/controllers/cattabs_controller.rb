class CattabsController < ApplicationController
  before_action :set_cattab, only: [:show, :edit, :update, :destroy]

  # GET /cattabs
  # GET /cattabs.json
  def index
    @cattabs = Cattab.all
  end

  # GET /cattabs/1
  # GET /cattabs/1.json
  def show
  end

  # GET /cattabs/new
  def new
    @@subcat_cat_id=params[:id]
    @cattab = Cattab.new
  end

  # GET /cattabs/1/edit
  def edit
  end

  # POST /cattabs
  # POST /cattabs.json
  def create
    @cattab = Cattab.new(cattab_params)
    @cattab.subcat_id=@@subcat_cat_id
    respond_to do |format|
      if @cattab.save
        format.html { redirect_to @cattab, notice: 'Cattab was successfully created.' }
        format.json { render :show, status: :created, location: @cattab }
      else
        format.html { render :new }
        format.json { render json: @cattab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cattabs/1
  # PATCH/PUT /cattabs/1.json
  def update
    respond_to do |format|
      if @cattab.update(cattab_params)
        format.html { redirect_to @cattab, notice: 'Cattab was successfully updated.' }
        format.json { render :show, status: :ok, location: @cattab }
      else
        format.html { render :edit }
        format.json { render json: @cattab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cattabs/1
  # DELETE /cattabs/1.json
  def destroy
    @cattab.destroy
    respond_to do |format|
      format.html { redirect_to cattabs_url, notice: 'Cattab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cattab
      @cattab = Cattab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cattab_params
      params.require(:cattab).permit(:name,:content,:subcat_id)
    end
end
