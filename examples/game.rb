require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '0.0.0.0:4090'
device :sphero, :driver => :sphero

connection :keyboard, :adaptor => :keyboard
device :keyboard, :driver => :keyboard, :connection => :keyboard

work do

    puts ''
    puts "====================================="
    puts "Welcome to the MIND CHALLENGE GAME!!!"
    puts "====================================="
    puts ''
    puts "Press Q to see the question"
    puts "Press E to enter your answer"
    puts "Press C to clear your answer"

    on keyboard, :key => :keypress

end

$level = 1
$user_input = ''

def keypress(sender, the_key)

    if the_key == 'C'
        # if the key is 'C' then clear the user_input
        puts "USER INPUT CLEARED"
        $user_input =''

    elsif the_key == 'Q'
        # if the key is Q show the question again and erase the answer

        $user_input = ''

        if $level == 1
            puts "What is the answer to my question?"
        end

        if $level == 2
            puts "How many apples are there in my hat?"
        end

    elsif the_key == 'E'
        # if the user presses E, see if his answer is correct

        if $level == 1
            if $user_input == 'word'
                puts "You solved level 1, moving on to level 2"
                $level += 1
            else
                $user_input = ''
                puts "Sorry, that's not correct, try again"
            end
        elsif $level == 2
            if $user_input == 'pancake'
                puts "You won the game!!!"

            else
                $user_input = ''
                puts "Dude, what are you thinking? WRONG!"
            end
        end

    else 
        # otherwise, add the last key pressed to the current user input
        $user_input +=  the_key
    end

end
        