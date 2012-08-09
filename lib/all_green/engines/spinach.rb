module AllGreen::Engines
	class SpinachEngine < AllGreen::BaseEngine
		def self.load_gem
			require 'spinach'
		end

		def self.run_gem
			cli = Spinach::Cli.new
			cli.init_reporter
			cli.run
		end
	end
end