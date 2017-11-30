class CreditCheck
  def credit_check(card_number)
    result = 0

    card_number.split("").reverse.each_with_index do |num, i|
      if i.odd? && (num.to_i * 2) > 9
        double = num.to_i * 2
        result += double.digits.reduce(:+)
      elsif i.odd?
        result += num.to_i * 2
      else
        result += num.to_i
      end
    end

    if result % 10 == 0
      "Number is valid!"
    else
      "Number is invalid!"
    end

  end
end

# valid = ["5541808923795240", "4024007136512380", "6011797668867828"]
# invalid = ["5541801923795240", "4024007106512380", "6011797668868728"]

# 3.times do |num|
#   credit_check(valid[num])
# end

# 3.times do |num|
#   credit_check(invalid[num])
# end



