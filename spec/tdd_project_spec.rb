
describe "#my_uniq" do 
 it "removes repeated elements" do
    expect([1,2,1,3,3].uniq).to eq([1,2,3])
 end
end