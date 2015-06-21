class CategoriesproduitsController < ApplicationController
  before_action :set_categoriesproduit, only: [:show, :edit, :update, :destroy]

  # GET /categoriesproduits
  # GET /categoriesproduits.json
  def index
    @categoriesproduits = Categoriesproduit.all
  end

  # GET /categoriesproduits/1
  # GET /categoriesproduits/1.json
  def show
  end

  # GET /categoriesproduits/new
  def new
    @categoriesproduit = Categoriesproduit.new
  end

  # GET /categoriesproduits/1/edit
  def edit
  end

  # POST /categoriesproduits
  # POST /categoriesproduits.json
  def create
    @categoriesproduit = Categoriesproduit.new(categoriesproduit_params)

    respond_to do |format|
      if @categoriesproduit.save
        format.html { redirect_to categoriesproduits_url, notice: 'Categoriesproduit was successfully created.' }
        format.json { redirect_to action:index, status: :created, location: @categoriesproduit }
      else
        format.html { render :new }
        format.json { render json: @categoriesproduit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoriesproduits/1
  # PATCH/PUT /categoriesproduits/1.json
  def update
    respond_to do |format|
      if @categoriesproduit.update(categoriesproduit_params)
        format.html { redirect_to @categoriesproduit, notice: 'Categoriesproduit was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoriesproduit }
      else
        format.html { render :edit }
        format.json { render json: @categoriesproduit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoriesproduits/1
  # DELETE /categoriesproduits/1.json
  def destroy
    @categoriesproduit.destroy
    respond_to do |format|
      format.html { redirect_to categoriesproduits_url, notice: 'Categoriesproduit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoriesproduit
      @categoriesproduit = Categoriesproduit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoriesproduit_params
      params.require(:categoriesproduit).permit(:nomcategorie)
    end
end
