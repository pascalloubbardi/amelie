class ProduitsController < ApplicationController
  before_action :set_produit, only: [:show, :edit, :update, :destroy]

  before_action :load_categoriesproduit

  # GET /produits
  # GET /produits.json
  def index
    @produits = @categoriesproduit.produits.all
  end

  # GET /produits/1
  # GET /produits/1.json
  def show
  @produit = @categoriesproduit.produits.find(params[:id])
  end

  # GET /produits/new
  def new
    @produit = @categoriesproduit.produits.new
  end

  # GET /produits/1/edit
  def edit
  end

  # POST /produits
  # POST /produits.json
  def create
    @produit = @categoriesproduit.produits.new(produit_params)
    respond_to do |format|
      if @produit.save
        format.html { redirect_to [@categoriesproduit, @produit], notice: 'Produit was successfully created.' }
        format.json { render :show, status: :created, location: @produit }
      else
        format.html { render :new }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produits/1
  # PATCH/PUT /produits/1.json
  def update
    @produit = @categoriesproduit.produits.find(params[:id])
    respond_to do |format|
      if @produit.update(produit_params)
        format.html { redirect_to [@categoriesproduit, @produit], notice: 'Produit was successfully updated.' }
        format.json { render :show, status: :ok, location: @produit }
      else
        format.html { render :edit }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produits/1
  # DELETE /produits/1.json
  def destroy
    @produit = @categoriesproduit.produits.find(params[:id])
    @produit.destroy
    respond_to do |format|
      format.html { redirect_to produits_url, notice: 'Produit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produit
      @produit = Produit.find(params[:id])
    end

    def load_categoriesproduit
      @categoriesproduit = Categoriesproduit.find(params[:categoriesproduit_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produit_params
      params.require(:produit).permit(:referenceproduit, :nonproduit, :origineproduit, :conditionnementproduit, :gammeproduit, :conseilutilisation, :prixventeproduit, :prixachatproduit, :categoriesproduit_id)
    end
end
