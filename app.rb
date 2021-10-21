require 'bundler'
Bundler.require

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'app/application'
require 'app/player'
require 'app/game'
require 'app/board_case'
require 'app/board'
require 'views/show'
require 'views/welcome'

app = Application.new
app.perform
