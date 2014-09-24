class UsersController < ApplicationController
  get('/') do
    render(:erb, :"users/index")
  end

  get('/new') do
    render(:erb, :"users/new")
  end

  get('/edit') do
    render(:erb, :"users/edit")
  end

  get('/:id') do
    render(:erb, :"users/show")
  end

  delete('/') do
  end

  post('/') do
    User.create({email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation]})
    redirect ("/")
  end
end


# post to /users and save the user to your database then redirect to "/"
