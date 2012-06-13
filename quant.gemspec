# -*- encoding: utf-8 -*-
require File.expand_path('../lib/quant/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Javier Vidal"]
  gem.email         = ["javier.vidal@bolsanova.com"]
  gem.description   = %q{Quantitative Trading}
  gem.summary       = %q{Quantitative Trading}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "quant"
  gem.require_paths = ["lib"]
  gem.version       = Quant::VERSION
end
