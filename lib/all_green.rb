require 'colorize'
require 'all_green/version'
require 'all_green/base_engine'
require 'all_green/command_line'
require 'all_green/runner'

Gem.find_files('all_green/engines/*.rb').each { |file| require file }

module AllGreen
  
end
