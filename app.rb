class Hackathon < Sinatra::Base
  get '/' do
    erb :home
  end
end
