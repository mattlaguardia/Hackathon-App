class User < ActiveRecord::Base

########################
## ICE BOX USER LOGIN ##
########################
get '/login' do
  erb(:'auth/login')
end

get '/signup' do
  erb(:'auth/signup')
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
#   end
# end
  #
  # get '/logout' do
  #   session[:user_id] = nil
  #   redirect to('/')
  # end
end
