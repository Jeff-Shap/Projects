# If a politician is a Republican, he has a
# - 90% chance of convincing a Tea Party voter to vote for him
# - 75% chance of convincing a Conservative voter to vote for him
# - 50% chance of convincing a Neutral voter to vote for him
# - 25% chance of convincing a Liberal voter to vote for him
# - 10% chance of convincing a Socialist voter to vote for him


$politicians = {"jeb" => "rep", "hil" => "dem"}
$voters = {"voter1" => "soc", "voter2" => "tea", "voter3" => "lib", "voter4" => "con", "voter5" => "nuet"}


module PercentRolls 

	def vote_roll
		rand(0..100)
	end

	def speech_roll
		[0,1].sample
	end

	def stump_speech(pol_array)
		
		politician_names = pol_array
		politician_names[0]
		politician_names[1]
		
	$voter_array.each do |x|
		
		case 
			when x[1] == "soc"
				speech_roll
				speech = ""
					if speech_roll == 0
						speech = politician_names[0]
					else 
						speech = politician_names[1]
					end

					if speech[1] == "rep"
						if vote_roll <= 10
							puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided to change my vote"
						else 
							puts puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
						end
					else
						puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
					end

			when x[1] == "lib"
				speech_roll
				speech = ""
					if speech_roll == 0
						speech = politician_names[0]
					else 
						speech = politician_names[1]
					end

					if speech[1] == "rep"
						if vote_roll <= 25
							puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided to change my vote"
						else 
							puts puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
						end
					else
						puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
					end

			when x[1] == "nuet"
				speech_roll
				speech = ""
					if speech_roll == 0
						speech = politician_names[0]
					else 
						speech = politician_names[1]
					end

					if speech[1] == "rep"
						if vote_roll <= 50
							puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided to change my vote"
						else 
							puts puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
						end
					else
						puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
					end	

			when x[1] == "con"
				speech_roll
				speech = ""
					if speech_roll == 0
						speech = politician_names[0]
					else 
						speech = politician_names[1]
					end

					if speech[1] == "rep"
						if vote_roll <= 75
							puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided to change my vote"
						else 
							puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
						end
					else
						puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
					end

			when x[1] == "tea"
				speech_roll
				speech = ""
					if speech_roll == 0
						speech = politician_names[0]
					else 
						speech = politician_names[1]
					end

					if speech[1] == "rep"
						if vote_roll <= 90
							puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided to change my vote"
						else 
							puts puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
						end
					else
						puts "#{x[0]}: I have seen #{speech[0]}'s speech, and have decided not to change my vote"
					end

			end
		end
	end
end
		
include PercentRolls


def vote
	$politician_array = $politicians.collect { |k, v| [k,v] }
	$voter_array = $voters.collect { |k,v| [k,v] }
	
	stump_speech($politician_array)

end


puts vote







# def rep_stump
# 	"REP STUMP"
# 	$voters.each do |x|
# 		p x
# 	end
# end

# def dem_stump
# 	"DEM STUMP"
# end


# def vote
# 	$politicians.each do |x|
# 		$current_politician = x[0]
# 		$current_party = x[1]
# 		if x[1] == "rep"
# 			rep_stump
# 		elsif x[1] == "dem"
# 			dem_stump
# 		else raise "INCORRECT INPUT DATA, vote"
# 		end
# 	end
# end



# def test
# 	p vote
# 	p rep_stump
# 	p dem_stump
# end

# test









# # $politicians = {"jeff"=>"dem", "jeb" => "con"}

# # module HashEdit
# # def hash_add(hash)
# # 		puts "New name?"
# # 		new_key = gets.chomp
# # 		puts "New party?"
# # 		new_value = gets.chomp
# # 	  temp_hash = {}
# # 	 	temp_hash = {new_key => new_value}
# # 	  temp_hash.merge!(hash)
# # 	end

	

# # def hash_delete(hash, delete_key)
# # 	temp_hash = hash
# # 	temp_names = hash.keys
# # 	temp_parties = hash.values
# # 	temp_names.each_with_index do |x, index|
# # 		if x.to_s == delete_key.to_s
# # 			temp_names
# # 			temp_names = temp_names - ["#{x}"]
# # 			temp_parties
# # 			temp_parties = temp_parties - [temp_parties[index]]
# # 			temp_array = temp_names.zip(temp_parties).flatten
# # 			return hash = Hash[*temp_array]
# # 			break
# # 		else
# # 			p "NO MATCH"
# # 		end
# # 	end
# # end

# # end

# # include Hashes

# # def update
# # 		puts "Entry (name) to change?"
# # 		name_to_change = gets.chomp
# # 		if $politicians.keys.include? name_to_change
# # 			p half_way = $politicians.hash_add($politicians)
# # 			p "FINAL", $politicians = half_way.hash_delete(half_way,name_to_change)
# # 		else
# # 			puts "NOT POLITICIAN"
# # 		end
		
# # 	end	



# # update



# # # # $hash1.each do |x|
# # # # 	print "*  Politician, ","#{x[0]}, #{x[1]}\n"
# # # # 	sleep(1)
# # # # end






# # # module HashEdit

# # # def hash_add(hash, new_key, new_value)
# # # 	  temp_hash = {}
# # # 	 	temp_hash[new_key] = new_value
# # # 	  return temp_hash.merge!(hash)
# # # 	end

# # # 	def hash_delete(hash, delete_key)
# # # 		temp_hash = hash
# # # 		temp_names = hash.keys
# # # 		temp_parties = hash.values
# # # 		temp_names.each_with_index do |x, index|
# # # 			if x.to_s == delete_key.to_s
# # # 				temp_names
# # # 				temp_names = temp_names - ["#{x}"]
# # # 				temp_parties
# # # 				temp_parties = temp_parties - [temp_parties[index]]
# # # 				temp_array = temp_names.zip(temp_parties).flatten
# # # 				return hash = Hash[*temp_array]
# # # 				break
# # # 			end
# # # 		end
# # # 	end
# # # end

# # # include HashEdit

# # # def edit_test
# # # 	$hash1 = hash_add($hash1, "JEFF", "DEM")
# # # 	hash_delete($hash1, "jeff")
# # # end

# # # p edit_test



# # # 	$hash1 = {"jeff" => "dem", "dan" => "con", "max" => "soc"}



# # # def hash_add(hash, new_key, new_value)
# # #   temp_hash = {}
# # #  	temp_hash[new_key] = new_value
# # #   return temp_hash.merge!(hash)
# # # end

# # # def hash_delete(hash, delete_key)
# # # 	p "HASH",hash
# # # 	p "DELETE",delete_key
# # # 	temp_hash = hash
# # # 	temp_names = hash.keys
# # # 	temp_parties = hash.values
# # # 	temp_names.each_with_index do |x, index|
# # # 		if x.to_s == delete_key.to_s
# # # 			temp_names
# # # 			temp_names = temp_names - ["#{x}"]
# # # 			temp_parties
# # # 			temp_parties = temp_parties - [temp_parties[index]]
# # # 			temp_array = temp_names.zip(temp_parties).flatten
# # # 			return hash = Hash[*temp_array]
# # # 			break
# # # 		else
# # # 			puts "NO MATCH"
# # # 		end
# # # 	end

# # # 	# if temp_hash.keys.include? delete_key
# # # 	# 	puts "Match"
# # # 	# else
# # # 	# 	puts "NO MATCH"
# # # 	# end
# # # end

# # # #hash_delete($hash1, "jeff")

# # # def change

# # # puts "Name to change: "
# # # name = "jeff"
	
# # # 	$hash1.keys.each do |x|
# # # 		if x == name
# # # 			puts "New Name?"
# # # 			new_name = "JEFF"
# # # 			puts "New Party?"
# # # 			new_party = "DEM"
# # # 			return p $hash1 = hash_add($hash1, new_name, new_party)
# # # 			#return p $hash1 = hash_delete($hash1, name)

# # # 		else
# # # 			puts " NO MATCH"
# # # 		end
# # # 	end
# # # end

# # # change

# # # # def change_test
# # # # 	end

# # # # p $hash1.keys
# # # # change
# # # # p $hash1



# # # hash_add($hash1, "JEFF", "DEM")

