require './player'
require './game'
require './question'
require './messages'

game = Game.new

Message.start_message
game.start_game