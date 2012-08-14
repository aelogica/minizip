# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "minizip/version"

Gem::Specification.new do |s|
  s.name        = "minizip"
  s.version     = Minizip::VERSION
  s.authors     = ["Radamanthus Batnag and Eumir Gaspar"]
  s.email       = ["rad+eumir@aelogica.com"]
  s.homepage    = ""
  s.summary     = %q{A Ruby wrapper for the zip/unzip command line tools(for UNIX) and 7zip(for Windows)}
  s.description = %q{A Ruby wrapper for the zip/unzip command line tools(for UNIX) and 7zip(for Windows)}

  s.rubyforge_project = "minizip"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "aruba"
  s.add_development_dependency "minitest"
  s.add_development_dependency "pry"
  s.add_runtime_dependency "thor"
  s.add_runtime_dependency "activesupport"
end
