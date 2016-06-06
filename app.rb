class HackathonApp < Sinatra::Base
  get '/' do
    erb :home
  end

  ## RESTFULL ARTIST CONTROLLER ACTIONS ##
  get '/hackathons' do
    @hackathons = Hackathon.all
    erb(:'hackathons/index')
  end
  #need to make a get to post new hackathon - form
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


########################
## ICE BOX USER LOGIN ##
########################
get '/login' do
  erb :'auth/login'
end

get '/signup' do
  erb :'auth/signup'
end
  # post '/signup' do
  #   user = User.new(params[:user])
  #     #from docs user.save
  #   if user.save
  #     #sign them in and redirect
  #     session[:user_id] = user.id
  #     redirect to ('/')#way to store fact that they signed in session is a hash
  #   else
  #     #show an error message and have them try again
  # end
  #
  # get '/logout' do
  #   session[:user_id] = nil
  #   redirect to('/')
  # end
end
