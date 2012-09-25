require './config/env'
require 'sinatra'
require 'sinatra/activerecord'

get '/' do
	erb :index
end

get ':thing/is'
	erb :thinger
end

get ':thing/is/*'
	erb :thingify
end