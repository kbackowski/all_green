module AllGreen::Engines
	class RSpecEngine
		def self.load
			require 'rspec'
			rescue LoadError
		end

		def self.run
			exit RSpec::Core::Runner.run ['spec/models/schedule_spec.rb']
		end
	end
end