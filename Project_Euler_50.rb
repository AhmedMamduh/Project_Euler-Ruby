#Problem 50

def prime_check(last_number)	
	(2..Math.sqrt(last_number).to_i).each do |current_number|
		while last_number % current_number == 0
			if last_number != current_number
				return false
				break
			else
				return true
			end
		end
	end
end

range = 1000000
primes_array = []

start_time = Time.now.to_i
(2..range).each do |number_check|
    if prime_check(number_check)
        primes_array << number_check
    end
end

summation_of_primes = 0
consequtive_primes = []

primes_array.each do |add|
	consequtive_primes << add
	summation_of_primes += add
	if summation_of_primes >= primes_array.last 
	 	summation_of_primes -= add
	 	consequtive_primes.delete(add)
	 	break
	end
end


duration = Time.now.to_i - start_time.to_i

puts "Largest primes below #{range} written as consequtive primes is #{summation_of_primes}."
puts "It consists of #{consequtive_primes.length} primes"
puts "Solution took: #{duration} seconds."




