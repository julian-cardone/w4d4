class Stack

    attr_reader :tower

    def initialize
        @tower = []
    end

    def add(ele)
        @tower << ele
    end

    def pop
        @tower.pop
    end

end