require 'sinatra'
require 'sinatra/reloader'
require './lib/album'
require './lib/song'
require 'pry'
also_reload 'lib/**/*.rb'
require 'pg'

DB = PG.connect({:dbname => 'volunteer_tracker'})
