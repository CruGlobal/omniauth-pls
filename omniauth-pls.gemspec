# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/pls/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Josh Starcher", "David Raffensperger"]
  gem.email         = ["josh.starcher@gmail.com", "draff8660@gmail.com"]
  gem.description   = %q{PLS strategy for omniauth}
  gem.summary       = %q{PLS for omniauth}
  gem.homepage      = 'https://github.com/CruGlobal/omniauth-pls'
  gem.license = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-pls"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::PLS::VERSION

  gem.add_runtime_dependency 'omniauth-oauth2'
  gem.add_runtime_dependency 'multi_json'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'
end
