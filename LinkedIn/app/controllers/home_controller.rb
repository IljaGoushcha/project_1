class HomeController < ApplicationController

  def index
    @client = LinkedIn::Client.new(ENV["LINKEDIN_KEY"], ENV["LINKEDIN_SECRET"])
    @client.authorize_from_access("210097aa-fed6-4adc-9929-fe0192f0c60e", "d0713c6e-0f47-4816-a8aa-c987a4c61ee7")
    @profile = @client.profile(:url => "http://www.linkedin.com/in/netherland")
  end

end
