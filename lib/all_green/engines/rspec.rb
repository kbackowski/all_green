module AllGreen::Engines
	class RSpecEngine
		def self.load
			begin
				require 'rspec'
			rescue LoadError
				return false
			end
			true
		end

		def self.run
			RSpec::Core::Runner.run ['spec']
		end
	end
end