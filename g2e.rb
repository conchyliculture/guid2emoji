#!/usr/bin/ruby
$: << "."
require "e4all"

def usage()
    puts "Converts from a string to an emoji string, and back again.\n\n"
    puts "Examples: \n"
    require "securerandom"; u = SecureRandom.uuid
    puts "$ ruby #{__FILE__} #{u}"
    puts "#{u} = #{u.to_e}\n\n"
    puts "$ ruby #{__FILE__} #{u.to_e}"
    puts "#{u.to_e} = #{u.to_e.parse_e}"
    puts ""

    puts "You can use the -x option to make it more compact when converting hex strings\n"
    u=u.gsub("-","")
    puts "$ ruby #{__FILE__} -x #{u}"
    puts "#{u} = #{u.hex_to_e}\n\n"
    puts "$ ruby #{__FILE__} -x #{u.hex_to_e}"
    puts "#{u.hex_to_e} = #{u.hex_to_e.hex_parse_e}"
    exit
end

if ARGV.size > 0
    usage if ARGV[0] =~/^(-h|--help)$/

    if ARGV[0] == "-x"
        usage unless ARGV.size > 1
        ARGV[1..-1].each do |input|
            if input=~/^[\\u{1F300}-\u{1F6FF}]+$/
                puts "#{input} = #{input.hex_parse_e}" 
            else
                puts "#{input} = #{input.hex_to_e}"
            end
        end
    else
        ARGV.each do |input|
            if input=~/^[\\u{1F600}-\u{1F6FF}]+$/
                puts "#{input} = #{input.parse_e}"
            else
                puts "#{input} = #{input.to_e}" 
            end
        end
    end
else
    usage()
end
