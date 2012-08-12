require 'spec_helper'

class TestEngine < AllGreen::BaseEngine
  @engine_name = :test_engine
end

describe AllGreen::BaseEngine do
  describe '.load' do
    it 'should invoke .load_gem' do
      TestEngine.should_receive(:load_gem)
      TestEngine.load
    end

    it 'should return true when .load_gem is successful' do
      TestEngine.stub(:load_gem)
      TestEngine.load.should be_true
    end
    
    it 'should catch LoadError exception and return false' do
      TestEngine.stub(:load_gem).and_raise(LoadError)
      TestEngine.load.should be_false
    end
  end

  describe '.run' do
    it 'should invoke .run_gem' do
      TestEngine.should_receive(:run_gem)
      TestEngine.run
    end

    it 'should convert exit code 0 into true' do
      TestEngine.should_receive(:run_gem).and_return(0)
      TestEngine.run.should be_true
    end

    it 'should convert exit code 1 into false' do
      TestEngine.should_receive(:run_gem).and_return(1)
      TestEngine.run.should be_false
    end

    it 'should convert return value into boolean' do
      TestEngine.should_receive(:run_gem).and_return(nil)
      TestEngine.run.should be_false
    end
  end
end