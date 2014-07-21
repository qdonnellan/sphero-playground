require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '0.0.0.0:8023'
device :sphero, :driver => :sphero

work do

    sphero.set_color(255, 0, 0)
    sleep 2

    sphero.set_color(0, 255, 0)
    sleep 3

    sphero.set_color(0, 0, 255)
    sleep 5

    sphero.set_color(0, 0, 0)



end
