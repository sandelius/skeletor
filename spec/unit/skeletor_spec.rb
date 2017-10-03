# frozen_string_literal: true

RSpec.describe Skeletor do
  it "has a version file" do
    expect(File.expand_path("../../lib/skeletor/version.rb", __dir__)).to be_a_file
  end

  it "has a version number" do
    expect(Skeletor::VERSION).to be_a(String)
  end
end
