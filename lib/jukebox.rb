require "pry"

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

def list(songs)
  songs.each_with_index do |element, index|
    puts "#{index + 1}. #{element}"
  end
end

def play(songs)
  puts "Please enter a song or number:"
  response = gets.chomp
  array = (1..10).to_a
  if array.include?(response.to_i)
    puts "Playing #{songs[response.to_i - 1]}"
  elsif songs.include?(response)
    puts "Playing #{response}"
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
  while true
    response = gets.chomp
    case response
    when "exit"
      exit_jukebox
      break
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play(songs)
    else
      puts "try again fool"
    end
  end
end
