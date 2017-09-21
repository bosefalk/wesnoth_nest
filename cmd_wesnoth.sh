#!/bin/bash
while read line;
        do
        # expr evaluates STRING:REGEX, and instead of printing output sends it to /dev/null, 
        # and executes the command after then
        # .* matches any character unlimited times, \(...\) matches the group ...
        if expr "$line" : '.*\(bose\).*\(joined\)' >/dev/null;  
                then xdotool key --window 14680067 colon c o n t r o l space 1 space b o s e Return

        elif expr "$line" : '.*\(bose\).*\(left\)' >/dev/null;
                then sleep 3; xdotool key --window 14680067 Down Return
        
        elif expr "$line" : '.*\(phone\).*\(joined\)' >/dev/null;  
                then xdotool key --window 14680067 colon c o n t r o l space 2 space p h o n e Return

        elif expr "$line" : '.*\(phone\).*\(left\)' >/dev/null;
                then sleep 3; xdotool key --window 14680067 Down Return         
        fi
done
