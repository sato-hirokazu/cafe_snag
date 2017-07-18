require './config/environment'
require 'sinatra/reloader'
require 'carrierwave'

class ApplicationController < Sinatra::Base

  configure do
    register Sinatra::Reloader
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
  end

  # TOP
  get "/" do
    params = {
        id: 2
    }
    user = User.find(params[:id])
    if user.present?
      @user = user
      @title = "Cafe SNS"
      @content = ""
      erb :login
    else
      erb :index
    end
  end
end
