require 'tdd_project'
require 'stack'
require 'board'

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

describe "#stock_picker" do
   it "has to be array" do
      expect{stock_picker(3)}.to raise_error('problem')
   end
   it "must be 1d array" do
      expect{stock_picker([[2]])}.to raise_error('another problem')
   end

   it "returns the highest difference of two elements" do
      expect(stock_picker([1,2,3,4,5,6,7])).to eq([0,6])
   end
   
   it "returns only for increases in stock price" do
      expect(stock_picker([-2,-1,0,-3])).to eq([0,2])
   end
end

describe Stack do
   subject(:stack){Stack.new}
   describe "initialize" do
      it "instantiates a stack" do
         expect(stack.tower.is_a?(Array)).to be true
      end
   end
   describe "#add" do
      it "adds an element to the top of the tower" do
         stack.add(3)
         expect(stack.tower).to eq([3])
      end   
      it "checks if element can be added" do
         stack.add(1)
         expect {stack.add(2)}.to raise_error('cannot put there')
      end
   end
   describe "#pop" do
      it "takes the top element off of the tower" do
         stack.add(3)
         expect(stack.pop).to eq(3)
         expect(stack.tower).to eq([])
      end
   end
end

describe Board do
   subject(:board){Board.new}

   describe "#initialize" do
      it "instantiates the board" do
         expect(board.towers.length).to eq(3) 
      end
      it "checks that a tower is 3,2,1" do
         expect(board.towers[0].tower).to eq([3,2,1])
      end
   end

   describe "#move" do
      it "takes something from the top on one stack and puts it on another" do
         board.move([0,1])
         expect(board.towers[0].tower).to eq([3,2])
         expect(board.towers[1].tower).to eq([1])
      end
      it "doesn't work if disc is too big for new tower" do
         board.move([0,1])
         expect{board.move([0,1])}.to raise_error('disc too big')
      end
      it "can't move if there's no disc" do
         expect{board.move([1,2])}.to raise_error("no disc :'(")
      end
      it "throws an error if indices are invalid" do
         expect{board.move([1,3])}.to raise_error("out of bounds -- penalty kick!")
      end
   end
end