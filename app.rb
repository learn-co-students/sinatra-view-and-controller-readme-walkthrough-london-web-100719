require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    puts params
    erb :reverse
  end

  post '/reverse' do
    original = params[:"string"]
    @reversed = original.reverse

    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Bob', 'Russel', 'Dan', 'Malala Yousafzai']

    erb :friends
  end
end