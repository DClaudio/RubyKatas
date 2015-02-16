require 'rspec'
require '../lib/potter_books_calculator'

describe 'Potter Books Price Calculator' do

  describe 'The price for identical books' do
    it 'should return the price for 1x book' do
      expect(final_price([1,0,0,0,0])).to eq(8)
      expect(final_price([0,1,0,0,0])).to eq(8)
      expect(final_price([0,0,0,1,0])).to eq(8)
    end
    it 'should return the price for multiple identical books' do
      expect(final_price([2,0,0,0,0])).to eq(16)
      expect(final_price([0,3,0,0,0])).to eq(24)
      expect(final_price([0,0,0,4,0])).to eq(32)
    end
  end

  describe 'The price for two different books' do
    it 'should return the price for 2x different books' do
      expect(final_price([1,1,0,0,0])).to eq(15.2)
      expect(final_price([0,1,0,0,0])).to eq(8)
      expect(final_price([0,0,0,1,0])).to eq(8)
    end
    it 'should return the price for 2x different books and one identical' do
      #expect(final_price([2,1,0,0,0])).to eq(23.2)
      #expect(final_price([0,1,0,0,0])).to eq(8)
      #expect(final_price([0,0,0,1,0])).to eq(8)
    end
  end

  describe 'The price for three different books' do
    it 'should return the price for 3x different books' do
      expect(final_price([1,1,1,0,0])).to eq(21.6)
      expect(final_price([0,1,1,1,0])).to eq(21.6)
      expect(final_price([1,0,1,0,1])).to eq(21.6)
    end
  end


end


=begin

  The Potter Kata is about five different books. The price of a single book is 8 EUR.
  For two different books one receives a discount of 5%.
  For three different books the discount is 10%.
  For four different books the discount is 20% and for five different books the discount is 25%.
  The problem of the Potter Kata is to calculate the minimum price for a list of books.
  Each type of the five books might occur zero, one or more times in this list.

=end
