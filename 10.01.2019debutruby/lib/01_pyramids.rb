def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print"> "
	nombre = gets.chomp
	i = 1
	c = 0
	a = (nombre.to_i / 2)
	puts "Voici la pyramide :"
	if (nombre.to_i % 2) == 1
		a = a + 1
	end
	while i < (nombre.to_i + 1)
		while c != 2 && i < (nombre.to_i + 1)
			print ' ' * a
			puts '#' * i
			i = i + 1
			a = a - 1
			c = c + 1
		end
		while c != 0 && i < (nombre.to_i + 1)
			print ' ' * a
			puts '#' * i
			i = i + 1
			c = c - 1
		end
	end
	puts "^sapin du preparcour^\n\nnouvel pyramide =>\n"
	full_pyramid
end

def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print"> "
	nombre = gets.chomp.to_i
	i = 1
	while i < nombre + 1
		puts (' ' * (nombre - i)) + ('#' * i) + ('#' * (i - 1))
		i = i + 1
	end
	wtf_pyramid
end

def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print"> "
	i = 1
	nombre = gets.chomp.to_i
	if nombre % 2 == 1
		while i < (nombre / 2) + 1
			puts (' ' * (((nombre / 2) - i) + 1)) + ('#' * (i + (i - 1)))
			i = i + 1
		end
		while i != 0
			if ((nombre / 2) - i) < 0
				puts ('#' * i) + ('#' * (i - 1))
			else
				puts (' ' * (((nombre / 2) - i) + 1)) + ('#' * (i + (i - 1)))
			end
			i = i - 1
		end
	else
		puts "\n\n*****************************************************************\n
Bonus : envoie bouler l'utilisateur s'il saisit un nombre impair.\n
*****************************************************************\n"
		wtf_pyramid
	end
end
half_pyramid