# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nesta-plugin-blogazine/version"

Gem::Specification.new do |s|
  s.name        = "nesta-plugin-blogazine"
  s.version     = Nesta::Plugin::Blogazine::VERSION
  s.authors     = ["Graham Ashton"]
  s.email       = ["graham@effectif.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "nesta-plugin-blogazine"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency("nesta", ">= 0.9.10")
  s.add_development_dependency("rake")
nt"
end
