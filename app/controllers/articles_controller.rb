class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
	end

	def create
		title = params["title"]
		content = params["content"]
		Article.create(title: title, content: content)
		redirect_to '/articles'
	end

	def show
		@article = Article.find(params["id"])
	end

	def update
	end

	def delete
	end

end
