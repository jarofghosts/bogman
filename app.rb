require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './config/env'

class Thing < ActiveRecord::Base
end

get '/' do
	erb :index
end

post '/:thing/is/:definition' do
  thing = Thing.create( :thing => params[:thing], :definition => params[:definition]) unless Thing.exists?(:thing => params[:thing])
  Thing.where(:thing => params[:thing]).to_json
end

get '/:thing/is' do
  Thing.where(:thing => params[:thing]).to_json
end

delete '*' do
  "nope.avi"
end