require 'rubygems'
require 'bundler'
require 'pry'
Bundler.require

require './models/user'
require './models/hackathon'
require './helpers/session_helpers'
require './app'

## EXTRA STUFFS ##
# require 'nokogiri'
# require 'open-uri'
# require 'pony'

run HackathonApp
