class String

    def to_e
        self.encode("utf-8").codepoints.map{|n| eval( n > 0xFF ? sprintf("\"\\u{1f3%02X}\\u{1f4%02X}\\u{1f5%02X}\"", n & 0xFF, (n >> 8) & 0xFF, (n >> 16) & 0xFF) :"\"\\u{1f6"+n.to_s(16)+"}\"")  }.join()
    end

    def parse_e
        res=""
        c=0
        self.each_codepoint.map{|i| 
            case i >> 8 
            when 0x1f3 
                c = i & 0xff 
            when 0x1f4 
                c += (i & 0xff ) << 8
            when 0x1f5 
                c += (i & 0xff ) << 16
                res << c.chr(Encoding::UTF_8)
                c=0
            when 0x1f6 
                res << (i & 0xFF).chr(Encoding::UTF_8)
                c=0
            end
        }
        return res
    end

    def hex_to_e()
        self.gsub(/[^0-9a-f]/,'').scan(/../).map{|x| eval("\"\\u{"+%w{1f3 1f4 1f5 }[rand(3)]+x+"}\"")}.join()
    end

    def hex_parse_e()
        self.each_codepoint.map{|i| (i & 0xFF).to_s(16)}.join()
    end
end
