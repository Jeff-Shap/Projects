#vote_sim.rb

class Vote

	def view_politicians
		@politicians
	end

	def view_voters
		@voters.keys.each_with_index do |x, index|
			print "Name: ",x," Politics: #{@voters.values[index]}\n\n"
			sleep(1)
		end
		@politicians.keys.each_with_index do |x, index|
			print "Name: ",x," Politics: #{@politicians.values[index]}\n\n"
			sleep(1)
		end
	end 

	def add(name,party)
		temp_hash = {name => party}
		if self.class == Politicians
			 @politicians.merge!(temp_hash)
		elsif self.class == Voters
			 @voters.merge!(temp_hash)
		else raise "ADD METHOD arg_to_add CLASS ERROR"
	end

	def edit(name)
		if self.class == Politicians
			if @politicians.keys.include? name
				puts "EDITING POLITICIAN INFO...\nNew Name?"
				name = gets.chomp
				puts "New Party?"
				party = gets.chomp
				return {name => party}
			else
				raise "NO SUCH POLITICIAN TO EDIT"
			end
		elsif self.class == Voters
			if @voters.keys.include? name
				puts "EDITING VOTER INFO...\nNew Name?"
				name = gets.chomp
				puts "New Politics?"
				politics = gets.chomp
				return {name => politics}
			else
				raise "NO SUCH VOTER TO EDIT"
			end
		else
			raise "EDIT ERROR - INCORRECT CLASS"
			end
		end			
	end
	

	puts "What would you like to do? Create, list, update, or vote?"
	
	while @input = gets.chomp.downcase
		if @input == "create"
			puts "CREATE DETECTED.....\nWhat would you like to create, Politician or Person?"
			pol_or_per = gets.chomp.downcase
			if pol_or_per == "politician"
				puts "CREATE POLITICIAN DETECTED"
				politician1 = Politician.new
			elsif pol_or_per == "person"
				puts "CREATE PERSON DETECTED"
			else 
				puts "INCORRECT VOTER TYPE...."
			end
		elsif @input == "list"
			puts "LIST DETECTED"
		elsif @input == "update" 
			puts "UPDATE DETECTED"
		elsif @input == "vote"
			puts "VOTE DETECTED"
		else
			puts "INCORRECT ENTRY....What would you like to do?"
		end
	end

end


class Politicians < Vote
	attr_accessor :politicians
	def initialize
		@politicians = {}
	end
	def see_politicians
		p @politicians
	end
end

class Voters < Vote
	attr_accessor :voters
	def initialize
		@voters = {}
	end
end

vote_test = Vote.new