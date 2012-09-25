require 'sinatra'
require 'sinatra/activerecord'
require './config/env'

get '/' do
	erb :index
end