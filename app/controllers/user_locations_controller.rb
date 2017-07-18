## cafeList
class UserLocationsController < ApplicationController

  # GET: /user_locations ##　固定の現在地から一覧で取得する
  get "/user_locations" do
    @places = Place.all

    erb :'user_locations/index'
  end
end
