require 'rspec'

module AllGreen
	class Runner
		def initialize
			@engines = []
			load_engines
		end

		def run
			@engines.each(&:run)
		end

		private

		def load_engines
			AllGreen::Engines.constants.each do |engine_constant|
				load_engine AllGreen::Engines.const_get(engine_constant, inherit = false)
			end
		end

		def load_engine(engine)
			@engines << engine if engine.load
		end
	end
end