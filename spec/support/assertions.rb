# frozen_string_literal: true

module Minitest::Assertions
  def assert_file_exist(file)
    assert File.exist?(file), "Expected #{file} to be a file"
  end
end
