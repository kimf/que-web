# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "que-web"
  spec.version       = "0.4.1"
  spec.authors       = ["Jason Staten"]
  spec.email         = ["jstaten07@gmail.com"]
  spec.summary       = %q{A web interface for the que queue}
  spec.description   = %q{A web interface for the que queue}
  spec.homepage      = "https://github.com/statianzo/que-web"
  spec.license       = "BSD"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "que", "~> 0.11"
  # spec.add_dependency "sinatra", "~> 1.4.7"
  spec.add_dependency "rack", "~> 2.x"
  spec.add_dependency "erubis"

  spec.add_development_dependency "bundler", ">= 1.3.0"
  spec.add_development_dependency "rake", "~> 10.5"
  spec.add_development_dependency "minitest", "~> 5.4"
end
