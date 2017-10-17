my_songs = {
"Go Go GO" => '/Users/conniewang/Desktop/Pre-Work/jukebox-cli-web-103017/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/conniewang/Desktop/Pre-Work/jukebox-cli-web-103017/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/conniewang/Desktop/Pre-Work/jukebox-cli-web-103017/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/conniewang/Desktop/Pre-Work/jukebox-cli-web-103017/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/conniewang/Desktop/Pre-Work/jukebox-cli/audio-web-103017/Emerald-Park/05.mp3',
"Blue" => '/Users/conniewang/Desktop/Pre-Work/jukebox-cli/audio-web-103017/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/conniewang/Desktop/Pre-Work/jukebox-cli-web-103017/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  my_songs.keys.each.with_index do |song, idx|
    puts "#{idx + 1}. " + song
  end
end

def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.chomp

  if my_songs[user_input] != nil
    system "open #{my_songs[user_input]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  until user_response == "exit"
    case user_response
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    end
    puts "Please enter a command:"
    user_response = gets.chomp
  end
  exit_jukebox  
end
