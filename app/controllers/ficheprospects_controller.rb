class FicheprospectsController < ApplicationController
  before_action :set_ficheprospect, only: [:show, :edit, :update, :destroy]
  before_action :load_prospect
  # GET /ficheprospects
  # GET /ficheprospects.json
  def index
    render :action => 'show'	
    #@ficheprospects = Ficheprospect.all
  end

  # GET /ficheprospects/1
  # GET /ficheprospects/1.json
  def show
    if params[:tag]
      @ficheprospect = Ficheprospect.tagged_with(params[:tag])
      else
    end
  end

  # GET /ficheprospects/new
  def new
   @ficheprospect = @prospect.build_ficheprospect   
  end

  # GET /ficheprospects/1/edit
  def edit
  end

  # POST /ficheprospects
  # POST /ficheprospects.json
  def create
    @ficheprospect = @prospect.create_ficheprospect(ficheprospect_params)

    respond_to do |format|
      if @ficheprospect.save
        format.html { redirect_to prospect_path(@prospect), notice: 'Le prospect a ete qualifie avec succes.' }
        format.json { render :show, status: :created, location: @ficheprospect }
      else
        format.html { render :new }
        format.json { render json: @ficheprospect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ficheprospects/1
  # PATCH/PUT /ficheprospects/1.json
  def update  
    respond_to do |format|
      if @ficheprospect.update(ficheprospect_params)
        format.html { redirect_to prospect_path(@prospect), notice: 'La qualification du prospect a ete modifiee avec succes.' }
        format.json { render :show, status: :ok, location: @ficheprospect }
      else
        format.html { render :edit }
        format.json { render json: @ficheprospect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficheprospects/1
  # DELETE /ficheprospects/1.json
  def destroy
    @ficheprospect = @prospect.ficheprospects.find(params[:id])  
    @ficheprospect.destroy
    respond_to do |format|
      format.html { redirect_to prospect_ficheprospect_path(@prospect), notice: 'Ficheprospect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficheprospect
      @ficheprospect = Ficheprospect.find(params[:id])
    end
    def load_prospect
    @prospect = Prospect.find(params[:prospect_id])
    end 
    # Never trust parameters from the scary internet, only allow the white list through.
    def ficheprospect_params
      params.require(:ficheprospect).permit(:age, :profession, :famille, :consomationcomplement, :frequenceconsomation, :beneficerechercher, :categoriecomplementconsomer, :satisfactioneffetcomplement, :originecomplement, :budgetcomplement, :lieuachatcomplement, :commentaireprospect, :prospect_id, :tag_list)
    end
end
