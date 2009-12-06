require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Contact.new.valid?
  end
end
