class WelcomeController < ApplicationController
  def index
    render json: {status: 200, message: 'RecipeApp'}
  end
end
