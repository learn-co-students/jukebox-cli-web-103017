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
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  if (1..9).to_a.include?(song_name.to_i)
    puts "Playing #{songs[song_name.to_i - 1]}"
  elsif songs.include?(song_name)
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp

  if user_input == "exit"
    exit_jukebox
  elsif user_input == "list"
    list(songs)
    run(songs)
  elsif user_input == "play"
    play(songs)
    run(songs)
  elsif user_input == "help"
    help
    run(songs)
  end

end
