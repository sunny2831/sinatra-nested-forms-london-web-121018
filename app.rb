require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        # binding.pry
        Ship.new(details)
      end

      # @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      #
      # params[:pirate][:ships].each do |details|
      #   Ship.new(details[:name], details[:type], details[:booty])
      # end
      #
      @ships = Ship.all

      erb :'pirates/show'
    end
    # code other routes/actions here
  end
end
