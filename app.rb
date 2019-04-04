require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name_birthday' do
    name = params[:name]
    birthday = params[:birthday]
  end

  run! if app_file == $0
end
