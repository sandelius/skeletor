# frozen_string_literal: true

require "spec_helper"

describe Skeletor do
  it "has a version file" do
    assert_file_exist File.expand_path("../../lib/skeletor/version.rb", __dir__)
  end

  it "has a version number" do
    assert_instance_of String, Skeletor::VERSION
  end
end
