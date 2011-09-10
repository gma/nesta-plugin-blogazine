# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nesta-plugin-blogazine/version"

Gem::Specification.new do |s|
  s.name        = "nesta-plugin-blogazine"
  s.version     = Nesta::Plugin::Blogazine::VERSION
  s.authors     = ["Graham Ashton"]
  s.email       = ["graham@effectif.com"]
  s.homepage    = ""
  s.summary     = %q{Art directed blog support for Nesta}
  s.description = <<-EOF
Art directed blogs (or "blogazines") use a different design on every
page. It's easy to implement with Nesta, but easier still if you install
this plugin.
  EOF

  s.rubyforge_project = "nesta-plugin-blogazine"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency("nesta", ">= 0.9.11")
  s.add_development_dependency("rake")
end
