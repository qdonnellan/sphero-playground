require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '0.0.0.0:4090'
device :sphero, :driver => :sphero

connection :keyboard, :adaptor => :keyboard
device :keyboard, :driver => :keyboard, :connection => :keyboard

work do

    on keyboard, :key => :keypress

end

def keypress(sender, the_key)

    sphero.connection.heading = 0

    new_heading = 0

    if the_key == 'left'
        new_heading += 30
    elsif the_key == 'right'
        new_heading -= 30
    end

    sphero.connection.heading = new_heading

end
        