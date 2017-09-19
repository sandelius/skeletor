# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:spec) do |t|
  t.pattern = "spec/**/*_spec.rb"
  t.libs.push "spec"
end

namespace :spec do
  task :coverage do
    ENV["COVERAGE"] = "true"
    Rake::Task["spec"].invoke
  end
end

task default: :spec
