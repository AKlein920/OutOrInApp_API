class WelcomeController < ApplicationController
  def index
    render json: {status: 200, message: 'OutOrIn API'}
  end
end
