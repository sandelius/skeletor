# frozen_string_literal: true

ENV["RACK_ENV"] = "test"

require "bundler/setup"

if ENV["COVERAGE"] == "true"
  require "simplecov"
  require "codeclimate-test-reporter"

  SimpleCov.start do
    command_name "test"
    add_filter   "test"
  end
end

require "minitest/autorun"

Dir["#{__dir__}/support/**/*.rb"].each { |f| require f }

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "skeletor"

class Minitest::Spec
end
