# -*- encoding: utf-8 -*-
require File.expand_path('../lib/all_green/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["kbackowski"]
  gem.email         = ["kbackowski@gmail.com"]
  gem.description   = %q{Run all your test suites (rspec, cucumber, rails unit tests and more...) using one command}
  gem.summary       = %q{Run all your test suites (rspec, cucumber, rails unit tests and more...) using one command}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "all_green"
  gem.require_paths = ["lib"]
  gem.version       = AllGreen::VERSION
end
