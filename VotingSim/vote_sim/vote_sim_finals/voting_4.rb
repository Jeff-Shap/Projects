


# $politicians = {"jeb" => "rep", "hil" => "dem"}
# $voters = {"voter1" => "soc", "voter2" => "tea", "voter3" => "lib", "voter4" => "con", "voter5" => "nuet"}

module Vote

	def speech_roll
		speech_num = [0,1].sample
		if speech_num == 0
			 $speech = $politician_array[0]
		else 
			 $speech = $politician_array[1]
		end
	end

	def vote_roll
		rand(0..100)
	end

	$dem_votes = 0
	$rep_votes = 0

	def stump_speech(pol_array)	
		$politician_array = pol_array
		$voter_array.each do |x|

		case 
			when x[1] == "soc"
				speech_roll
				if $speech[1] == "rep"
					if vote_roll <= 10
						puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
						$rep_votes = $rep_votes + 1
					else 
						puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
						$dem_votes = $dem_votes + 1
					end	
				elsif $speech[1] == "dem"
					if vote_roll <= 90
						puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
						$dem_votes = $dem_votes + 1
					else
						puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
						$rep_votes = $rep_votes + 1
					end
				end

			when x[1] == "lib"
				speech_roll
					if $speech[1] == "rep"
						if vote_roll <= 25
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
							$rep_votes = $rep_votes + 1
						else 
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
							$dem_votes = $dem_votes + 1
						end
					elsif $speech[1] == "dem"
						if vote_roll <= 75
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
							$dem_votes = $dem_votes + 1
						else
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
							$rep_votes = $rep_votes + 1
						end
					end


				when x[1] == "nuet"
					speech_roll 
					if $speech[1] == "rep"
						if vote_roll <= 50
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
							$dem_votes = $dem_votes + 1
						else 
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
							$rep_votes = $rep_votes + 1
						end
					elsif $speech[1] == "dem"
						if vote_roll <= 50
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
							$dem_votes = $dem_votes + 1
						else
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
							$rep_votes = $rep_votes + 1
						end
					end

				when x[1] == "con"
					speech_roll
					if $speech[1] == "rep"
						if vote_roll <= 75
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
							$rep_votes = $rep_votes + 1
						else 
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
							$dem_votes = $dem_votes + 1
						end		
					elsif $speech[1] == "dem"
						if vote_roll <= 25
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
							$dem_votes = $dem_votes + 1
						else
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
							$rep_votes = $rep_votes + 1
						end
					end

				when x[1] == "tea"
				speech_roll
					if $speech[1] == "rep"
						if vote_roll <= 90
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
							$rep_votes = $rep_votes + 1
						else 
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
							$dem_votes = $dem_votes + 1
						end
					elsif $speech[1] == "dem"
						if vote_roll <= 10
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided to change my vote"
							$dem_votes = $dem_votes + 1
						else
							puts "#{x[0]}: I have seen #{$speech[0]}'s speech, and have decided not to change my vote"
							$rep_votes = $rep_votes + 1
						end
					end
				end
			end
		end
			
		def vote(pol_hash)
			$politician_array = pol_hash.collect { |k, v| [k,v] }
			$voter_array = $voters.collect { |k,v| [k,v] }
			stump_speech($politician_array)
			print "REP VOTES =",$rep_votes,"\n"   ###REMOVE THESE TWO LINES IF BREAK
			print "DEM VOTES =",$dem_votes
		end
	end
		
include Vote


# vote_final($politicians)




