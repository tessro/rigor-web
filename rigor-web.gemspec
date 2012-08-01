# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rigor/web/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Paul Rosania"]
  gem.email         = ["paul.rosania@gmail.com"]
  gem.description   = %q{}
  gem.summary       = %q{A web analysis tool for the Rigor A/B testing framework.}
  gem.homepage      = "https://github.com/paulrosania/rigor-web"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rigor-web"
  gem.require_paths = ["lib"]
  gem.version       = Rigor::Web::VERSION

  gem.add_runtime_dependency "rigor",   ">= 0"
  gem.add_runtime_dependency "sinatra", ">= 1.3.0"
end
