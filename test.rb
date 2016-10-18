$: << "."

require "e4all"
require "digest/md5"

test1="tesdmlùiqstriklass = Class.new(self) 🕸🕂💫🔆🗱🏣👆🕷🎙💖🐄🍪🔏🖝👘🌶"

if not (test1 == test1.to_e.parse_e)
    puts "fail"
end
h = Digest::MD5.hexdigest(test1)
if not ( h == h.hex_to_e().hex_parse_e())
    puts "fail"
end
