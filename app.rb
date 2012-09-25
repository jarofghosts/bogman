require 'sinatra'
require 'sinatra/activerecord'
require './config/env'

class Thing < ActiveRecord::Base
  def self.whatis(thing_name)
    where(:thing => thing_name).first
  end
end

get '/' do
	erb :index
end

post '/:thing/is/:description' do
  thing = Thing.new do |t|
    t.thing = params[:thing]
    t.description = params[:description]
  end
  thing.save
  redirect to( '/' + params[:thing] + '/is')
end

get '/:thing/is' do
  Thing.whatis(params[:thing])
end

delete '*' do
  "nope.avi"
end