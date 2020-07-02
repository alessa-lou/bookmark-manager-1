require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/add_bookmarks' do
    erb :add
  end

  post '/add_submit' do
  Bookmark.add(params['url'], params['title'])
  redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :list
  end

  run! if app_file == $0
end
