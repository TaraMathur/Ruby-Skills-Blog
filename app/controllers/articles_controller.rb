class ArticlesController < ApplicationController

def show
    @article = Article.find(params[:id])
end

def new
	 @article = Article.new
end

def create
	 @article = Article.new(article_params)
	 @article.user = current_user

  if @article.save
    redirect_to @article
  else
    render 'new'
  end
end

def index
	@current_user = current_user
	@articles = Article.all
end

end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end