Gem::Specification.new do |spec|
  spec.name    = "skeletor"
  spec.version = File.read("lib/skeletor.rb")[/VERSION += +([\"])([\d][\w\.]+)\1/, 2]
  spec.summary = "The Ruby web application framework."

  spec.required_ruby_version     = ">= 2.3.0"
  spec.required_rubygems_version = ">= 2.5.0"

  spec.license = "MIT"

  spec.author   = "Tobias Sandelius"
  spec.email    = "tobias@sandeli.use"
  spec.homepage = "https://github.com/sandelius/skeletor"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "minitest", ">= 5.7.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "codeclimate-test-reporter"
end
