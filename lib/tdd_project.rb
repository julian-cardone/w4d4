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
end