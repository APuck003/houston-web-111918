class ApplicationController < Sinatra::Base
  set :views, 'app/views'
  
  get '/books' do
    @books = Book.all

    erb :'books/index'
  end

  get '/books/:id' do
    @book = Book.find(params[:id])
    
    erb :'books/show'
  end
end
