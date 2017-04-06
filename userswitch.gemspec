# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'userswitch/version'

Gem::Specification.new do |spec|
  spec.name          = "userswitch"
  spec.version       = Userswitch::VERSION
  spec.authors       = ["kodius"]
  spec.email         = ["kresimir.bojcic@krokodil.hr"]

  spec.summary       = "Userswitch is a Rails plugin for switching between commonly used roles and users. It's particularly useful for development and staging environments when you often need to switch between various accounts. It saves you from the hassle of logging in or out."
  spec.homepage      = "https://github.com/kodius/userswitch"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
