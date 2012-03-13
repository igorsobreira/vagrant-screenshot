# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "vagrant-screenshot"
  s.version     = "0.1"
  s.authors     = ["Igor Sobreira"]
  s.email       = ["igor@igorsobreira.com"]
  s.homepage    = "https://github.com/igorsobreira/vagrant-screenshot"
  s.summary     = %q{Vagrant plugin to take screenshots of VMs}
  s.description = %q{Vagrant plugin to take screenshots of VMs}

  s.rubyforge_project = "vagrant-screenshot"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
