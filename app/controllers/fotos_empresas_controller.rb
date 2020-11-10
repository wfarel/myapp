class FotosEmpresasController < ApplicationController
  before_action :set_fotos_empresa, only: [:show, :edit, :update, :destroy]

  # GET /fotos_empresas
  # GET /fotos_empresas.json
  def index
    @fotos_empresas = FotosEmpresa.all
  end

  # GET /fotos_empresas/1
  # GET /fotos_empresas/1.json
  def show
  end

  # GET /fotos_empresas/new
  def new
    @fotos_empresa = FotosEmpresa.new
  end

  # GET /fotos_empresas/1/edit
  def edit
  end

  # POST /fotos_empresas
  # POST /fotos_empresas.json
  def create
    @fotos_empresa = FotosEmpresa.new(fotos_empresa_params)

    respond_to do |format|
      if @fotos_empresa.save
        format.html { redirect_to @fotos_empresa, notice: 'Fotos empresa was successfully created.' }
        format.json { render :show, status: :created, location: @fotos_empresa }
      else
        format.html { render :new }
        format.json { render json: @fotos_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotos_empresas/1
  # PATCH/PUT /fotos_empresas/1.json
  def update
    respond_to do |format|
      if @fotos_empresa.update(fotos_empresa_params)
        format.html { redirect_to @fotos_empresa, notice: 'Fotos empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @fotos_empresa }
      else
        format.html { render :edit }
        format.json { render json: @fotos_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotos_empresas/1
  # DELETE /fotos_empresas/1.json
  def destroy
    @fotos_empresa.destroy
    respond_to do |format|
      format.html { redirect_to fotos_empresas_url, notice: 'Fotos empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotos_empresa
      @fotos_empresa = FotosEmpresa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fotos_empresa_params
      params.require(:fotos_empresa).permit(:name, :image, :estado)
    end
end
