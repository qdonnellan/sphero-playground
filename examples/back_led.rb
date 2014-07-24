require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '0.0.0.0:8023'
device :sphero, :driver => :sphero

work do

    sphero.set_color(255,0 , 255 )
    sphero.back_led_output = 100
    sleep 3


    sphero.set_color(0,0 , 255 )
    sphero.back_led_output = 50
    sleep 3



end
