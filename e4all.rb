#!/usr/bin/ruby
#encoding: utf-8
$C🔪=[Proc.new {|♭| [0x2600,0x1f400,0x1f500][rand(3)]+(♭ & 0xff)},Proc.new {|♭| 0x2600+(♭ & 0xff)},Proc.new {|♭| [0x2600,0x1f400][rand(2)]+(♭ & 0xff)},Proc.new {|♭| [0x2600,0x1f500][rand(2)]+(♭ & 0xff)},Proc.new {|♭| [0x2600,0x1f300][rand(2)]+(♭ & 0xff)},Proc.new {|♭| [0x2600,0x1f300,0x1f500][rand(3)]+(♭ & 0xff)},Proc.new {|♭| [0x2600,0x1f300,0x1f400][rand(3)]+(♭ & 0xff)}]
$V☘=[[Proc.new{|♭| (♭<0x1f330 and ♭>0x1f31f)},$C🔪[0]],[Proc.new{|♭| [0x1f37d,0x1f37e,0x1f37f].include?(♭)},$C🔪[1]],[Proc.new{|♭| (♭>0x1f393 and ♭<0x1f3a0)},$C🔪[2]],[Proc.new{|♭| (♭>0x1fca and ♭<0x1f3e0)},$C🔪[1]],[Proc.new{|♭| (♭>0x1ff0 and ♭<0x1f3fb)},$C🔪[1]],[Proc.new{|♭| (♭>0x1f3fa and ♭<0x1f400)},$C🔪[3]],[Proc.new{|♭| (♭ == 0x1f42c)},$C🔪[3]],[Proc.new{|♭| (♭>0x1f440 and ♭<0x1f445)},$C🔪[4]],[Proc.new{|♭| (♭>0x1f44f and ♭<0x1f468)},$C🔪[5]],[Proc.new{|♭| (♭>0x1f467 and ♭<0x1f47d)},$C🔪[3]],[Proc.new{|♭| (♭>0x1f47c and ♭<0x1f480)},$C🔪[1]],[Proc.new{|♭| (♭>0x1f4c5 and ♭<0x1f4cb)},$C🔪[4]],[Proc.new{|♭| (♭>0x1f4ca and ♭<0x1f4e0)},$C🔪[1]],[Proc.new{|♭| (♭>0x1f4df and ♭<0x1f4f1)},$C🔪[4]],[Proc.new{|♭| (♭>0x1f4f0 and ♭<0x1f4fb)},$C🔪[1]],[Proc.new{|♭| (♭>0x1f4fa and ♭<0x1f500)},$C🔪[3]],[Proc.new{|♭| (♭>0x1f53d and ♭<0x1f550)},$C🔪[4]],[Proc.new{|♭| (♭>0x1f567 and ♭<0x1f57d)},$C🔪[4]],[Proc.new{|♭| (♭>0x1f57c and ♭<0x1f580)},$C🔪[1]],[Proc.new{|♭| (♭>0x1f57f and ♭<0x1f594)},$C🔪[6]],[Proc.new{|♭| (♭>0x1f593 and ♭<0x1f5a0)},$C🔪[2]],[Proc.new{|♭| (♭>0x1f59f and ♭<0x1f5c5)},$C🔪[6]],[Proc.new{|♭| ♭ == 0x1f5c5 },$C🔪[2]],[Proc.new{|♭| (♭>0x1f5c5 and ♭<0x1f5cb)},$C🔪[4]],[Proc.new{|♭| (♭>0x1f5ca and ♭<0x1f5e0)},$C🔪[1]],[Proc.new{|♭| (♭>0x1f5df and ♭<0x1f5f1)},$C🔪[4]],[Proc.new{|♭| (♭>0x1f5f0 and ♭<0x1f5fb)},$C🔪[1]]]
class String
    def _replace_e(🐮); $V☘.each {|🐜| return 🐜[1].call(🐮).to_s(16) if 🐜[0].call(🐮) }; 🐮.to_s(16); end
    def to_e; self.encode(%<utf-8>).codepoints.map{|🐢| eval(🐢> 0xFF ? sprintf(%|\"\\u{1f3%02X}\\u{1f4%02X}\\u{1f5%02X}\"|,🐢&0xFF,(🐢 >>8)&0xFF,(🐢 >>16)&0xFF) : %_%$\\u{1f6_+🐢.to_s(16)+%;}$;)}.join(); end
    def parse_e; 💩=%%%;🐊=☂ =0; self.each_codepoint.map{|🐍| 🐍>>8==0x1f6 ? 💩<<(🐍&0xFF).chr(Encoding::UTF_8) : (🐊+=(🐍&0xff)<<((☂ %3)*8); if (☂+=1)%3==0; 💩<<🐊.chr(Encoding::UTF_8);🐊=0; end)};💩; end
    def hex_to_e(); self.gsub(/[^0-9a-f]/,%%%).scan(/../).map{|⛑| eval(%(\"\\u{)+_replace_e([0x1f300,0x1f400,0x1f500][rand(3)]+⛑.to_i(16))+%&}\"&)}.join(); end
    def hex_parse_e(); self.codepoints.map{|☹| (☹&0xFF).to_s(16)}.join(); end
end
