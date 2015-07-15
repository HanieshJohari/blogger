class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create 
    @article = Article.find(params[:article_id])
    @comment= @article.comments.create(comment_params)

    @comment.save
    redirect_to article_path(@article)
  end


  def show
  end

  def edit
  end

  private
      def comment_params
        params.require(:comment).permit(:author_name, :body, :article_id)
      end
  
end
