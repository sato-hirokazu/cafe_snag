

class UsersController < ApplicationController

  enable :sessions
  set :session_secret, 'My session secret'

  # signup form
  get '/users' do
    session[:user_id] ||= nil
    if session[:user_id]
      redirect '/users/log_out'
    end

    haml :'users/sign_up'
  end

  get '/users/sign_up' do
    session[:user_id] ||= nil
    if session[:user_id]
      redirect :'/users/log_out' #logout form
    end

    haml :'users/sign_up'
  end

  #signup action
  post '/users' do
    if params[:password] != params[:confirm_password]
      haml :'/users/sign_up'
    end

    user = User.new(email: params[:email], name: params[:name])
    user.encrypt_password(params[:password])
    if user.save!
      session[:user_id] = user.id
      redirect :'/users/log_in'
    end
  end

  ###　追加分
  get '/users/log_in' do
p session
    # if session[:user_id]
    #   redirect '/log_out'
    # end

    haml :log_in
  end

  #login action
  post '/users/session' do
    if session[:user_id]
      redirect "/users"
    end

    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user._id
      redirect '/users'
    else
      redirect "/users/log_in"
    end
  end

end
