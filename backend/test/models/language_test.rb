require "test_helper"

class LanguageTest < ActiveSupport::TestCase
  test "should not save language without name" do
    language = Language.new
    assert_not language.save
  end
end
