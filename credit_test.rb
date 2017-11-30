require 'minitest/autorun'
require 'minitest/pride'
require './credit_check'

class CreditCheckTest < Minitest::Test

  attr_reader :credit

  def setup
    @credit = CreditCheck.new 
  end

  def test_instance_of_credit_check
    assert_instance_of CreditCheck, credit
  end

  def test_valid_card_number_1
    assert_equal "Number is valid!", credit.credit_check("5541808923795240")
  end

  def test_valid_card_number_2
    assert_equal "Number is valid!", credit.credit_check("4024007136512380")
  end

  def test_invalid_card_number_3
    assert_equal "Number is invalid!", credit.credit_check("5541801923795240")
  end

  def test_invalid_card_number_4
    assert_equal "Number is invalid!", credit.credit_check("4024007106512380")
  end

end