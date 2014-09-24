class RootController < ApplicationController
  get('/') do
    render(:erb, :index)
  end

  get('/session/new') do
    render(:erb, :'session/new')
  end

  post('/session') do
    # look up the user by the name in params
    user = User.find(name: params[:user_name])
    if user.authenticate(params[:password])
      # add a user to the session hash
      current_user_id = user.id
      session[:current_user]  = {id: current_user_id}
      redirect to("/users/#{current_user_id}")
    else
      redirect ('/')
    end
  end


end
