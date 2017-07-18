require 'bundler/setup'
require 'capybara/poltergeist'
Bundler.require

require 'net/http'
require 'json'

BASE_URL_GOOGLE_MAP = "http://maps.google.com/maps/api/geocode/json"

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {:js_errors => false, :timeout => 1000 })
end

session = Capybara::Session.new(:poltergeist)

## 現在地からの情報を取得（）
session.visit "https://shop.ufs.co.jp/ufs/spot/list/map?coord=35.658091999999996,139.7278603&bc=eNqLVnq2ZM7zLYseN3c8bm5%2B3DxdSUdJKRYAlWYLpA%3D%3D"

search = session.find('div#w_5_aroundshop_1_1-widget-body.widget-body').find('ul#w_5_aroundshop_1_1-around-shops.list-unstyled.no-margin.no-padding.w_5_aroundshop_1_1-spots').text.split(' ')

search.each_with_index do |value,count|
  if value.include?("東京都")
    place = Place.new(name: value, address: value)
    place.save
  end
end

# Google Map API
def geocode_google_map(address)

  address = URI.encode(address)
  hash = Hash.new
  reqUrl = "#{BASE_URL_GOOGLE_MAP}?address=#{address}&sensor=false&language=ja"
  response = Net::HTTP.get_response(URI.parse(reqUrl))

  case response

    when Net::HTTPSuccess then
      data = JSON.parse(response.body)
      hash['lat'] = data['results'][0]['geometry']['location']['lat']
      hash['lng'] = data['results'][0]['geometry']['location']['lng']
    # それ以外
    else
      hash['lat'] = 0.00
      hash['lng'] = 0.00
  end

  hash

end

placeList = Place.all
placeList.each do |val|
  geoCode = geocode_google_map(val.address)
  place = Place.find(val.id)
  place.latitude = geoCode['lat']
  place.longitude = geoCode['lng']
  place.save
end
