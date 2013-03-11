class HoodsController < ApplicationController
  def index
    @hoods = Hood.find(:all, :order=>'location_id')
  end
  def show
    @hood = Hood.find(params[:id])
    @prior = Hood.where(:location_id => (@hood.location_id) -1).first || Hood.where(:location_id => 34).first
    @next = Hood.where(:location_id => (@hood.location_id) +1).first || Hood.where(:location_id => 1).first
    x = ENV['ZWS_ID']
    info = HTTParty.get("http://www.zillow.com/webservice/GetDemographics.htm?zws-id=#{x}&state=NY&city=NewYork&neighborhood=#{@hood.name.gsub(' ','')}")
    begin
      @income = info ['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][0]['values']['neighborhood']["value"]["__content__"]
      @age = info ['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][3]['values']['neighborhood']['value']
      @size = info ['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][5]['values']['neighborhood']['value']
      @commute = info ['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][6]['values']['neighborhood']['value']
    rescue
      puts "An error occurred!"
    end
  end
end