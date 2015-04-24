class HoodsController < ApplicationController
  def index
    @hoods = Hood.all.order(:position)
  end
  def show
    @hood = Hood.find(params[:id])
    # refactor this
    @prior = Hood.find_by(position: (@hood.position) -1) || Hood.find_by(position: 34)
    @next = Hood.find_by(position: (@hood.position) +1) || Hood.find_by(position: 1)
    populate_demographics_info
  end

  private

  def populate_demographics_info
    begin
      info = HTTParty.get("http://www.zillow.com/webservice/GetDemographics.htm?zws-id=#{ENV['ZWS_ID']}&state=NY&city=NewYork&neighborhood=#{@hood.name.gsub(' ','')}")
      @income = info['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][0]['values']['neighborhood']['value']['__content__']
      @age = info['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][3]['values']['neighborhood']['value']
      @size = info['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][5]['values']['neighborhood']['value']
      @commute = info['demographics']['response']['pages']['page'][2]['tables']['table'][0]['data']['attribute'][6]['values']['neighborhood']['value']
    rescue => e
      raise "An error occurred!"
      puts e
    end
  end
end