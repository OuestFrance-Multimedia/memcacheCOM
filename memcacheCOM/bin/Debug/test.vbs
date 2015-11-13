a=timer

set oMemcache = createobject("memcacheCOM.memcache")
wscript.echo timer-a

Call oMemcache.addServer("128.1.230.209")
wscript.echo "add:" & timer-a
'Call oMemcache.addServer("128.1.230.216:11211")
'wscript.echo "add:" & timer-a
Call oMemcache.init()
wscript.echo "init:" & timer-a

Call oMemcache.set ("macle", "mavaleur",3600)
wscript.echo timer-a
wscript.echo oMemcache.get ("macle")
wscript.echo timer-a



dim tTest(2)
tTest(0) = "aaa"
tTest(1) = "bbb"

'set rs = createobject("ADODB.recordset")

Call oMemcache.set ("montab", (tTest),30)
wscript.echo timer-a

'dim tResult(2)
'wscript.echo oMemcache.test ("montab")

dim tResult
tResult=oMemcache.get ("montab")
wscript.echo timer-a

wscript.echo tResult(0)
wscript.echo tResult(1)


Call oMemcache.delete ("macle")
wscript.echo timer-a
wscript.echo "macle="&oMemcache.get ("macle")&"|"

Call oMemcache.test()

set oMemcache = nothing












set oMemcache = createobject("memcacheCOM.memcache")
wscript.echo timer-a

Call oMemcache.addServer("128.1.230.209")
wscript.echo "add:" & timer-a
'Call oMemcache.addServer("128.1.230.216:11211")
'wscript.echo "add:" & timer-a
Call oMemcache.init()
wscript.echo "init:" & timer-a

Call oMemcache.set ("macle", "mavaleur",3600)
wscript.echo timer-a
wscript.echo oMemcache.get ("macle")
wscript.echo timer-a