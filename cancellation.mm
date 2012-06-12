<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1339482456384" ID="ID_1550051524" MODIFIED="1339482527584" TEXT="Task Cancellation">
<node CREATED="1339482656391" ID="ID_878394129" MODIFIED="1339482662835" POSITION="left" TEXT="reasons to cancel">
<node CREATED="1339482662838" ID="ID_421838504" MODIFIED="1339482680812" TEXT="user requested"/>
<node CREATED="1339482681334" ID="ID_158226461" MODIFIED="1339482691421" TEXT="me-limted activiteis"/>
<node CREATED="1339482691901" ID="ID_957102232" MODIFIED="1339482703341" TEXT="application events">
<node CREATED="1339482704481" ID="ID_360237998" MODIFIED="1339482812437" TEXT="an application searches a problem space by decomposing it so that different tasks search different regions of the problem space, when one task finds a solution all other tasks that are still searching are cancelled"/>
</node>
<node CREATED="1339482818217" ID="ID_1342526507" MODIFIED="1339482827810" TEXT="errors"/>
<node CREATED="1339482831503" ID="ID_1613390251" MODIFIED="1339482835455" TEXT="shutdown">
<node CREATED="1339482835457" ID="ID_546776575" MODIFIED="1339482858538" TEXT="when an application or service is shudown something must be done about work that is currently being processed"/>
</node>
</node>
<node CREATED="1339482908367" ID="ID_509351637" MODIFIED="1339482917272" POSITION="right" TEXT="stoppng threads"/>
<node CREATED="1339483091853" ID="ID_1854696544" MODIFIED="1339483098242" POSITION="right" TEXT="cancellable">
<node CREATED="1339483108829" ID="ID_1777178431" MODIFIED="1339483113830" TEXT="definition">
<node CREATED="1339483113833" ID="ID_788187687" MODIFIED="1339483144923" TEXT="external code can move it to completion earlier than normal"/>
</node>
<node CREATED="1339483151288" ID="ID_1359322636" MODIFIED="1339483167595" TEXT="types">
<node CREATED="1339482923661" ID="ID_1313071201" MODIFIED="1339482928513" TEXT="prememptive">
<node CREATED="1339482930157" ID="ID_370456892" MODIFIED="1339482936311" TEXT="no safe way"/>
</node>
<node CREATED="1339482586487" ID="ID_1023939295" MODIFIED="1339483360913" TEXT="cooperative">
<node CREATED="1339482592328" ID="ID_61949276" MODIFIED="1339482596640" TEXT="bevause">
<node CREATED="1339482596649" ID="ID_71370284" MODIFIED="1339482615243" TEXT="we rearely want a task thread or service to stop immediately"/>
</node>
<node CREATED="1339483014988" ID="ID_184657631" MODIFIED="1339483021675" TEXT="mechanisms">
<node CREATED="1339530280158" ID="ID_1833320306" MODIFIED="1339530291331" TEXT="flag">
<node CREATED="1339483388545" ID="ID_1165213325" MODIFIED="1339530314241" TEXT="characteristics">
<node CREATED="1339483060666" ID="ID_1895258853" MODIFIED="1339483090569" TEXT="if the thread finds that the tasks is set it terminates early"/>
<node CREATED="1339483424331" ID="ID_711590344" MODIFIED="1339483430019" TEXT="is volatile"/>
<node CREATED="1339483440186" ID="ID_182346647" MODIFIED="1339483530761" TEXT="is set via ">
<node CREATED="1339483530762" ID="ID_878328572" MODIFIED="1339483535326" TEXT="the cancel method">
<node CREATED="1339483535328" ID="ID_1039598485" MODIFIED="1339483550959" TEXT="called in a finally block if used to shut down the process"/>
<node CREATED="1339483551607" ID="ID_21289184" MODIFIED="1339483576068" TEXT="in case interrupted exception is thrown"/>
</node>
</node>
</node>
<node CREATED="1339530334657" ID="ID_237414870" MODIFIED="1339530339951" TEXT="considerations">
<node CREATED="1339530353269" ID="ID_1137422435" MODIFIED="1339530376354" TEXT="the task may never check flag if the thread is engaged in a blocking call"/>
</node>
</node>
<node CREATED="1339542283960" ID="ID_1624974633" MODIFIED="1339542288985" TEXT="future">
<node CREATED="1339542288987" ID="ID_1330267339" MODIFIED="1339542307398" TEXT="definition">
<node CREATED="1339542307401" ID="ID_1006783552" MODIFIED="1339542315930" TEXT="manages the task">
<node CREATED="1339542315932" ID="ID_756386077" MODIFIED="1339542322320" TEXT="lifecycle">
<node CREATED="1339542322322" ID="ID_689780792" MODIFIED="1339542325870" TEXT="exceptions"/>
<node CREATED="1339542326647" ID="ID_1066874106" MODIFIED="1339542340213" TEXT="facilitatin cancellations"/>
</node>
</node>
</node>
<node CREATED="1339542342375" ID="ID_1425052792" MODIFIED="1339542354306" TEXT="method">
<node CREATED="1339542354308" ID="ID_1737496342" MODIFIED="1339542402250" TEXT="submit task to the ">
<node CREATED="1339542402252" ID="ID_1186240360" MODIFIED="1339542544855" TEXT="ExecutorService.submit()">
<node CREATED="1339542544857" ID="ID_1020462208" MODIFIED="1339542555327" TEXT="considerations">
<node CREATED="1339542556633" ID="ID_171123894" MODIFIED="1339543020697" TEXT="on set mayInterruptIfRunning on ">
<node CREATED="1339543020699" ID="ID_1189137602" MODIFIED="1339543026296" TEXT="standard Executors">
<node CREATED="1339543026298" ID="ID_515686444" MODIFIED="1339543082153" TEXT="they implement a interuption policy which lets tasks be cancelled while running"/>
<node CREATED="1339543086605" ID="ID_871214735" MODIFIED="1339543120116" TEXT="so safe to set mayInterrrupt when running if in a standard Executor"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1339543152664" ID="ID_1133074892" MODIFIED="1339543167273" TEXT="call cancell() on the returned Future"/>
</node>
<node CREATED="1339543189950" ID="ID_264985132" MODIFIED="1339543197836" TEXT="considerations">
<node CREATED="1339543197838" ID="ID_1065727360" MODIFIED="1339543225046" TEXT="do no interrupt a pool thread when trying to cancel a task">
<node CREATED="1339543225048" ID="ID_1495608154" MODIFIED="1339543247535" TEXT="one does not know what task is running when the thread is interrupted"/>
</node>
</node>
</node>
<node CREATED="1339530166597" ID="ID_122455810" MODIFIED="1339530276032" TEXT="interupprion">
<node CREATED="1339530434707" ID="ID_1806167277" MODIFIED="1339530440725" TEXT="definition">
<node CREATED="1339530440727" ID="ID_1417948029" MODIFIED="1339530493947" TEXT="thread signals to another thread that it should at its convenience and if it feels like it stop what its doing and do something else"/>
</node>
<node CREATED="1339530505634" ID="ID_830959292" MODIFIED="1339530510326" TEXT="considerations">
<node CREATED="1339530510329" ID="ID_648873202" MODIFIED="1339530560244" TEXT="theres is nothing in tha API or language specification that ties interruption to any specific cancellation semantics but in practise using interuption for anything but cancellation is fragile and difficult to sustain in larger applications"/>
</node>
<node CREATED="1339530682735" ID="ID_235639735" MODIFIED="1339530697983" TEXT="methods">
<node CREATED="1339530700208" ID="ID_474073166" MODIFIED="1339530717649" TEXT="isInterupted()">
<node CREATED="1339530717651" ID="ID_1620643194" MODIFIED="1339530720854" TEXT="returns threads">
<node CREATED="1339530576122" ID="ID_1526179917" MODIFIED="1339530588694" TEXT="interrupted status">
<node CREATED="1339530569170" ID="ID_1184574816" MODIFIED="1339530576120" TEXT="each thread has a boolean "/>
<node CREATED="1339530588697" ID="ID_196613985" MODIFIED="1339530666338" TEXT="set to true when thread is interrupted"/>
</node>
</node>
</node>
<node CREATED="1339530752372" ID="ID_1220752592" MODIFIED="1339530770233" TEXT="Thread.interuppted()">
<node CREATED="1339530776834" ID="ID_552113210" MODIFIED="1339530795279" TEXT="definition">
<node CREATED="1339530795281" ID="ID_368295328" MODIFIED="1339530864122" TEXT="clears the interrupted status"/>
<node CREATED="1339530864497" ID="ID_1925179983" MODIFIED="1339530870235" TEXT="returns its previous value"/>
</node>
<node CREATED="1339532300853" ID="ID_1488232237" MODIFIED="1339532304737" TEXT="considerations">
<node CREATED="1339532304739" ID="ID_655648225" MODIFIED="1339532316268" TEXT="if called and returns true you should ">
<node CREATED="1339532316270" ID="ID_1729890716" MODIFIED="1339532334227" TEXT="throw InterruptedException"/>
<node CREATED="1339532336304" ID="ID_129239875" MODIFIED="1339532364024" TEXT="or restore interruptedstatus"/>
</node>
</node>
</node>
</node>
<node CREATED="1339530889087" ID="ID_329207650" MODIFIED="1339530907949" TEXT="exceotions">
<node CREATED="1339530909230" ID="ID_455312237" MODIFIED="1339531135263" TEXT="InteruptedException">
<node CREATED="1339531135266" ID="ID_1333969844" MODIFIED="1339531138477" TEXT="definition">
<node CREATED="1339531172216" ID="ID_1867431035" MODIFIED="1339531317338" TEXT="to indicate early completion due to an interrupt by a ">
<node CREATED="1339531317340" ID="ID_149941180" MODIFIED="1339531325997" TEXT="blocking operation">
<node CREATED="1339531337420" ID="ID_1240710597" MODIFIED="1339531344029" TEXT="e.g.">
<node CREATED="1339531344031" ID="ID_103631559" MODIFIED="1339531351334" TEXT="Thread.sleep()"/>
<node CREATED="1339531351878" ID="ID_684177057" MODIFIED="1339531360357" TEXT="Object.wait()"/>
<node CREATED="1339532196945" ID="ID_1961837732" MODIFIED="1339532199627" TEXT="join()"/>
</node>
<node CREATED="1339531389517" ID="ID_1376285432" MODIFIED="1339531395737" TEXT="considerations">
<node CREATED="1339531395739" ID="ID_197776488" MODIFIED="1339531424980" TEXT="jvm makes no guarantees how quickly the operation will notice"/>
<node CREATED="1339531425556" ID="ID_238292402" MODIFIED="1339531433524" TEXT="in practise it happens quite quickly"/>
<node CREATED="1339532236032" ID="ID_413270287" MODIFIED="1339532260636" TEXT="may ignore the request as long as the status remains so that calling code can query"/>
</node>
</node>
</node>
</node>
<node CREATED="1339532100162" ID="ID_1095724109" MODIFIED="1339532105127" TEXT="method">
<node CREATED="1339532105129" ID="ID_664648077" MODIFIED="1339532124577" TEXT="thread.interrupt()">
<node CREATED="1339532124579" ID="ID_106376624" MODIFIED="1339532129327" TEXT="consideations ">
<node CREATED="1339532129330" ID="ID_802862014" MODIFIED="1339532172827" TEXT="doesnt necessarally stop the target thread from working, it merely delivers the message that interruption is requested"/>
</node>
</node>
</node>
<node CREATED="1339532368376" ID="ID_566397824" MODIFIED="1339532372858" TEXT="considerations">
<node CREATED="1339532372860" ID="ID_292500991" MODIFIED="1339532384245" TEXT="usually the most sensible way to implement cancellation"/>
</node>
</node>
</node>
<node CREATED="1339532454338" ID="ID_1484561895" MODIFIED="1339532463953" TEXT="requires">
<node CREATED="1339532463955" ID="ID_37380295" MODIFIED="1339532470803" TEXT="interruption policy">
<node CREATED="1339532510197" ID="ID_1058892743" MODIFIED="1339532513278" TEXT="definition">
<node CREATED="1339532513280" ID="ID_711611144" MODIFIED="1339532546721" TEXT="determines how a thread interprets an interruption request"/>
<node CREATED="1339532557490" ID="ID_541514240" MODIFIED="1339532571333" TEXT="what it should do when it recieves an interruption request"/>
<node CREATED="1339532575576" ID="ID_1983415369" MODIFIED="1339532586236" TEXT="how quickly thread reacts to interruption"/>
</node>
<node CREATED="1339532634377" ID="ID_1836780513" MODIFIED="1339539675629" TEXT="considerations">
<node CREATED="1339532865989" ID="ID_1062330816" MODIFIED="1339533002454" TEXT="tasks should preserve interupt status for code that has thread">
<node CREATED="1339532979527" ID="ID_1769610994" MODIFIED="1339533043843" TEXT="ownership ">
<node CREATED="1339533043789" ID="ID_464598402" MODIFIED="1339533056971" TEXT="definition">
<node CREATED="1339533072522" ID="ID_1258080020" MODIFIED="1339533084294" TEXT="code that creates threads owns threads"/>
</node>
<node CREATED="1339533063216" ID="ID_837329084" MODIFIED="1339533067964" TEXT="considerations">
<node CREATED="1339532640602" FOLDED="true" ID="ID_1002920839" MODIFIED="1339533036549" TEXT="distinguish interpreation of interruption between ">
<node CREATED="1339532647532" ID="ID_1452725182" MODIFIED="1339532651321" TEXT="threads">
<node CREATED="1339532845414" ID="ID_1093474392" MODIFIED="1339532856846" TEXT="borrowed by task"/>
<node CREATED="1339532857067" ID="ID_1715432925" MODIFIED="1339532861955" TEXT="owned by thread pool"/>
</node>
<node CREATED="1339532666256" ID="ID_616405823" MODIFIED="1339532672281" TEXT="task ">
<node CREATED="1339532828732" ID="ID_121589546" MODIFIED="1339532843099" TEXT="doesn own thread"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1339533089008" ID="ID_1648263445" MODIFIED="1339533114487" TEXT="owning code may wish to act on interrupted status"/>
<node CREATED="1339533145615" ID="ID_918837377" MODIFIED="1339533197377" TEXT="this is why most blocking library calls simply thorw interrupted exeption in response to an interrupt">
<node CREATED="1339533197387" ID="ID_1124658288" MODIFIED="1339533240245" TEXT="they will never execute in threads that they own"/>
<node CREATED="1339533240652" ID="ID_949612121" MODIFIED="1339533255096" TEXT="so most sensible just to get out of the way and communicate the interrupt"/>
</node>
<node CREATED="1339533283472" ID="ID_1637611133" MODIFIED="1339533356863" TEXT="a task should not assume anythng about the interupion policy of its executing thread unless it has explcitly documented in an interruption policy"/>
<node CREATED="1339533392807" ID="ID_99096487" MODIFIED="1339533432781" TEXT="if a task doesnt throw InterruptedException in response to an interrupt it should restore the interrupted exception">
<node CREATED="1339533432791" ID="ID_719230891" MODIFIED="1339533446050" TEXT="Thread,currentThread().interrupt()"/>
</node>
<node CREATED="1339533473674" ID="ID_87287740" MODIFIED="1339533983235" TEXT="never swallow an interruption exception unless implementing that threads interruption policy in owning code"/>
<node CREATED="1339539675567" ID="ID_47548068" MODIFIED="1339539683444" TEXT="timed interruptions/timeouts">
<node CREATED="1339539506704" ID="ID_522176119" MODIFIED="1339539518972" TEXT="never schedule an interupt from a calling thread">
<node CREATED="1339539518974" ID="ID_1190893992" MODIFIED="1339539530886" TEXT="doesnt know called threads interruption polciy"/>
<node CREATED="1339539531375" ID="ID_527719281" MODIFIED="1339539580352" TEXT="thread may return before interrupt goes off and interrupt another thread"/>
<node CREATED="1339539580873" ID="ID_61093209" MODIFIED="1339539621019" TEXT="also if the trask is not responsive to interruption may still wait for a long time"/>
</node>
<node CREATED="1339541689340" ID="ID_988548487" MODIFIED="1339541696083" TEXT="instead">
<node CREATED="1339539687195" ID="ID_190384306" MODIFIED="1339541768776" TEXT="perform a timed join and after join returns"/>
<node CREATED="1339541712706" ID="ID_548031245" MODIFIED="1339541759803" TEXT="schedule a the worker thread to run with a timeout"/>
<node CREATED="1339539959702" FOLDED="true" ID="ID_564695044" MODIFIED="1339541793657" TEXT="save and rethrow exception if an exception was thrown in task">
<node CREATED="1339539980499" ID="ID_712560172" MODIFIED="1339539996033" TEXT="saved throwable is made volatile">
<node CREATED="1339539996035" ID="ID_1766656568" MODIFIED="1339540000632" TEXT="for safe publication"/>
</node>
</node>
</node>
<node CREATED="1339542013924" ID="ID_1713002393" MODIFIED="1339542020503" TEXT="or instead ">
<node CREATED="1339542020937" ID="ID_1105319384" MODIFIED="1339542037865" TEXT="submit the task to an executor and return a future"/>
<node CREATED="1339543303775" ID="ID_291099196" MODIFIED="1339543324788" TEXT="issue a time future.get()"/>
<node CREATED="1339543346140" ID="ID_1248695953" MODIFIED="1339543366444" TEXT="if get it terminated with a TimeoutException cancel the future">
<node CREATED="1339543441758" ID="ID_1713133967" MODIFIED="1339543450309" TEXT="this occurs in the finally clause"/>
<node CREATED="1339543466730" ID="ID_292238946" MODIFIED="1339543490441" TEXT="when Future get throws IntteruptedException or timeoutEception you know the result in no longer needed">
<node CREATED="1339543490450" ID="ID_788173577" MODIFIED="1339543517792" TEXT="we can rethrow the cause of ExecutionException"/>
<node CREATED="1339543518215" ID="ID_1092547501" MODIFIED="1339543562333" TEXT="cancel in the finally clause will ensure the future is still thrown">
<node CREATED="1339543563553" ID="ID_1571519489" MODIFIED="1339543582416" TEXT="if the future is completed calling cancel does no harm"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1339543660980" ID="ID_263360712" MODIFIED="1339543670660" TEXT="non-interruptable blocking">
<node CREATED="1339543692455" ID="ID_55579388" MODIFIED="1339543695925" TEXT="definition">
<node CREATED="1339543695927" ID="ID_1470469750" MODIFIED="1339543725953" TEXT="we cab sometimes concice threads blocked in noninterruptible activieties to sop via means similar to interruption"/>
</node>
<node CREATED="1339543743899" ID="ID_1800562740" MODIFIED="1339543749811" TEXT="mechanisms">
<node CREATED="1339543751172" ID="ID_919718132" MODIFIED="1339543772954" TEXT="Synchronous socket in java.io">
<node CREATED="1339543772956" ID="ID_622316586" MODIFIED="1339543820893" TEXT="blocking read and write notsensitve to blocking in">
<node CREATED="1339543820895" ID="ID_1937946237" MODIFIED="1339543824725" TEXT="InputStream"/>
<node CREATED="1339543824954" ID="ID_1900978101" MODIFIED="1339543828428" TEXT="OutputStream"/>
</node>
<node CREATED="1339543855276" ID="ID_435914226" MODIFIED="1339543872149" TEXT="but closing underlying socket makes any blocked threads throw">
<node CREATED="1339543872151" ID="ID_1799008140" MODIFIED="1339543879659" TEXT="SocketException"/>
</node>
</node>
<node CREATED="1339543833847" ID="ID_1654250053" MODIFIED="1339543852024" TEXT="Synchronous io in java.nio">
<node CREATED="1339543895699" ID="ID_1994155261" MODIFIED="1339543915350" TEXT="interrupting a thread waiting on an InterruptibleChannel ">
<node CREATED="1339543915353" ID="ID_1420371283" MODIFIED="1339543920841" TEXT="throws">
<node CREATED="1339543920843" ID="ID_715080685" MODIFIED="1339543938202" TEXT="ClosedByInterruptExecption"/>
</node>
</node>
<node CREATED="1339543946845" ID="ID_874587698" MODIFIED="1339543965362" TEXT="closing a channel causes threads blocked on channel to throw">
<node CREATED="1339543965364" ID="ID_1321821820" MODIFIED="1339543976003" TEXT="AsynchrnousCloseException"/>
</node>
</node>
<node CREATED="1339543997096" ID="ID_1607303786" MODIFIED="1339544016272" TEXT="Asynchronous IO with Selector">
<node CREATED="1339544016274" ID="ID_73841067" MODIFIED="1339544039278" TEXT="if thread is blocked in Selector.select (in java.nio.channels)">
<node CREATED="1339544039280" ID="ID_679028786" MODIFIED="1339544050619" TEXT="call close() or wakeup()">
<node CREATED="1339544050621" ID="ID_3046715" MODIFIED="1339544057767" TEXT="causes thread to return early"/>
</node>
</node>
</node>
<node CREATED="1339544059664" ID="ID_771078354" MODIFIED="1339544065910" TEXT="Lock Aquisition">
<node CREATED="1339544065912" ID="ID_271929871" MODIFIED="1339544079568" TEXT="if thread is blocked waiting for a lock">
<node CREATED="1339544079570" ID="ID_1462617830" MODIFIED="1339544099665" TEXT="nothing you can do short of ensuringthat the lock is eventually aquired"/>
<node CREATED="1339544100059" ID="ID_1907482737" MODIFIED="1339544126622" TEXT="explicit lock classes offer the lockInterruptibly method">
<node CREATED="1339544126625" ID="ID_664750470" MODIFIED="1339544147172" TEXT="which allows you to aquire a lock while remaining sensitive to intterrupts"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1339483195422" ID="ID_821429476" MODIFIED="1339483199410" TEXT="requires">
<node CREATED="1339483199412" ID="ID_352736938" MODIFIED="1339483209061" TEXT="cancellatin poliicy">
<node CREATED="1339483209063" ID="ID_941890658" MODIFIED="1339483214664" TEXT="definition ">
<node CREATED="1339483214666" ID="ID_1408679697" MODIFIED="1339483232249" TEXT="specifies">
<node CREATED="1339483232252" ID="ID_1942811206" MODIFIED="1339483234578" TEXT="how">
<node CREATED="1339483241429" ID="ID_1132584449" MODIFIED="1339483261763" TEXT="how code can request cancellation"/>
</node>
<node CREATED="1339483235198" ID="ID_1177895585" MODIFIED="1339483236684" TEXT="when">
<node CREATED="1339483263865" ID="ID_1239957768" MODIFIED="1339483286268" TEXT="the task checks whether cancellation has been requested"/>
</node>
<node CREATED="1339483236924" ID="ID_986431168" MODIFIED="1339483238858" TEXT="what">
<node CREATED="1339483296815" ID="ID_850701644" MODIFIED="1339483335358" TEXT="actions the task takes in response to a cacnellation request"/>
</node>
</node>
</node>
<node CREATED="1339533547530" ID="ID_640930660" MODIFIED="1339533556879" TEXT="considerations">
<node CREATED="1339533556881" ID="ID_22449240" MODIFIED="1339533610896" TEXT="tasks should not make assumptions about the interruption poilicies "/>
<node CREATED="1339533630243" ID="ID_134236139" MODIFIED="1339533658268" TEXT="cancellation code should not interrupt threads it doesnt own"/>
<node CREATED="1339534051794" ID="ID_195245870" MODIFIED="1339534061962" TEXT="activities that do not support cancellation">
<node CREATED="1339534061964" ID="ID_656426784" MODIFIED="1339534087869" TEXT="should call blocking calls in a loop"/>
<node CREATED="1339534088234" ID="ID_1397282718" MODIFIED="1339534101440" TEXT="when intteruption is detected">
<node CREATED="1339534101442" ID="ID_1085764725" MODIFIED="1339534106677" TEXT="should retry "/>
<node CREATED="1339534107497" ID="ID_1207519815" MODIFIED="1339534326309" TEXT="but preserve the interrupted status and restore it just before returning">
<node CREATED="1339534612120" ID="ID_1759268281" MODIFIED="1339534647840" TEXT="dont have to use interuption status to preserve interruption status"/>
<node CREATED="1339534652500" ID="ID_634736660" MODIFIED="1339534687466" TEXT="can use flags /other variables to presever state">
<node CREATED="1339534687468" ID="ID_1063009841" MODIFIED="1339534694433" TEXT="be sure to synchronise adequately"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
