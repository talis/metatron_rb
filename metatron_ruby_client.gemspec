# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "metatron_ruby_client/version"

Gem::Specification.new do |s|
  s.name        = "metatron_ruby_client"
  s.version     = MetatronClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ross Singer"]
  s.email       = ["rxs@talis.com"]
  s.homepage    = "https://github.com/talis/metatron_rb"
  s.summary     = "A ruby API wrapper for Metatron"
  s.description = "A client to utilise the bibliographic data and work set groupings in Metatron"
  s.license     = "Copyright Talis Education Ltd"


  s.add_runtime_dependency 'typhoeus', '~> 0.2', '>= 0.2.1'
  s.add_runtime_dependency 'json', '~> 1.4', '>= 1.4.6'

  s.add_development_dependency 'rspec', '~> 3.2', '>= 3.2.0'
  s.add_development_dependency 'vcr', '~> 2.9', '>= 2.9.3'
  s.add_development_dependency 'webmock', '~> 1.6', '>= 1.6.2'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.11'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
