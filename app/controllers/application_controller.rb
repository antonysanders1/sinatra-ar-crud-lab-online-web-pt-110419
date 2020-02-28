require 'pry'
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    redirect to "/articles"
  end
  get '/articles' do
    @articles = Article.all
    erb :index
  end
  get '/articles/new' do
    @article = Article.new
    erb :new
  end
  post '/articles' do
<<<<<<< HEAD
    @article = Article.create(params)
<<<<<<< HEAD
    redirect to "/articles/#{@article.id}"
  end
=======
=======
    @article = Article.create(params[:article])
    binding.pry
    

>>>>>>> f9790a8d3ae6865180e97a4d73d50278562d170a

    redirect "/articles/#{@article.id}"
  end 

>>>>>>> aac0eea6c0440ee309552000e6facf587baaa6c7
  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :show
  end
  get '/articles/:id/edit' do
    @article = Article.find(params["id"])
    erb :edit
  end
  patch '/articles/:id' do
    article = Article.find(params[:id])
    article.update(title: params[:title], content: params[:content])
    redirect "/articles/#{article.id}"
  end
  delete '/articles/:id' do
    @article = Article.find(params[:id])
    @article.destroy
      redirect '/articles'
  end


end
