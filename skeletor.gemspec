# frozen_string_literal: true

require File.expand_path("../lib/skeletor/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name = "skeletor"
  spec.version = Skeletor::VERSION
  spec.summary = "The Ruby skeleton gem."

  spec.required_ruby_version = ">= 2.4.0"
  spec.required_rubygems_version = ">= 2.5.0"

  spec.license = "MIT"

  spec.author = "Tobias Sandelius"
  spec.email = "tobias@sandeli.us"
  spec.homepage = "https://github.com/sandelius/skeletor-rb"

  spec.files = `git ls-files -z`.split("\x0")
  spec.test_files = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
