class HackathonApp < Sinatra::Base
  include SessionHelpers

  enable :sessions, :logging
  set :public_folder, '/public'
  set :session_secret, ENV["HACKATHON_APP_SECRET"]

  ## HOME PAGE ROUTE ##
  before '/*' do
    current_user
  end

  get '/' do
    erb :'/home'
  end

  get '/index' do
    erb :'/home'
  end

## CONTROLLER ACTIONS ##
  get '/hackathons' do
    @hackathons = Hackathon.all.order(points: :desc)
    erb(:'hackathons/index')
  end

  get '/hackathons/new' do
    @hackathons = Hackathon.new
    erb(:'hackathons/new')
  end

  ## CREATING THE NEW HACKATHON ##
  post '/hackathons' do
    @hackathons = Hackathon.new(params[:hackathon])
    if @hackathons.save
      redirect('/hackathons')
    else
      erb(:'hackathons/new')
    end
  end
  ## RENDERING THE HACKATHON TO THE PAGE WITH ID ##
  get '/hackathons/:id' do
    @hackathon = Hackathon.find(params[:id])
    erb(:'hackathons/show')
  end

  ## DELETING A HACKATHON ##
  post '/hackathons/:id/delete' do
    @hackathon = Hackathon.find(params[:id])
    @hackathon.destroy
    redirect to('/hackathons')
  end

  ##  EDITING A HACKATHON ##
  get '/hackathons/:id/edit' do
    @hackathon = Hackathon.find(params[:id])
    erb(:'hackathons/edit')
  end

  post '/hackathons/:id' do
    @hackathon = Hackathon.find(params[:id])
    @hackathon.update_attributes(params[:hackathon])
    redirect to('/hackathons')
  end

  ## ADDING AN UPVOTE BUTTON ##
  get '/hackathons/:id/vote' do
    @vote = Hackathon.find(params[:id])
    erb(:'hackathons/vote')
  end
  post '/hackathons/:id/vote' do
    up = Hackathon.find(params[:id])
    up.points += 1
    up.save

    if request.xhr?
      return {points: up.points}.to_json
    else
      redirect to('/hackathons')
    end
  end

  ## ADDING AN DOWNVOTE BUTTON ##
  get '/hackathons/:id/downvote' do
    @vote = Hackathon.find(params[:id])
    erb(:'hackathons/vote')
  end
  post '/hackathons/:id/downvote' do
    up = Hackathon.find(params[:id])
    up.points -= 1
    up.save

    if request.xhr?
      return {points: up.points}.to_json
    else
      redirect to('/hackathons')
    end
  end

  # ########################
  # ## ICE BOX USER LOGIN ##
  # ########################
  get '/login' do
    erb :'auth/login'
  end

  post '/login' do
    user = User.find_by(name: params[:name]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      redirect('/')
    else
      redirect('/login')
    end
  end

  ## LOG OUT SETTING USER_ID TO NIL ##
  get '/logout' do
    current_user
    session[:user_id] = nil
    redirect('/')
  end

  ## SIGN UP ##
  get '/signup' do
    erb :'auth/signup'
  end

  post '/signup' do
    user = User.new(params[:user])
    if user.save
      session[:user_id] = user.id
      redirect to('/')
    else
      redirect to ("/signup?name=#{params[:user][:name]}")
    end
  end
end
