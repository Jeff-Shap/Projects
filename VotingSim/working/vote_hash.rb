class MenuOptions

	def view_politicians
		@politicians
	end

	def view_voters
		@voters
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
end

class Politicians < MenuOptions
	attr_accessor :politicians
	def initialize
		@politicians = {}
	end
	def see_politicians
		p @politicians
	end
end



def add_test
	test_politicians = Politicians.new
	test_politicians.add("Test1 Politician", "DEM")
	test_politicians.add("Test2 Politician", "REP")
	test_politicians.add("Test3 Politician", "REP")
	test_politicians.add("Test4 Politician", "DEM")
	p test_politicians.view_politicians
	p test_politicians.class
end

add_test