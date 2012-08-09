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
			self.run_gem ? 0 : 1
		end
	end
end