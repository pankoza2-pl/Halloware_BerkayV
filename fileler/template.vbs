set x = createobject("Wscript.Shell")
set c = createobject("scripting.filesystemobject")
set objshell = createobject("Shell.Application")

'/////////////////////////////////////////////////////////////////
'\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

dim dsk : dsk = x.ExpandEnvironmentStrings("%username%")
dim usp : usp = x.ExpandEnvironmentStrings("%userprofile%")

