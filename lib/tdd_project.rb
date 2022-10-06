class Array
    def my_uniq
        count = Hash.new(0)
        self.each {|ele| count[ele] += 1}
        self.select{|ele| count[ele] == 1}

    end
end