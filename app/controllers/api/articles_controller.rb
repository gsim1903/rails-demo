class Api::ArticlesController < ApplicationController
  def index
    render json: [], status: 200
  end
end
