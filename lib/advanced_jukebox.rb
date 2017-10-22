my_songs = {
 "Go Go GO" => 'Desktop/Emerald-Park/01.mp3',
 "LiberTeens" => 'Desktop/Emerald-Park/02.mp3',
 "Hamburg" =>  'Desktop/Emerald-Park/03.mp3',
 "Guiding Light" => 'Desktop/Emerald-Park/04.mp3',
 "Wolf" => 'Desktop/Emerald-Park/05.mp3',
 "Blue" => 'Users/Erica/Desktop/Emerald-Park/06.mp3',
 "Graduation Failed" => 'Development/Labs/jukebox-cli-web-103017/audio/Emerald-Park/07.mp3'
 }

def help
    puts "I accept the following commands:\
    - help : displays this help message\
    - list : displays a list of songs you can play\
    - play : lets you choose a song to play\
    - exit : exits this program"
end


def list(my_songs)
    my_songs.keys.each do |song_name|
        puts song_name
    end
end


def play(my_songs)
    puts "Please enter a song name:"
    user_response = gets.chomp
    my_songs.keys.each do |song_name|
        if user_response == song_name
           system "open #{my_songs[user_response]}"
        else puts "Invalid input, please try again"
        end
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(my_songs)
    help
    puts "Please enter a command:"
    user_command = gets.chomp
    until user_command == "exit"
        if user_command == "list"
            list(my_songs)
            elsif user_command == "play"
            play(my_songs)
            elsif user_command == "help"
            help
        end
    end
end

exit_jukebox
