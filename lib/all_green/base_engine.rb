module AllGreen
	class BaseEngine
		def self.load
			begin
				self.load_gem
			rescue LoadError
				return false
			end
			true
		end

		def self.run
			result = self.run_gem
			if result.is_a? Integer
				result == 1 ? result = false : result = true
			end
			!!result
		end
	end

	def self.load_gem
		raise 'Not Implemented'
	end

	def self.run_gem
		raise 'Not Implemented'
	end
end