require 'test_helper'

class TypeOfReminderTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TypeOfReminder.new.valid?
  end
end
