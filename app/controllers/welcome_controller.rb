class WelcomeController < ApplicationController
  before_action :set_category, only: [:show]
  before_action :set_supplier, only: [:show]
  before_action :set_fotos_empresa, only: [:show]
  before_action :set_ofertum, only: [:show]

  def index
    @categories = Category.all
    @suppliers = Supplier.all
    @fotos_empresas = FotosEmpresa.all
    @ofertas = Ofertum.all
  end
end
