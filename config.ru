require 'rubygems'
require 'bundler'
#require 'pry'
Bundler.require

require './app'
require './models/hackathon'
require './models/user'

run HackathonApp
