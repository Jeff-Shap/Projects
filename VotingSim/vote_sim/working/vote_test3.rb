#vote_test3.rb

$politicians = {}
$voters = {}


################
module HashEdit
def hash_add(hash)
		puts "New name?"
		new_key = gets.chomp
		puts "New party?"
		new_value = gets.chomp
	  temp_hash = {}
	 	temp_hash = {new_key => new_value}
	  temp_hash.merge!(hash)
	end

	

def hash_delete(hash, delete_key)
	temp_hash = hash
	temp_names = hash.keys
	temp_parties = hash.values
	temp_names.each_with_index do |x, index|
		if x.to_s == delete_key.to_s
			temp_names
			temp_names = temp_names - ["#{x}"]
			temp_parties
			temp_parties = temp_parties - [temp_parties[index]]
			temp_array = temp_names.zip(temp_parties).flatten
			return hash = Hash[*temp_array]
			break
		end
	end
end
end


####################

module VoteRollActions
	include HashEdit
	
	def add 
		puts "VOTEROLL - ADD - Politician or Voter?"
		p_or_v = gets.chomp.downcase
		if p_or_v == "politician"
			Politician.new.add
		elsif p_or_v == "voter" 
			Voter.new.add
		else "Try again"
		end
	end	

	def update
		puts "VOTERROLL - EDIT - Entry (name) to change?"
		name_to_change = gets.chomp
		if $politicians.keys.include? name_to_change
			half_way = $politicians.hash_add($politicians)
			$politicians = half_way.hash_delete(half_way,name_to_change)
		elsif $voters.keys.include? name_to_change
			half_way = $voters.hash_add($voters)
			$voters = half_way.hash_delete(half_way,name_to_change)
		else
			raise "UPDATE NAME ERROR"
		end
	end	

	def list
		# system "clear"
		# print "Compiling voter list\n"
		# sleep(1)
		# system "clear"
		# print "Compiling voter list.\n"
		# sleep(1)
		# system "clear"
		# print "Compiling voter list..\n"
		# sleep(1)
		# system "clear"
		# print "Compiling voter list...\n"
		# sleep(1)
		# system "clear"
		# print "Compiling voter list....\n"
		# sleep(1)
		# system "clear"
		# print "Compiling voter list.....\n"
		# sleep(1)
		# system "clear"
		# print "Compiling voter list.....\n"
		# sleep(1)
		# system "clear"
		print "Compiling voter list.....\n\n"
		$politicians.each do |x|
			print "   * Politician, ","#{x[0]}, #{x[1]}\n"
			sleep(2)
		end
		print "\n\n"
		$voters.each do |x|
			print "   * Voter, ","#{x[0]}, #{x[1]}\n"
			sleep(2)
		end
	end
end


#########################

include VoteRollActions


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


def MenuPrompt (input)
	include VoteRollActions
	case input 
	when "create"
		VoteRollActions.add
	when "list"
		VoteRollActions.list
	when "update"
		VoteRollActions.update
	else "Please try again....create, list, update, or vote?"
	end
end




loop do
	print "Create, list, update, or vote?"
	menu_input = gets.chomp.downcase
	MenuPrompt(menu_input)
end



# def add_test
# 	test_politician = Politician.new
# 	test_politician.add
# 	test_politician2 = Politician.new
# 	test_politician2.add
# 	test_voter = Voter.new
# 	test_voter.add
# 	test_voter2 = Voter.new
# 	test_voter.add 
# end

# add_test

# def change_test
# 	end