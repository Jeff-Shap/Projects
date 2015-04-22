#vote_sim222.rb

# #new_vote_sim.rb

class VoteList
	
	def add
		puts "Politician or Voter?"
		p_or_v = gets.chomp.downcase
		if p_or_v == "politician"
			politician = Politicians.new.add
			politician.list

		elsif p_or_v == "voter"
			p Voter.new.add
		else raise "MenuPrompt, create, p_or_v input error"
		end
	end

end





class Politicians 
	attr_accessor :politicians
	
	@politicians = {}

	# def see_politicians
	# 	p @politicians
	# end
	def add
		print "Name: "
		name = gets.chomp
		print "Party: Dem or Rep? "
		party = gets.chomp
		@politicians = @politicians.merge({name => party})
	end

	def list
		p @politicians
	end

end





class Voter

	def see_voters
		p @voters
	end

	def add
		print "Name: "
		name = gets.chomp
		print "Politics: Lib, Con, Tea, Soc, Neutral? "
		party = gets.chomp
		print @voters = @voters.merge({name => party})
	end

end




def MenuPrompt(menu_input2) 
	if menu_input2 == "create"
		$testvote.add
	elsif menu_input2 == "list"
		$testvote.list
	else 
		p "MENU OPTION NOT DETECTED"
	end
end		



p $testvote = VoteList.new


loop do
	print "Create, list, update, or vote?"
	menu_input = gets.chomp.downcase
	MenuPrompt(menu_input)
end



# def test
# 	testvote = VoteList.new
# 	testvote.add("politician")
# 	testvote.list
# end

# test



