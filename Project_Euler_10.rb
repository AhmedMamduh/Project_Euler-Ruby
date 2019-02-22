#Problem 10

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

range = 2000000
primes_array = []

start_time = Time.now.to_i
(2..range).each do |number_check|
    if prime_check(number_check)
        primes_array << number_check
    end
end

summation_of_primes = 0
primes_array.each do |add|
	summation_of_primes += add
end

puts "Sum of all primes below #{range} is: #{summation_of_primes}."

duration = Time.now.to_i - start_time.to_i
puts "Solution took: #{duration} seconds."



