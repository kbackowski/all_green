module AllGreen
	class BaseEngine
		class << self
			attr_accessor :engine_name 

			def load
				begin
					self.load_gem
				rescue LoadError
					return false
				end
				true
			end

			def run
				log("Running #{@engine_human_name}\n".colorize(:light_green))
				result = run_gem
				if result.is_a? Integer
					result == 1 ? result = false : result = true
				end
				!!result
			end

			def log(msg)
				puts msg
			end

			def load_gem
				raise 'Not Implemented'
			end

			def run_gem
				raise 'Not Implemented'
			end
		end
	end
end