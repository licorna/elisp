function vpn-connect {
    /usr/bin/env osascript <<-EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "MongoDB"
                if exists VPN then connect VPN
                repeat while (current configuration of VPN is not connected)
                    delay 1
                end repeat
        end tell
end tell
EOF
}

function vpn-disconnect {
    /usr/bin/env osascript <<-EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "MongoDB"
                if exists VPN then disconnect VPN
        end tell
end tell
return
EOF
}
