sum = 0
for num in (1...1000)
	if num % 3 == 0
		sum	+= num 
	elsif num % 5 == 0
		sum	+= num 
	end
end

puts sum