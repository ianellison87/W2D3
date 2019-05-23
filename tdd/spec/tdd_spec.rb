require 'rspec'
require 'tdd'

describe Array do

  describe '#my_uniq' do
    it "should return an array without dupes" do
      expect([1,2,2].my_uniq).to eq([1,2])  
    end 
  end

  describe "#two_sum" do 
    it "should return pairs of indices that sum to 0" do
      expect([1,-1,0,5].two_sum).to eq([[0,1]])
    end
  end

  describe "#my_transpose" do 
    it "should transpose a two-dimensional array" do 
      expect([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
      ].my_transpose). to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
    end
  end

  describe "#stock_picker" do
    it "should return the indices of the most profitable days" do
      expect([100,50,1000,500,90].stock_picker).to eq([2,4])
    end
  end


end