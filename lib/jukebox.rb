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

  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end

def play(songs)

  puts "Please enter a song or number:"
    input = gets.chomp
    songs.each_with_index do |song, index|
      if input == song || input.to_i - 1 == index
        return puts "Playing #{song}"
      end
    end
    puts "Invalid input, please try again"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  if input == "help"
    help
  elsif input == "list"
    list(songs)
  elsif input == "play"
    play(songs)
  elsif input == "exit"
    exit_jukebox
  end

end
