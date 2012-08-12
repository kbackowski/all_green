require 'rspec'

module AllGreen
	class Runner
		def initialize(options = {})
			@options = options
			@options[:order] ||= [:rspec, :rails_tests, :cucumber, :spinach]

			@engines = []
			load_engines
			sort_engines
		end

		def run
			@engines.map(&:run).all?
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

		def sort_engines
			@engines.sort_by! { |e| @options[:order].index(e.engine_name) || 99 }
		end
	end
end