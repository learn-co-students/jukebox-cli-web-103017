#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'Users/adam/Documents/rochelFlatironPreWork/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'Users/adam/Documents/rochelFlatironPreWork/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'Users/adam/Documents/rochelFlatironPreWork/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'Users/adam/Documents/rochelFlatironPreWork/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'Users/adam/Documents/rochelFlatironPreWork/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'Users/adam/Documents/rochelFlatironPreWork/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'Users/adam/Documents/rochelFlatironPreWork/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program)"

end



def list(my_songs)
  my_songs.keys.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  user_choice = gets.chomp
  if my_songs.key?(user_choice)
    system "open #{my_songs[user_choice]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  command = nil
  while command != "exit"
    puts "Please enter a command:"
    command = gets.chomp

    if command == "help"
      help
    elsif command == "list"
      list(my_songs)
    elsif command == "play"
      play(my_songs)
    elsif command == "exit"
      exit_jukebox
    end

  end
end
