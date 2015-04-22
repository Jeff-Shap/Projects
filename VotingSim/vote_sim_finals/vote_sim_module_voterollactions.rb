#vote_sim_module_voterollactions.rb

load 'vote_sim_module_hash_edit.rb'
include HashEdit

module VoteRollActions

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
		system "clear"
		print "Compiling voter list\n"
		sleep(1)
		system "clear"
		print "Compiling voter list.\n"
		sleep(1)
		system "clear"
		print "Compiling voter list..\n"
		sleep(1)
		system "clear"
		print "Compiling voter list...\n"
		sleep(1)
		system "clear"
		print "Compiling voter list....\n"
		sleep(1)
		system "clear"
		print "Compiling voter list.....\n"
		sleep(1)
		system "clear"
		print "Compiling voter list.....\n"
		sleep(1)
		system "clear"
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

	def prog_exit
		system "clear"
		%x( say 'ladies and gentlemen, the 45th president of the United States of America, Mr. Frank Underwood!' )
		exit
	end

end