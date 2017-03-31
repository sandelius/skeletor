# frozen_string_literal: true

require "spec_helper"

RSpec.describe Skeletor do
  it "has a version number" do
    expect(Skeletor::VERSION).to be_a(String)
  end
end