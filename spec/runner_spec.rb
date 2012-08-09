require 'spec_helper'

class TestEngine1 < AllGreen::BaseEngine; end
class TestEngine2 < AllGreen::BaseEngine; end

describe AllGreen::Runner do
	describe '#run' do
		it 'should run all loaded engines' do
      subject.instance_variable_set(:@engines, [TestEngine1])
      TestEngine1.should_receive(:run).and_return(0)
      subject.run
    end

    it 'should return true when all engines returns 0' do
      TestEngine1.stub(:run).and_return(true)
      TestEngine2.stub(:run).and_return(true)
      subject.instance_variable_set(:@engines, [TestEngine1, TestEngine2])
      subject.run.should be_true
    end

    it 'should return false when any engine returns 1' do
      TestEngine1.stub(:run).and_return(true)
      TestEngine2.stub(:run).and_return(false)
      subject.instance_variable_set(:@engines, [TestEngine1, TestEngine2])
      subject.run.should be_false
    end
	end
end