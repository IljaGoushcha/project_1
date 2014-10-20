class HomeController < ApplicationController

  def index
    params = { category: '1',
                   city: 'London',
                country: 'GB',
                 status: 'upcoming',
                 format: 'json',
                   page: '1'}
    meetup_api = MeetupApi.new
    binding.pry
    @events = JSON.parse(meetup_api.open_events(params))
  end

 end
