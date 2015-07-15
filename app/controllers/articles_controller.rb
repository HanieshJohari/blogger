class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new create_params
    if @article.save
      redirect_to article_path(@article)
    end
  end

  def show
    @article = Article.find_by(id: params[:id])
    @comment=Comment.new
    @comment.article_id=@article.id
  end

  def edit
    @article = Article.find_by(id: params[:id])
  end

  def update
    @article = Article.find_by(id: params[:id])
    @article.update_attributes(create_params)
    if @article.save
    redirect_to article_path(@article)
    end
  end
  
  def destroy
    @article = Article.find_by(id: params[:id])
    @article.destroy
    redirect_to articles_path
  end

 
  def create_params
    params.require(:article).permit(:title, :body, :tag_list)
  end

  
end
