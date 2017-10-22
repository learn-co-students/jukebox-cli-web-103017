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

def list(songs)
    songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    user_response = gets.chomp
    songs.each_with_index do |song, index|
        if (user_response.to_i - 1) == index
            puts "Playing #{song}"
            elsif user_response == song
            puts "Playing #{song}"
            else puts "Invalid input, please try again"
        end
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    help
    puts "Please enter a command:"
    user_command = gets.chomp
    until user_command == "exit"
        if user_command == "list"
            list(songs)
        elsif user_command == "play"
            play(songs)
        elsif user_command == "help"
            help
        end
    end
end
    
exit_jukebox
