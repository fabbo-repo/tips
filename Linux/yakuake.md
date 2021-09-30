------------------------------------------------------------------------------------
### Transparencia de fondo y desenfoque:
* Editar la configuración:
~~~
sudo nano /.config/yakuakerc
~~~
* Añadir:
> [Appearance]
> Blur=true
> Translucency=true
* Reiniciar yakuake:
~~~
sudo systemctl restart yakuake
~~~

------------------------------------------------------------------------------------
### Script de ejemplo para programar yakuake:
~~~
#!/bin/bash
# Starting Yakuake based on user preferences. Information based on https://forums.gentoo.org/viewtopic-t-873915-start-0.html
# Adding sessions from previous website is broken, use this: http://pawelkoston.pl/blog/sublime-text-3-cheatsheet-modules-web-develpment/

# This line is needed in case Yakuake does not accept fcitx inputs.
/usr/bin/yakuake --im /usr/bin/fcitx --inputstyle onthespot &

# gives Yakuake a couple seconds before sending dbus commands
sleep 2      
                                                 
# Start htop in tab and split to user terminal and run iotop      (opcional)                                                  
TERMINAL_ID_0=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.terminalIdsForSessionId 0)
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 0 "user"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 0 "htop"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.splitTerminalLeftRight "$TERMINAL_ID_0"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 1 "iotop

# Start split root sessions (password prompt) top and bottom                                                                                
SESSION_ID_1=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession)
TERMINAL_ID_1=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.terminalIdsForSessionId "$SESSION_ID_1")
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 1 "root"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 2 "su"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.splitTerminalTopBottom "$TERMINAL_ID_1"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 3 "su" 

# Start irssi in its own tab.                                                                                          
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 2 "irssi"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 4 "ssh home -t 'tmux attach -t irssi; bash -l'" 

# Start split ssh shells in own tab.                                                                                   
SESSION_ID_2=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession)
TERMINAL_ID_2=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.terminalIdsForSessionId "$SESSION_ID_2")
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 3 "work server"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 5 "ssh work"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.splitTerminalLeftRight "$TERMINAL_ID_2"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 6 "ssh work"
~~~
