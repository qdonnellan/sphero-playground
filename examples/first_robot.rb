require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '0.0.0.0:8023'
device :sphero, :driver => :sphero

work do
    sphero.set_color(rand(255), rand(255), rand(255))
    sphero.roll 100, 0
    sleep 2
    sphero.stop
end
