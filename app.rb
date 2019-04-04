require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    'Birthday'
  end

  run! if app_file == $0
end
