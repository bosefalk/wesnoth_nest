#!/bin/bash
while read line;
        do
        # expr evaluates STRING:REGEX, and instead of printing output sends it $
        # and executes the command after then
        # .* matches any character unlimited times, \(...\) matches the group .$
        if expr "$line" : '.*\(bose\).*\(joined\).*\(nest\)' >/dev/null;  
				then xdotool key --window 14680067 colon c o n t r o l space 1 space b o s e Return
 
        elif expr "$line" : '.*\(felix\).*\(joined\).*\(nest\)' >/dev/null;  
                then xdotool key --window 14680067 colon c o n t r o l space 2 space f e l i x Return
                
		elif expr "$line" : '.*\(left\).*\(nest\)' >/dev/null;
        	then sleep 2; xdotool key --window 14680067 Down Return;  
            sleep 2; xdotool key --window 14680067 Down Return 
        fi
done

