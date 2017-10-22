

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
commands = "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
    puts commands

end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = get_user_input
  puts user_input
  if user_input.to_i == 0
    #is non numeric
    if !songs.include?(songs.index(user_input))
      puts "Invalid input, please try again"
    else
      puts "Playing #{songs[songs.index(user_input)]}"
    end
  elsif user_input.to_i > 0
    if !songs.include?(songs[user_input.to_i - 1])
      #is numeric and that number is out of bounds
      puts "Invalid input, please try again"
    else
      puts "Playing #{songs[user_input.to_i - 1]}"
    end
  else
    puts "Invalid input, please try again"
  end
end


def list(songs)
  song_hash = {}
  songs.each_with_index do |item, index|
    song_hash[index + 1] = item
  end

  song_hash.each do |key, value|
    puts "#{key}.#{value}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  u_i =""
  puts "Please enter a command"
  help



  until(u_i == "exit")
      u_i = get_user_input
    case u_i
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        exit
      end
    end
end


def get_user_input
  userInput = gets.chomp
  return userInput
end
