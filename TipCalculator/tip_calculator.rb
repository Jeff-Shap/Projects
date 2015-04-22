#tip_calculator.rb

class Bill

	attr_reader :bill_before_tip, :tip_percent
	
	def initialize (bill_before_tip, tip_percent)
		@bill_before_tip = bill_before_tip
		@tip_percent = tip_percent
		#@num_of_people = ""
	end

	def tip
		@tip_percent/100.0 * @bill_before_tip
	end

	def total_bill
		tip + @bill_before_tip
	end

end





def test
	p test = Bill.new(50, 10)
	p test.tip
	p test.total_bill
end

test
