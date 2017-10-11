require 'pry'

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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:
          - help : displays this help message
          - list : displays a list of songs you can play
          - play : lets you choose a song to play
          - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |el, index|
    puts "#{index+1}. #{el}"
  end
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

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    if input == "exit"
      exit_jukebox
    else
      until input == "exit"
        if input == "help"
          help
        elsif input == "list"
          list(songs)
        elsif input == "play"
          play(songs)
        end
        puts "Please enter a command:"
        input = gets.chomp
      end
    end
  end
end
