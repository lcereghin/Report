require 'test_helper'

class AccidentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Accident.new.valid?
  end
end
