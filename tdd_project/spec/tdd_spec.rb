require "rspec"
require "tdd.rb"

describe "Array#my_uniq" do
    it "returns an array with no duplicates" do
        expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end

    it "does not modify original array" do
        copy = [1, 2, 1, 3, 3].dup
        copy.my_uniq
        expect(copy).to eq([1, 2, 1, 3, 3])
    end
end

describe "Array#two_sum" do
    it "returns element positions in order" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end

    it "returns elements in dictionary order" do
        expect([-1, 1, 2, 1, 1].two_sum).to eq([[0, 1], [0, 3], [0, 4]])
    end

    it "does not return duplicate pairs" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
end

describe "Array#my_tranpose" do
    rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ]
    
    cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
    ]

    it "should return an array where the rows are now columns" do
        expect(rows.my_tranpose).to eq(cols)
    end
end

describe "Array#stock_finder" do
    it "outputs the most profitable pair of days on which to first buy the stock and then sell the stock" do
        expect([35, 41, 29, 36, 45].stock_finder).to eq([2, 4])
    end
end

describe TowersOfHanoi do
    describe "initialize" do
        it "should take in a number of disks as an argument"
        expect(TowersOfHanoi.new
    end
end