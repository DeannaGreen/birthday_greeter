require 'sinatra/base'
require './lib/countdown'

class Birthday < Sinatra::Base
  enable :sessions

  before do
    @countdown = Countdown.instance
  end

  get '/' do
    erb :index
  end

  post '/name_birthday' do
    name = params[:name]
    day = params[:day]
    month = params[:month]
    @countdown = Countdown.create(day, month)
    redirect('/countdown')
  end

  get '/countdown' do
    erb :countdown
  end

  run! if app_file == $0
end
