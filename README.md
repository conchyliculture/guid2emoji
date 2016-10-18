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

    $ ruby g2e.rb 9f02285f-ccb1-4f6c-a43d-d9029ff97c35
    9f02285f-ccb1-4f6c-a43d-d9029ff97c35 = 💟🐂🔨🍟📌💱🍏🍬🎤🔽🏙🔂🎟🗹🕼🌵

    $ ruby g2e.rb 💟🐂🔨🍟📌💱🍏🍬🎤🔽🏙🔂🎟🗹🕼🌵
    💟🐂🔨🍟📌💱🍏🍬🎤🔽🏙🔂🎟🗹🕼🌵 = 9f02285f-ccb1-4f6c-a43d-d9029ff97c35
