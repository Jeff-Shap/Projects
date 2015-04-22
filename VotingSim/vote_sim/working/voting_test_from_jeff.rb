module Voters


	def create
		puts "Please choose Politician or Person"
		voter_type = gets.chomp.downcase
		
		if voter_type.include? "politician"

			# @voters << voter_type
			puts "What's your name?"
			name = gets.chomp.downcase
			# @voters << name
			puts "Democrat or Republican?"
			affiliation = gets.chomp.downcase
			shovel_arr = [voter_type, name, affiliation]
			@voters << shovel_arr
			# @voters << affiliation
			# p @voters
			return decision
			
		elsif 	voter_type.include? "person"
			# @voters << voter_type
			puts "What's your name?"
			name = gets.chomp.downcase
			# @voters << name
			puts "Choose: Liberal, Conservative, Tea_Party, Socialist, Independent"
			affiliation = gets.chomp.downcase
			p shovel_arr = [voter_type, name, affiliation]
			@voters << shovel_arr
			# @voters << affiliation
			# p @voters
			return decision

		else	puts "Please make a choice: Politician or Person"

		end
	end

	def list
		# @voters.each_slice (3).to_a
		# @voters.each do |voter_type, name, affiliation|
		# 	puts "(#{voter_type}, #{name}, #{affiliation})"
		# 	# p @voters
		@voters.each do |x|
			print x[0],x[1],x[2],"\n"
			# return decision
		end

	end
end


loop do 
	puts "blalal"
	decision = gets.chomp
	MenuPrompt(decision)
end

def MenuPrompt(decision)
	if decision == 1
		Voters.create
	elsif 

		decision = gets.chomp
	




