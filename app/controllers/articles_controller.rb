class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
  end

  def show
    @article = Article.find_by(params[:id])
  end

  def edit
    @article = Article.find_by(params[:id])
  end

  def update
    @article = Article.find_by(params[:id])
  end

  def destroy
    @article = Article.find_by(params[:id])
    @article.destroy
    redirect_to articles_path
  end
end
