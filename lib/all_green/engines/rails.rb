module AllGreen::Engines
  class RailsEngine < AllGreen::BaseEngine
    def self.load_gem
      require 'rails'
      require 'rake/testtask'
      require 'rails/test_unit/sub_test_task'
    end

    def self.run_gem
    	Rails::SubTestTask.new(:units) do |t|
    		t.libs << 'test'
		    t.pattern = 'test/unit/**/*_test.rb'
    	end

    	Rails::SubTestTask.new(:functionals) do |t|
    		t.libs << 'test'
		    t.pattern = 'test/functional/**/*_test.rb'
    	end

    	Rails::SubTestTask.new(:integration) do |t|
    		t.libs << 'test'
		    t.pattern = 'test/integration/**/*_test.rb'
    	end

    	Rake::Task[:units].invoke
    	Rake::Task[:functionals].invoke
    	Rake::Task[:integration].invoke
    end
  end
end

