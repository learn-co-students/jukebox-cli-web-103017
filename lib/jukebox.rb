songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:\
   - help : displays this help message\
   - list : displays a list of songs you can play\
   - play : lets you choose a song to play\
   - exit : exits this program"
 end

 def play(song)

   u_input = gets.chomp
   count = 0
   song.each_with_index do |key, value|
     if u_input.to_i-1 == value || u_input == key
         puts "Playing #{key}"
         break
     else
         count += 1
         if count == song.length
             puts "Invalid input, please try again"
         end
     end
   end

 end

def list(song)

  song.each_with_index do |key, value|
    puts "#{key}. #{value}"
  end
end

def exit_jukebox

  puts "Goodbye"
end

def run(song)

    help
    puts "Please enter a command:"
    u_input = gets.chomp
    until u_input == "exit"
        if u_input == "list"
            list(song)
        elsif u_input == "play"
            play(song)
        elsif u_input == "help"
            help
        end
        puts "Please enter a command:"
        u_input = gets.chomp
    end
    exit_jukebox

end
