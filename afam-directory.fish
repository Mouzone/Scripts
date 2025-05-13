#!/usr/local/bin/fish

# Start Firebase local emulator in Tab 1
osascript -e '
tell application "iTerm"
    tell current window
        create tab with default profile
        tell current session to write text "cd ~/repos/AFAM-Directory && firebase emulators:start --import=test-data --export-on-exit=test-data"
    end tell
end tell'

# Start Next.js server in Tab 2
osascript -e '
tell application "iTerm"
    tell current window
        create tab with default profile
        tell current session to write text "cd ~/repos/AFAM-Directory/frontend && bun run dev"
    end tell
end tell'

# Open frontend in Chrome
open -a "Google Chrome" http://localhost:3000

# Open project in VSCode
code ~/Repos/AFAM-Directory

# Clear current tab and focus on first tab
osascript -e '
tell application "iTerm"
    tell current window
        select tab 1
        tell current session of tab 1 to write text "cd ~/Repos/AFAM-Directory; clear"
    end tell
end tell'
