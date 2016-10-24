# string2emoji

Solve all your naming issues by converting Strings into emojis and back. It is extra smart when converting hex strings.

# Installation

```
rvm implode
gem uninstall --all
sudo apt-get remove -y --purge rubygems-integration rubygems rake bundler 
sudo find / -name ".rvm" -exec rm -rf "{}" \;
```

# Usage

## Command line tool g2e.rb

Convert a normal string

    $ ruby g2e.rb f1441f79-d010-4275-ad87-46a909b2c772
    f1441f79-d010-4275-ad87-46a909b2c772 = 🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲

    $ ruby g2e.rb 🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲
    🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲 = f1441f79-d010-4275-ad87-46a909b2c772

Convert a hex string. This will try to use glyphs that are "usually present in your default terminal font" (tested on ubuntu) so you (hopefully) don't get those disappointed squares.

    $ ruby g2e.rb -x d5d244a7cd514847ad25d5bb973ce6e4
    d5d244a7cd514847ad25d5bb973ce6e4 = ⛕⛒♄💧⛍🍑♈👇🎭🔥⛕💻💗☼⛦🏤

    $ ruby g2e.rb -x ⛕⛒♄💧⛍♑♈👇🎭🔥⛕💻⚗🐼⛦🏤
    ⛕⛒♄⚧⛍🕑♈♇⚭🔥⛕🎻💗🐼⛦⛤ = d5d244a7cd514847ad25d5bb973ce6e4

## e4all library

    $: << "."
    require "e4all"

    "f1441f79-d010-4275-ad87-46a909b2c772".to_e
    "🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲".parse_e 

    "d5d244a7cd514847ad25d5bb973ce6e4".hex_to_e
    "⛕⛒♄💧⛍🍑♈👇🎭🔥⛕💻💗☼⛦🏤 ".hex_parse_e


# Why did you make the code so stupidly ugly?

Because I can. Also breaking Github's and vim's syntax highliters is fun!
