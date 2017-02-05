class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
	end

	def edit
		@article = Article.find(params["id"])
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
		id = params["id"]
		article = Article.find(id)
		title = params["title"]
		content = params["content"]
		article.title = title
		article.content = content
		article.save
	    return redirect_to '/articles'
	end

	def delete
		id = params["id"]
		article = Article.find(id)
		article.destroy
	    return redirect_to '/articles'
	end

end
