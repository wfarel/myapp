class WelcomeController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.all
  end
end
