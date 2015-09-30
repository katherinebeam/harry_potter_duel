# adds space between lines of text
def separator
	puts ("-"*70) + "\n\n" 
end

# creates a section of text separated from other lines of text
def speak(text)
	puts "#{text}\n\n"
	separator
end

# lists spells available for use
def spells
	puts "     Confundo\n     Petrificus Totalus\n     Incendio\n     Crucio\n\n"
end

# ----INTRO-----
separator
speak("Today is your first day at Hogwarts! How exciting! Unfortunately, you've already made your first enemy: Draco Malfoy. This morning, Draco challenged you to a duel in the dungeon at sundown. Did you accept?")
accept_duel = gets.chomp.downcase
separator

# ----Regardless of user's response, they must go to the dungeon to duel
puts accept_duel.include?("yes") ? "That's the spirit! The sun is already starting to go down... You'd better head to the dungeon!\n\n" : "Don't be a coward! Tell him to meet you in the dungeon right away.\n\n" 
separator
speak("DRACO MALFOY: Look who decided to show up! I'll let you cast the first spell.")

# ----List of spells users can choose from. List can be accessed at any time by user.
puts "These are the spells you know:\n\n" 
spells
speak("If you'd like to see this list again, type 'spells'.")

# ----DUELING----
# Goes through the loop 3 times asking the user to cast a spell
3.times do
	puts "Which spell would you like to cast?\n\n"
	spell_choice = gets.chomp.downcase
	puts "\n"
	separator
	case spell_choice
	when "confundo"
		speak("DRACO MALFOY: AHHH! What's going on?!\n\nDraco spins in circles until he falls to the floor.\n\nFrom the floor he calls out: WINGARDIUM LEVIOSA!\n\nYou levitate for a brief moment before floating safely back to the ground.")
	when "petrificus totalus"
		speak("The full body bind! Nice attack!\nDraco: For doing that, I'm going to need to do something equally awful...LOCOMOTOR WIBBLY!'\nAll of a sudden...\nYOUR LEGS FEEL LIKE JELLY!")
	when "incendio"
		speak("DRACO MALFOY: My robes! They've burst into flame!\nIt's only fair that yours get burnt as well! PRIOR INCANTATO!")
	when "crucio"
		speak("Draco falls to the floor, writhing in pain. His pain gets in the way of his next spell!")
	when "spells"
		spells
	else speak("Oh no! Your spell didn't work! Looks like you need a little more practice with that one.")
	end
end

# ----END----
speak("Uh oh.... Someone's coming!\n\nPROFESSOR MCGONAGALL: Enough! You two are going to get yourselves killed. Or worse... EXPELLED! 10 points from both your houses!\n")
speak("GAME OVER")