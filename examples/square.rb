require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '0.0.0.0:8023'
device :sphero, :driver => :sphero

work do

    # let's set the sphero's color to "lawn green" R,G,B = 124, 252, 0
    sphero.set_color(124, 252, 0)

    for angle in [0,90,180,270]

        # roll at the given angle for 3 seconds at 100 speed
        sphero.roll(100,angle)
        sleep 3

        # bring the sphero to a stop for 1 second without changing direction
        sphero.roll(0,angle)
        sleep 1

    end

    sphero.stop
end
