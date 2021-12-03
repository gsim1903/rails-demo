class Api::ArticlesController < ApplicationController
  
  before_action :validate_params_presence, only: :create 
  
  def index
    articles = Article.all
    render json: { articles: articles }
  end
  
  def create
    article = Article.create(params[:article].permit!)
    if article.persisted?
      render json: {article: article}, status: 201
    else 
      render json: { message: article.errors.full_messages.to_sentence }, status: 422
  end

  end

  private

  def validate_params_presence
    if params[:article].nil?
    render json: {message: 'Missing params'}, status: 422 
    end
  end

  def article_params
    params[:article].permit(:title, :content)
    
  end
end


