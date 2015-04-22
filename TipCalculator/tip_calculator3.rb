#tip_calculator3.rb

class Bill

	attr_reader :bill_before_tip, :tip_percent
	
	def initialize (bill_before_tip, tip_percent, num_of_people)
		@bill_before_tip = (bill_before_tip * 100)
		@tip_percent = tip_percent.to_f
		@num_of_people = num_of_people
	end

	def tip_in_cents
		(@tip_percent/100.0 * @bill_before_tip.to_f).round(0)
	end

	def total_bill
		tip_in_cents + @bill_before_tip
	end

	def bill_split
		(total_bill / @num_of_people) / 100
	end

end

def calculate_bill
	puts "How much is your bill? "
	bill_before_tip = gets.chomp.to_f
	puts "What percent would you like to tip?"
	tip_percent = gets.chomp
	puts "Num of people?"
	num_of_people = gets.chomp.to_i 
	test_calc = Bill.new(bill_before_tip, tip_percent, num_of_people)
	final_bill = test_calc.bill_split
	puts "Your bill of #{bill_before_tip} with at #{tip_percent}% tip comes to a total of #{final_bill}"
end

calculate_bill