#!/usr/local/bin/fish

# Start hot reload
osascript -e '
tell application "iTerm"
    tell current window
        create tab with default profile
        tell current session to write text "cd ~/Repos/obsidian-plugins/.obsidian/plugins/hot-reload && npm run dev"
    end tell
end tell'

# Start plugin
osascript -e '
tell application "iTerm"
    tell current window
        create tab with default profile
        tell current session to write text "cd ~/Repos/obsidian-plugins/.obsidian/plugins/bible-verse-obsidian && npm run dev"
    end tell
end tell'

# Open frontend in Chrome
open -a "Google Chrome" https://chatgpt.com/
open -a "Obsidian" obsidian://open?vault=obsidian-plugins
code .
clear

osascript -e '
tell application "iTerm"
    tell current window
        tell current session
            write text "cd ~/Repos/obsidian-plugins/.obsidian/plugins/bible-verse-obsidian"
        end tell
    end tell
end tell'
