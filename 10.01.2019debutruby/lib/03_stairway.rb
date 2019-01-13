def dé
	nombre = rand(1..6)
	return nombre
end

def regle
	étage = dé
	if étage == 5 || étage == 6
		étage = 1
	elsif étage == 1
		étage = -1
	else
		étage = 0
	end
	return (étage)
end

def game(a)
	étage = regle
	a = a + étage
	if étage == 1
		puts "bravo #{étage}.\ntu es arrivé a l'étage#{a}"
	elsif étage == -1
		puts "ha ha ha #{étage} pas de chance!!\ntu es arrivé a la case #{a}."
	else
		puts "#{étage} au moins tu ne recules pas.:)\ntu es arrivé a la case #{a}"
	end
	return a
end

def average_finish_time
	i = 0
	a = 0
	puts "combien de simulation??"
	simul = gets.chomp.to_i
	while i < simul
		étage = 0
		while étage < 10
			étage = étage + regle
			puts "************************** lancer de dés#{a}"
			a = a + 1
		end
		i = i + 1
	end
	print a / simul
	print "."
	puts a % simul
end

def pyra(nombre)
	i = 0
	a = 10
	while i < 10 + 1
		if i == 10 - nombre
			print ' ' * a
			print '@'
			puts '#' * i
			a = a - 1
			i = i + 1
		else
			print ' ' * a
			print ' '
			puts '#' * i
			a = a - 1
			i = i + 1
		end
	end
end

def perform
	i = true
	étage = 0
	while i != false
		puts "\ncontinuer o/n ??"
		puts "pour le simulateur écrit: s"
		i = gets.chomp
		if i == "n"
			puts "a++"
			i = false
		elsif i == "s"
			average_finish_time
		else
			system("clear")
			puts "******************************************"
			étage = game(étage)
			puts "******************************************"
			pyra(étage)
			if étage == 10
				i = false
				puts "bien joué, fin du game!"
			end
		end
	end
end

perform