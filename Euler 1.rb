=begin
	설명
	1~1000사잉의 3과 5의 배수의 합(중복은 하나만)
=end
	
sum = 0
for num in (1..1000)
	if num % 3 == 0
		sum	+= num 
	elsif num % 5 == 0
		sum	+= num 
	end
end

puts sum

=begin
	풀이 
	등차 수열로 풀수 있다.
	합 Sn = n(a1 + an)/2 = n[2a1 + (n-1)d]/2
=end

def ArithmeticSequenceSub(initterm, commondifference, term)
	( term * ( 2*initterm + (term-1)*commondifference ) ) / 2
end

sum3 = ArithmeticSequenceSub(3, 3, ( 1000/3 ).round )
sum5 = ArithmeticSequenceSub(5, 5, ( 1000/5 ).round )
sum15 = ArithmeticSequenceSub(15, 15, ( 1000/15 ).round )

puts sum3 + sum5 - sum15