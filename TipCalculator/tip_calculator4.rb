

class Bill

	attr_reader :bill_before_tip, :tip_percent
	
	def initialize (bill_before_tip, tip_percent, num_of_people)
		@initial_bill = bill_before_tip
		@bill_before_tip = (bill_before_tip * 100)
		@tip_percent = tip_percent.to_f
		@num_of_people = num_of_people
		@final_bill = []
	end

	def tip_in_cents
		(@tip_percent/100.0 * @bill_before_tip.to_f).round(0)
	end

	def total_bill
		tip_in_cents + @bill_before_tip
	end

	def bill_split
		@final_bill = (total_bill / @num_of_people) / 100
	end

	def bill_per_person
		if bill_split % @num_of_people == 0
			"Your bill of #{@initial_bill} with a #{tip_percent}% tip divided by #{@num_of_people} people comes to a total of #{@final_bill} (per person)."
		else
			"Your bill of #{@initial_bill} with a #{tip_percent}% tip divided by #{@num_of_people} cannont be evenly split. Each person will pay #{@final_bill} and one person will have to pay an extra penny."
		end

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
	p final_bill = test_calc.bill_per_person
end

calculate_bill