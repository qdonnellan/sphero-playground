require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '0.0.0.0:8023'
device :sphero, :driver => :sphero

connection :keyboard, :adaptor => :keyboard
device :keyboard, :driver => :keyboard, :connection => :keyboard

work do
    on keyboard, key: :keypress
end

def keypress(sender, the_key)
    puts(the_key)
    sphero.set_color(rand(255), rand(255), rand(255))
end