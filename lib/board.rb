require_relative "stack"

class Board
    attr_reader :towers

    def initialize
        @towers = Array.new(3) { Stack.new }
        @towers[0].tower = [3,2,1]
    end

    def move(arr)
        tower_1,tower_2 = arr
        raise "out of bounds -- penalty kick!" if !tower_1.between?(0,2) || !tower_2.between?(0,2)
        raise "no disc :'(" if @towers[tower_1].tower.empty?
        if !@towers[tower_2].tower.empty? && @towers[tower_1].tower[-1] > @towers[tower_2].tower[-1]
            raise 'disc too big'
        end
        disc = @towers[tower_1].pop
        @towers[tower_2].add(disc)
    end

end