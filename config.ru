require 'rubygems'
require 'bundler'
#require 'pry'
Bundler.require

require './app'
require './models/hackathon'
require './models/user'

## WEB SCRAPPER STUFFS ##
# require 'nokogiri'
# require 'open-uri'

run HackathonApp
