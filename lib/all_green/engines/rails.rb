module AllGreen::Engines
  class RailsEngine < AllGreen::BaseEngine
		@engine_name = :rails_tests
    @engine_human_name = 'Rails Tests'

    def self.load_gem
      require 'rails'
      require 'rake/testtask'
      require 'rails/test_unit/sub_test_task'
    end

    def self.run_gem
      errors = []

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

      %w(units functionals integration).each do |task|
        begin
          Rake::Task[task].invoke
          rescue => e
            errors << { :task => task, :exception => e }
        end
      end

      if errors.any?
        log errors.map { |e| "Errors running test:#{e[:task]}! #{e[:exception].inspect}" }.join("\n")
        return false
      end
      true
    end
  end
end

