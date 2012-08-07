require 'optparse'

module AllGreen
  class CommandLine
    def initialize(args = ARGV)
      @args = args
    end

    def run
      AllGreen::Runner.new.run
    end
  end
end