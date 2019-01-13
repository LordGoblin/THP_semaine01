def say_hello(first_name)
	puts "Hello, #{first_name = ask_first_name} !"
	return first_name
end
def ask_first_name
	puts "Quel est ton prenom??"
	return gets.chomp
end

first_name = say_hello(first_name)