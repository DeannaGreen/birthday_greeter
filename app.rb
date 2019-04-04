require 'sinatra/base'
require './lib/countdown'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name_birthday' do
    @name = params[:name]
    $day = params[:day]
    $month = params[:month]
    redirect('/countdown')
  end

  get '/countdown' do
    @countdown = Countdown.new($day, $month)
    erb :countdown
  end

  run! if app_file == $0
end
