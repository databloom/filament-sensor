# filament-sensor
 
 
 To use this 
 
 python both.py >>/var/log/filament-sensor.log
 
 This will dump all the mouse activity for event14/15 (My two mice) to that file.
 
 If the mouse activity subsides (the filament spool stops moving), the mtime for the file will start to age out.
 
 root@odin:~/filament-sensor# bash watcher.sh 
inside Print window filament last 57
inside Print window filament last 67
inside Print window filament last 77
inside Print window filament last 87
inside Print window filament last 97
inside Print window filament last 107
inside Print window filament last 117
inside Print window filament last 127
inside Print window filament last 137
inside Print window filament last 147
inside Print window filament last 157
inside Print window filament last 167
inside Print window filament last 177
inside Print window filament last 187
inside Print window filament last 197
inside Print window filament last 207
inside Print window filament last 217
Inside Print Window filament last 227 Suspect Air print !!
Inside Print Window filament last 237 Suspect Air print !!
Inside Print Window filament last 247 Suspect Air print !!
Inside Print Window filament last 257 Suspect Air print !!
inside Print window filament last 2
inside Print window filament last 12
inside Print window filament last 0



In this example, there was a lot of slack in the spool, but if there has been no movement for over 300s, I'd probably cancel the print.

