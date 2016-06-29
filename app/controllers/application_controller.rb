require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do      
      erb :super_hero
    end

    post '/teams' do
      @motto = params[:team][:motto]
      erb :team
       #binding.pry
    end

end
