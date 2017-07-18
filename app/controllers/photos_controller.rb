require 'bundler'
Bundler.require
require 'carrierwave/orm/activerecord'

require 'pry'

class PhotosController < ApplicationController

  get '/photos/index' do
    @title = ''
    @photos = Photo.all.reverse_order
    slim :'/photos/index'
  end

  get '/photos/new' do
    @title = '画像投稿'
    slim :'/photos/new'
  end

  post '/photos/new' do
    photo = Photo.new(file: params[:photo], comment: params[:comment])
    if photo.save
      session[:responce] = {code: 200, messages: '成功しました'}
    else
      session[:responce] = {code: 400, messages: photo.errors.full_messages}
    end
    redirect back
  end

end
