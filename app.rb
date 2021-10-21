require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/game'
require 'app/board_case'
require 'app/board'
require 'views/show'


#Application.new.perform
binding.pry