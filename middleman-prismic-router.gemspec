# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-prismic-router"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Cameron Messinides"]
  s.email       = ["cameron.messinides@gmail.com"]
  # s.homepage    = "http://example.com"
  s.summary     = %q{Easily create a Middleman site from a Prismic.io repo}
  s.description = %q{Automatically pull documents from a Prismic.io API endpoint.
                     Manage one-to-one, one-to-many, and many-to-many relationships
                     between documents and pages. Expose any document to your
                     templates.}.gsub(/\s+/, " ").strip

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", ["~> 4.2", ">= 4.2.1"])
  s.add_runtime_dependency("prismic.io", ["~> 1.4", ">= 1.4.4"])
  
  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
