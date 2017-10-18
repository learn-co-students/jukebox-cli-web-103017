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

def list (songs)
 songs.each_with_index do |song,index|
   puts "#{index+1}. #{song}"
 end
end

def play(songs)
 puts "Please enter a song name or number:"
 number=gets.chomp
  songs.each do |song|
    if song.include?(number)
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
  loop do
    puts "Please enter a command: "
    response = gets.chomp
    case response
      when "play" then play(songs)
      when "list" then list(songs)
      when "help" then help
      when "exit" then exit_jukebox
    end
    break if response == "exit"
  end
end
