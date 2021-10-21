require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/application'
require 'app/player'
require 'app/game'
require 'app/board_case'
require 'app/board'
require 'views/show'


#Application.new.perform
app = Application.new
app.perform
binding.pry
