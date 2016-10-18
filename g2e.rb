#!/usr/bin/ruby

def gb(g)
    return g.downcase.gsub(/[^0-9a-f]/,'').scan(/../).map{|x| eval("\"\\u{"+%w{1f3 1f4 1f5 }[rand(3)]+x+"}\"")}.join()
end

def bg(s)
    s = s.each_codepoint.map{|i| i.to_s(16)[-2..-1]}.join()
    return "#{s[0..7]}-#{s[8..11]}-#{s[12..15]}-#{s[16..19]}-#{s[20..31]}"
end

if ARGV.size > 0
    ARGV.each do |input|
        if input=~/[\\u{1F300}-\u{1F5FF}]/
            puts "#{input} = #{bg(input)}" 
        else
            puts "#{input} = #{gb(input)}"
        end
    end
else
    puts "Converts from a guid/uuid to a emoji string, and back again.\n\n"
    puts "Examples: \n"
    require "securerandom"; u = SecureRandom.uuid
    gu = gb(u)
    puts "$ ruby #{__FILE__} #{u}"
    puts "#{u} = #{gu}\n\n"
    puts "$ ruby #{__FILE__} #{gu}"
    puts "#{gu} = #{bg(gu)}"
end
