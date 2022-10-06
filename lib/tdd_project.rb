class Array
    def my_uniq
        count = Hash.new(0)
        self.each {|ele| count[ele] += 1}
        selected = count.keys
    end

    def two_sum
        new_arr = []
        self.each_with_index do |ele,idx|
            self.each_with_index do |el,index|
                if index > idx && ele + el == 0
                    new_arr << [idx,index]
                end
            end
        end
        new_arr
    end

    def my_transpose
        return [[]] if self == [[]]
        raise "not a 2d array" unless self[0].is_a?(Array)
        raise "Not a square" if self.length != self[0].length
        new_arr = []
        (0...self.length).each do |i|
            new_sub_arr = []
            (0...self.length).each do |j|
                new_sub_arr << self[j][i]
            end
            new_arr << new_sub_arr
        end
        return new_arr
    end
end