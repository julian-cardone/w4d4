require_relative "stack"

class Board
    attr_reader :towers

    def initialize(num_discs = 3)
        @towers = Array.new(3) { Stack.new }
        (1..num_discs).each { |i| @towers[0].tower.unshift(i) }
        @full_tower = @towers[0].tower.dup
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

    def game_over?
        @towers[2].tower == @full_tower
    end

end