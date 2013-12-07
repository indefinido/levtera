# encoding: utf-8

$:.push File.expand_path("../lib", __FILE__)

require 'levtera/version'

Gem::Specification.new do |gem|
  gem.name          = "levtera"
  gem.version       = Levtera::VERSION
  gem.summary       = %q{Levtéra (lev = move, téra = straight). The core functionality of Vehicle domain.}
  gem.description   = %q{The core domain concerns for Vehicles (Makes, Versions, Models, Plates).}
  gem.license       = "WTFP"
  gem.authors       = ["Heitor Salazar Baldelli"]
  gem.email         = "heitor@indefini.do"
  gem.homepage      = "https://rubygems.org/gems/levtera"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency "rails", ">= 3"
  gem.add_dependency "mongoid"

  # When using levtera/rspec
  gem.add_dependency 'mongoid-rspec'


  gem.add_development_dependency 'rdoc', '~> 3.0'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'

  gem.add_development_dependency 'rails'
  gem.add_development_dependency 'awesome_print'
  gem.add_development_dependency 'fabrication'
  gem.add_development_dependency 'forgery'
  gem.add_development_dependency 'database_cleaner'
  gem.add_development_dependency 'rspec-rails'
  gem.add_development_dependency 'growl'
  gem.add_development_dependency 'email_spec'
  gem.add_development_dependency 'pry-rescue'
  gem.add_development_dependency 'pry-stack_explorer'
  gem.add_development_dependency 'pry-rails'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'sqlite3'
end
