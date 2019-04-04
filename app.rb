require 'sinatra/base'
require './lib/person.rb'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name_birthday' do
    user = Person.new(params[:name],params[:birthday])
    redirect('/countdown')
  end

  get '/countdown' do
    erb :countdown
  end

  run! if app_file == $0
end
