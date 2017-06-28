-- xmobar config which was originally Vic Fryzel's

Config { font = "xft:inconsolatalgc:pixelsize=10:antialias=true",
         overrideRedirect = False,
         bgColor = "#002b36",
         fgColor = "#657b83",
         position = Bottom,
         -- lowerOnStart = True,
         commands = [
           Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
           Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
           Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
           Run Date "%a %b %_d %l:%M" "date" 10,
           Run Com "getMasterVolume" [] "volumelevel" 10,
           Run Battery [
	       "-t", "<acstatus>: <left>% - <timeleft>",
	       "--",
	       --"-c", "charge_full",
	       "-O", "AC",
	       "-o", "Bat",
	       "-h", "green",
	       "-l", "red"
	       ] 10,
           Run StdinReader
           ],
         sepChar = "%",
         alignSep = "}{",
         template = "%StdinReader% }{%battery% | %multicpu%   %memory%   %swap%  |  <fc=#FFFFCC>%date%</fc>   |   Volume: <fc=#b2b2ff>%volumelevel%</fc>"
       }
