class WelcomeController < ApplicationController
  before_action :set_category, only: [:show]
  before_action :set_supplier, only: [:show]

  def index
    @categories = Category.all
    @suppliers = Supplier.all
  end
end
