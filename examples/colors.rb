require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '0.0.0.0:8023'
device :sphero, :driver => :sphero

work do

    sphero.set_color(255,0,0)
    sleep 2

    sphero.stop
    
end
