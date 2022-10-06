require 'tdd_project'

describe "#my_uniq" do 
   it "removes repeated elements" do
      expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
   end
end

describe "#two_sum" do
   it "find pairs of elements that sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
   end
end

describe "#my_transpose" do
   it "raises an error if the array is not a square" do
      expect{[[1,2],[3,4],[5,6]].my_transpose}.to raise_error("Not a square")
   end
   it "returns an empty array or 1 element array" do
      expect([[]].my_transpose).to eq([[]])
      expect([[1]].my_transpose).to eq([[1]])
   end
   it "raises an error if there are no subarrays" do
      expect{[1,2].my_transpose}.to raise_error("not a 2d array")
   end
   it "switches the rows and collumns of a 2d array" do
      expect([[1,2],[3,4]].my_transpose).to eq([[1,3],[2,4]])
   end

end