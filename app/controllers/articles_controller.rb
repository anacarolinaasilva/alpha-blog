class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    #procirar render plain 000
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end

  #isso eu nao entendi, procurar permit OOO
  private
  def article_params
    params.required(:article).permit(:title, :description)

  end


end