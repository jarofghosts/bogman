require 'rubygems'
require 'main'
require './app.rb'
require 'bundler'

Bundler.require

run Sinatra::Application