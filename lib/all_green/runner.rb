require 'rspec'

module AllGreen
	class Runner
		def initialize

		end

		def run
			RSpec::Core::Runner.run ['spec']
		end
	end
end