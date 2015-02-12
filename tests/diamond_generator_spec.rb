require 'rspec'
require '../lib/diamond_generator'

describe 'Diamond Generation' do

  before do
    @dg = DiamondGenerator.new
  end

  it 'should generate the diamond for A' do
    @dg.generate('A').should eq(['A'])
  end

  describe 'Generate B diamond' do
    it 'should have 3 rows' do
      @dg.generate('B').length.should eq(3)
    end
    it 'should have the correct first row' do
      @dg.generate('B').first.should eq(' A ')
    end
    it 'should have the correct last row' do
      @dg.generate('B').last.should eq(' A ')
    end
    it 'should have the correct middle row' do
      @dg.generate('B')[1].should eq('B B')
    end
  end

  describe 'Generate C diamond' do
    it 'should have the correct first and last rows' do
      @dg.generate('C').first.should eq('  A  ')
      @dg.generate('C').last.should eq('  A  ')
    end
    it 'should have 5 rows' do
      @dg.generate('C').length.should eq(5)
    end
    it 'should have the correct middle row' do
      @dg.generate('C')[2].should eq('C   C')
    end
    it 'should have the correct 2nd row' do
      @dg.generate('C')[1].should eq(' B B ')
    end
  end

  describe 'Generate D diamond' do
    it 'should have the correct first and last rows' do
      @dg.generate('D').first.should eq('   A   ')
      @dg.generate('D').last.should eq('   A   ')
    end
    it 'should have 7 rows' do
      @dg.generate('D').length.should eq(7)
    end
    it 'should have the correct middle row' do
      @dg.generate('D')[3].should eq('D     D')
    end
    it 'should have the correct 2nd row' do
      @dg.generate('D')[1].should eq('  B B  ')
    end
    it 'should have the correct 3rd row' do
      @dg.generate('D')[2].should eq(' C   C ')
    end
  end

  describe 'Acceptance test' do
    it 'should generate the diamond for E' do
      e_diamond = []
      e_diamond << '    A    '
      e_diamond << '   B B   '
      e_diamond << '  C   C  '
      e_diamond << ' D     D '
      e_diamond << 'E       E'
      e_diamond << ' D     D '
      e_diamond << '  C   C  '
      e_diamond << '   B B   '
      e_diamond << '    A    '

      @dg.generate('E').should eq(e_diamond)
    end
  end

end