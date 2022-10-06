class Stack

    attr_accessor :tower

    def initialize
        @tower = []
    end

    def add(ele)
        if !@tower.empty?
            raise 'cannot put there' if ele > @tower[-1]
        end
        @tower << ele
    end

    def pop
        @tower.pop
    end

end