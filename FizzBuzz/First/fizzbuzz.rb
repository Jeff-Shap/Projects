#hw.rb



def fizz_buzz_fizzbuzz (array)
	array.each_with_index { |num,index|
	if num == 0
		puts num
		else if index%15 == 0
			puts "FIZZBUZZ"
		else if index%5 == 0
			puts "BUZZ"
		else if index%3 == 0
			puts "FIZZ"
		else
			puts num
		end
		end
		end
	end
	}
end

arr = (0..100)
puts fizz_buzz_fizzbuzz(arr)

