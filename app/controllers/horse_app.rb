# require './models/jockey.rb'
# require '.models/horse.rb'

class HorseApp < Sinatra::Base
  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/jockeys' do
    @jockeys = Jockey.all
    erb :"jockeys/index"
  end

  get '/jockey/:id' do |id|
    @jockey = Jockey.find(id)
    erb :"jockeys/show"
  end
end
