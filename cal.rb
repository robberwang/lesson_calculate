def check_operation
	begin
		puts "Please enter your operations:"
	  puts "[1] + [2] - [3]* [4] /"
	  operation = gets.chomp.to_i
	end while ![1,2,3,4,].include?(operation)
	
	return operation
end

def calculate(operation,number1,number2)
	case operation
	when 1
	 	result = number1 + number2
	 	print_result(result)
	when 2
		result = number1 - number2
	 	print_result(result)
	when 3
	 	result = number1 * number2
	 	print_result(result)
	when 4
	 	result = number1 / number2
	 	print_result(result)
	end
	return result
end

def print_result(result)
	puts "Your answer is #{result}"
end

puts "Please enter the first number:"
number1 = gets.chomp.to_i

puts "Please enter the sesecond number:"
number2 = gets.chomp.to_i

operation = check_operation
calculate(operation,number1,number2)