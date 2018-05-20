lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "redis_graph/version"

Gem::Specification.new do |spec|
  spec.name          = "redis_graph"
  spec.version       = RedisGraph::VERSION
  spec.authors       = ["Lewis Buckley"]
  spec.email         = ["lewis-buckley@cookpad.com"]

  spec.summary       = %q{Ruby client for the Redis Graph module}
  spec.homepage      = "https://www.github.com/lewispb/redis_graph-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "redis"
end
