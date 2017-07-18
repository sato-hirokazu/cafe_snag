## Review

require 'carrierwave'
require 'carrierwave/orm/activerecord'

class ProfilesController < ApplicationController

  CarrierWave.configure do |config|
    config.root = File.dirname(__FILE__) + '/public'
  end

  CarrierWave::Uploader::Base::storage :file

  # POST: /profiles
  get '/profiles' do
    erb :'/profiles/index.html'
  end

  post '/profiles/upload' do

    #Create new Image Model
    img = Image.new

    img.image    = params[:file]
    img.caption = 'This is the caption'

    #Save
    img.save!

    #Redirect to view
    redirect :'profiles/success'
  end

  get '/profiles/success' do
    erb :'/profiles/success.html'
  end

end
