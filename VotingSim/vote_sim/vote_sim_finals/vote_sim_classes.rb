#vote_sim_classes.rb

class Politician

	def add
		puts "Politician - Name: "
		name = gets.chomp
		puts "Party: "
		party = gets.chomp
		to_add = {name => party}
		$politicians = $politicians.merge(to_add)
	end
end



class Voter
	
	def add
		puts "Voter - Name: "
		@name = gets.chomp
		puts "Party: "
		@party = gets.chomp
		to_add = {@name => @party}
		$voters = $voters.merge(to_add)
	end
end