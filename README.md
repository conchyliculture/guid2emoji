# guid2emoji

Converts GUID into emojis and back

# Installation

```
rvm implode
gem uninstall --all
apt-get remove -y --purge rubygems-integration rubygems rake bundler 
find / -name ".rvm" -exec rm -rf "{}" \;
```

# Usage
Converts from a guid/uuid to a emoji string, and back again.

Examples: 

    $ ruby g2e.rb f1441f79-d010-4275-ad87-46a909b2c772
    f1441f79-d010-4275-ad87-46a909b2c772 = 🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲

    $ ruby g2e.rb 🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲
    🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲 = f1441f79-d010-4275-ad87-46a909b2c772

You can use the -x option to make it more compact when converting hex strings

    $ ruby g2e.rb -x f1441f79d0104275ad8746a909b2c772
    f1441f79d0104275ad8746a909b2c772 = 🏱🕄🔟👹🗐🔐🍂👵💭🖇🍆🎩🐉💲🗇🍲

    $ ruby g2e.rb -x 📱🕄🌟🍹📐🔐🕂👵💭🎇👆🖩🔉🎲🏇🍲
    🏱🕄🔟🍹🗐🐐👂🍵🎭🎇🕆🎩🌉💲🏇🕲 = f1441f79d0104275ad8746a99b2c772

