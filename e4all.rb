class String
    def to_e; self.encode(%<utf-8>).codepoints.map{|n| eval( n > 0xFF ? sprintf(%|\"\\u{1f3%02X}\\u{1f4%02X}\\u{1f5%02X}\"|, n & 0xFF, (n >> 8) & 0xFF, (n >> 16) & 0xFF) : %_%$\\u{1f6_+n.to_s(16)+%;}$;)}.join(); end

    def parse_e; res=%%% ; c=ii=0; self.each_codepoint.map{|i| i >> 8 == 0x1f6 ? res << (i & 0xFF).chr(Encoding::UTF_8) : ( c += ( i & 0xff ) << ((ii%3)*8) ; if (ii+=1)%3==0; res << c.chr(Encoding::UTF_8); c=0; end)} ; res ; end

    def hex_to_e(); self.gsub(/[^0-9a-f]/,'').scan(/../).map{|x| eval(%(\"\\u{)+%w{1f3 1f4 1f5}[rand(3)]+x+%&}\"&)}.join() ; end

    def hex_parse_e(); self.codepoints.map{|i| (i & 0xFF).to_s(16)}.join() ; end
end
