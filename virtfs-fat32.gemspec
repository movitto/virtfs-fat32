# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'virtfs/fat32/version'

Gem::Specification.new do |spec|
  spec.name          = "virtfs-fat32"
  spec.version       = VirtFS::Fat32::VERSION
  spec.authors       = ["Mo Morsi"]
  spec.email         = ["mmorsi@redhat.com"]

  spec.summary       = "A Fat32 based filesystem module for VirtFS"
  spec.description   = %q{
  }
  spec.homepage      = ""
  spec.license       = "Apache-2.0"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "virtfs"
  spec.add_runtime_dependency "activesupport", '~> 5'
  spec.add_runtime_dependency "rufus-lru", '~> 1'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "factory_girl", '~> 4.7'
end
