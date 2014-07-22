require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '0.0.0.0:8023'
device :sphero, :driver => :sphero

work do

    # let's set the sphero's color to "lawn green" R,G,B = 124, 252, 0
    sphero.set_color(124, 252, 0)

    # set the angle to 0 degrees and roll at 100% speed
    angle = 0
    sphero.roll(100, angle)
    sleep 3
 
    # this brings it to a stop for 1 second
    sphero.roll(0,angle)
    sleep 1

    # change the angle to 90 degrees!
    angle = 90
    sphero.roll(100, angle)
    sleep 3

    sphero.roll(0, angle)
    sleep 1


    sphero.stop
end
