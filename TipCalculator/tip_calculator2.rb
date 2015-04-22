#tip_calculator2.rb

#tip_calculator.rb

class Bill

	attr_reader :bill_before_tip, :tip_percent
	
	def initialize (bill_before_tip, tip_percent, num_of_people)
		@bill_before_tip = bill_before_tip
		@tip_percent = tip_percent
		@num_of_people = num_of_people
	end

	def tip
		@tip_percent/100.0 * @bill_before_tip
	end

	def total_bill
		tip + @bill_before_tip
	end

	def bill_split
		total_bill / @num_of_people
	end

end

def calculate_bill
	puts "Bill? "
	bill_before_tip = gets.chomp.to_f 
	puts "Percent? "
	tip_percent = gets.chomp.to_f
	puts "Num of people?"
	num_of_people = gets.chomp.to_i 
	test_calc = Bill.new(bill_before_tip, tip_percent, num_of_people)
	p test_calc.bill_split
end

calculate_bill

# def test
# 	p test = Bill.new()
# 	p test.tip
# 	p test.total_bill
# 	p test.bill_split
# end

# test
