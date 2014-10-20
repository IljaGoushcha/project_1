require 'rubygems'
require 'linkedin'

@client = LinkedIn::Client.new("75ai75x9sgytxk", "UIwoAB7IoIb1vBUr")
# @client = LinkedIn::Client.new(ENV["LINKEDIN_KEY"], ENV["LINKEDIN_SECRET"])
request_token = @client.request_token({}, :scope => "r_basicprofile")
rtoken = request_token.token
rsecret = request_token.secret
request_token.authorize_url
pin = 84722
# binding.pry
@client.authorize_from_request(rtoken, rsecret, pin)




# LINKEDIN_KEY=75ai75x9sgytxk
# LINKEDIN_SECRET=UIwoAB7IoIb1vBUr

@profile = @client.profile(:url => "http://www.linkedin.com/in/netherland")
