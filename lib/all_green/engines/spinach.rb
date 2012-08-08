module AllGreen::Engines
	class SpinachEngine
		def self.load
			begin
				require 'spinach'
			rescue LoadError
				return false
			end
			true
		end

		def self.run
			cli = Spinach::Cli.new
			cli.init_reporter
			cli.run ? 0 : 1
		end
	end
end