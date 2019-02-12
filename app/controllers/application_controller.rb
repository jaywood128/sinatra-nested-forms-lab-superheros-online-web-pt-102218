require 'sinatra/base'
require 'pry'
require './app/models/team.rb'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do

     @team = Team.new(name: params["team"]["name"], motto: params["team"]["motto"])
     @amanda = params["team"]["heros"][0]

    erb :team
  end

end
