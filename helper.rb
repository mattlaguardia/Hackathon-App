def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end
## WAY TO PULL UP THE USER THAT IS LOGGED IN ## 
