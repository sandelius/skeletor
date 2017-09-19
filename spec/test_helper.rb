# frozen_string_literal: true

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
require "minitest/pride"

# Require support (helper) modules
Dir["./spec/support/**/*.rb"].each { |f| require f }

require "skeletor"

class Minitest::Spec
end
