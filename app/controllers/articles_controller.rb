class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params["id"])
	end


	def create
		Article.create(article_params(params))
		redirect_to '/articles'
	end

	def show
		@article = Article.find(params["id"])
	end

	def update
		id = params["id"]
		article = Article.find(id)
		article.update(article_params(params))
		article.save
	    return redirect_to '/articles'
	end

	def delete
		id = params["id"]
		article = Article.find(id)
		article.destroy
	    return redirect_to '/articles'
	end


	private
	def article_params params
		params.require(:article).permit(:title, :content)
	end


end
