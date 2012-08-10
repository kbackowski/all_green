module AllGreen::Engines
  class CucumberEngine < AllGreen::BaseEngine
    def self.load_gem
      require 'cucumber'
    end

    def self.run_gem
      # Cucumber returns true when fails and false when succeed
      !Cucumber::Cli::Main.execute(ARGV)
    end
  end
end

