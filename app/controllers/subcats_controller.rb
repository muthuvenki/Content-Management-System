class SubcatsController < ApplicationController
  before_action :set_subcat, only: [:show, :edit, :update, :destroy]
 before_filter :sign_in_check
  # GET /subcats
  # GET /subcats.json
  def index
    @subcats = Subcat.all
  end

  # GET /subcats/1
  # GET /subcats/1.json
  def show
  end

  # GET /subcats/new
  def new
    if params[:id].nil?
      flash[:danger]="No direct access"
      redirect_to root_path
    else
      @@cat_subcat_id=params[:id]
      @subcat = Subcat.new
    end
  end

  # GET /subcats/1/edit
  def edit
  end

  # POST /subcats
  # POST /subcats.json
  def create
    @subcat = Subcat.new(subcat_params)
    @subcat.category_id=@@cat_subcat_id
    respond_to do |format|
      if @subcat.save
        format.html { redirect_to @subcat, notice: 'Subcat was successfully created.' }
        format.json { render :show, status: :created, location: @subcat }
      else
        format.html { render :new }
        format.json { render json: @subcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcats/1
  # PATCH/PUT /subcats/1.json
  def update
    respond_to do |format|
      if @subcat.update(subcat_params)
        format.html { redirect_to @subcat, notice: 'Subcat was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcat }
      else
        format.html { render :edit }
        format.json { render json: @subcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcats/1
  # DELETE /subcats/1.json
  def destroy
    @subcat.destroy
    respond_to do |format|
      format.html { redirect_to subcats_url, notice: 'Subcat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcat
      @subcat = Subcat.find(params[:id])
    end
def sign_in_check
      if not user_signed_in?
        redirect_to new_user_session_path
      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def subcat_params
      params.require(:subcat).permit(:name, :desc, :visible,:category_id,:image)
    end
end
