class HoodsController < ApplicationController
  def index
    @hoods = Hood.find(:all, :order=>'name')
  end
  def show
    @hood = Hood.find(params[:id])
    x = ENV['ZWS_ID']
    info = HTTParty.get("http://www.zillow.com/webservice/GetDemographics.htm?zws-id=#{x}&state=NY&city=NewYork&neighborhood=#{@hood.name.gsub(' ','')}")
    @income = info ['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][0]['values']['neighborhood']["value"]["__content__"]
    @age = info ['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][3]['values']['neighborhood']['value']
    @size = info ['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][5]['values']['neighborhood']['value']
    @commute = info ['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][6]['values']['neighborhood']['value']
  end
end