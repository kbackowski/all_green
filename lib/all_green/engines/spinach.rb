module AllGreen::Engines
	class SpinachEngine < AllGreen::BaseEngine
		@engine_name = :spinach
		@engine_human_name = 'Spinach'

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