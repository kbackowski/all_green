module AllGreen::Engines
	class RSpecEngine < AllGreen::BaseEngine
		def self.load_gem
			require 'rspec'
		end

		def self.run_gem
			RSpec::Core::Runner.run ['spec']
		end
	end
end