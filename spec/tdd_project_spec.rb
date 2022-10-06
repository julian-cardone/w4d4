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

describe 