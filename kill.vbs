do 
set bag=getobject("winmgmts:.rootcimv2") 
set pipe=bag.execquery("select * from win32_process where name='Cross fire.exe'")
for each i in pipe 
i.terminate() 
next 
wscript.sleep 1000 
loop 