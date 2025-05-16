#!/usr/local/bin/fish

# Open frontend in Chrome
open -a "Google Chrome" https://khang-nd.github.io/7.css/#intro
open -a "Google Chrome" https://alpinejs.dev/
open -a "Google Chrome" https://chatgpt.com/
code ~/Repos/personal-website/
clear

# Clear current tab and focus on first tab
osascript -e '
tell application "iTerm"
    tell current window
        select tab 1
        tell current session of tab 1 to write text "cd ~/Repos/personal-website/; clear"
    end tell
end tell'
