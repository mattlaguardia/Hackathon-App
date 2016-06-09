require 'rubygems'
require 'bundler'
require 'pry'
Bundler.require

require './app'
require './models/hackathon'
require './models/user'

## EXTRA STUFFS ##
# require 'nokogiri'
# require 'open-uri'
# require 'pony'

run HackathonApp
