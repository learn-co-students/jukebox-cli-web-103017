puts("Please enter a command:")

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
  puts("I accept the following commands:")
  puts("- help : displays this help message")
  puts("- list : displays a list of songs you can play")
  puts("- play : lets you choose a song to play")
  puts("- exit : exits this program")
end

def list(songs)
  songs.each_with_index do |song, i|
    puts("#{i+1}. #{song}")
    i =+ 1
  end
end

def play(songs)
  puts("Please enter a song name or number:")
  song = gets.chomp
  if songs.include?(song)
    puts("Playing #{song}")
  elsif song == "1"
    puts("Playing Phoenix - 1901")
  elsif song == "2"
    puts("Tokyo Police Club - Wait Up")
  elsif song == "3"
    puts("Sufjan Stevens - Too Much")
  elsif song == "4"
    puts("The Naked and the Famous - Young Blood")
  elsif song == "5"
    puts("(Far From) Home - Tiga")
  elsif song == "6"
    puts("The Cults - Abducted")
  elsif song == "7"
    puts("Phoenix - Consolation Prizes")
  elsif song == "8"
    puts("Harry Chapin - Cats in the Cradle")
  elsif song == "9"
    puts("Amos Lee - Keep It Loose, Keep It Tight")
  else
    puts("Invalid input, please try again")
  end
end

def exit_jukebox
  puts("Goodbye")
end

def run(songs)
  help
  command = ""
  until command == "exit"
    puts("Please enter a command:")
    command = gets.chomp
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    elsif command == "exit"
      exit_jukebox
    else
      puts("That command is not valid. Please enter a different command:")
    end
  end
end
