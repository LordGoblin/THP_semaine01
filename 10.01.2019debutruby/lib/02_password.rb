def signup
	puts "#chuchote moi ton mot de passe"
	mdp = gets.chomp
	return mdp
end

def login(mdp)
	puts "J'AI PAS ENTENDU!!"
	mdp2 = 0
	while mdp2 != mdp
		mdp2 = gets.chomp
		if mdp == mdp2
			return nil
		end
		puts "PAS ENTENDU!!"
	end
end

def welcome_screen
	puts "bienvenu dans la zone VIP!!"
	puts "venez boire de la vrai biere chez nous !!\nGROUPE_THP_LILLE"
end

def perform
	mdp = signup
	login(mdp)
	welcome_screen
end

perform