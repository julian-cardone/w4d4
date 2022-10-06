require_relative 'board'

class Game

    attr_reader :board

    def initialize
        @board = Board.new
    end

    def process_input(string)
        return nil unless valid_input?(string)
        arr = string.split(",")
        arr.map {|num| num.to_i}
    end 

    def valid_input?(arg)
        arg.is_a?(String)
    end

    def print
        @board.towers.each {|stack| p stack.tower}
    end

    def play
        until @board.game_over?
            print
            puts "make a move by entering two numbers seperated by a comma"
            move = gets.chomp
            until valid_input?(move)
                puts "please enter a string of numbers"
                move = gets.chomp
            end
            board.move(process_input(move))
        end
        puts "you won!! :P"
    end
end

test = Game.new
test.play