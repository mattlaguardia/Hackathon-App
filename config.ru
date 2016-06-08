require 'rubygems'
require 'bundler'
require 'pry'
Bundler.require

require './app'
# require './controllers/auth'
require './models/hackathon'
require './models/user'

run HackathonApp
