require 'rubygems'
require 'linkedin'
require 'pry'

@client = LinkedIn::Client.new("75ai75x9sgytxk", "UIwoAB7IoIb1vBUr")
# @client = LinkedIn::Client.new(ENV["LINKEDIN_KEY"], ENV["LINKEDIN_SECRET"])
# request_token = @client.request_token({}, :scope => "r_basicprofile")
# rtoken = request_token.token
# rsecret = request_token.secret
# request_token.authorize_url
# pin = 84722
# @client.authorize_from_request(rtoken, rsecret, pin)

# ["210097aa-fed6-4adc-9929-fe0192f0c60e", "d0713c6e-0f47-4816-a8aa-c987a4c61ee7"]
@client.authorize_from_access("210097aa-fed6-4adc-9929-fe0192f0c60e", "d0713c6e-0f47-4816-a8aa-c987a4c61ee7")


# LINKEDIN_KEY=75ai75x9sgytxk
# LINKEDIN_SECRET=UIwoAB7IoIb1vBUr

@profile = @client.profile(:url => "http://www.linkedin.com/in/netherland")

puts @profile.first_name
