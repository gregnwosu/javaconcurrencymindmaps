<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1341744394388" ID="ID_1222492290" MODIFIED="1341746384446" TEXT="liveness">
<node CREATED="1341744429397" ID="ID_1402308527" MODIFIED="1341744441619" POSITION="right" TEXT="tradeoff">
<node CREATED="1341744444810" ID="ID_340766095" MODIFIED="1341746456450" TEXT="liveness">
<node CREATED="1341746492398" ID="ID_853871761" MODIFIED="1341746844315" TEXT="decresases by more ">
<node CREATED="1341744441621" ID="ID_265032431" MODIFIED="1341744444540" TEXT="safety">
<node CREATED="1341744500753" ID="ID_788587606" MODIFIED="1341744504776" TEXT="ensured by">
<node CREATED="1341744505864" ID="ID_955373345" MODIFIED="1341744507957" TEXT="locking">
<node CREATED="1341744547486" ID="ID_544282659" MODIFIED="1341746888939" TEXT="incorrect ordering can cause">
<node CREATED="1341746859452" ID="ID_303879604" MODIFIED="1341746864617" TEXT="deadlock"/>
</node>
</node>
<node CREATED="1341747057973" ID="ID_386783288" MODIFIED="1341747065319" TEXT="bounding ">
<node CREATED="1341747065321" ID="ID_492956793" MODIFIED="1341747071205" TEXT="resource consumption">
<node CREATED="1341747073567" ID="ID_488217092" MODIFIED="1341747088708" TEXT="incorrect bounding ">
<node CREATED="1341747089216" ID="ID_327968246" MODIFIED="1341747094314" TEXT="resource deadlock"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1341747153982" ID="ID_1817793865" MODIFIED="1341747159700" POSITION="right" TEXT="deadlock">
<node CREATED="1341747160834" ID="ID_454808227" MODIFIED="1341747162971" TEXT="definition">
<node CREATED="1341747163800" ID="ID_862331745" MODIFIED="1341747248795" TEXT="threads as nodes on a drected graph whose edges represent the relation:">
<node CREATED="1341747248798" ID="ID_1741951281" MODIFIED="1341747268747" TEXT="&quot;Thread A is waiting for a resources held by Thread B&quot;"/>
<node CREATED="1341747269426" ID="ID_254962937" MODIFIED="1341747291008" TEXT="If the graph is cyclical, there is deadlock"/>
</node>
</node>
<node CREATED="1343477527657" ID="ID_1772028989" MODIFIED="1343477533852" TEXT="considerations">
<node CREATED="1343477533855" ID="ID_1489093951" MODIFIED="1343477575433" TEXT="when a set of threads deadlock, they can no longer be used"/>
</node>
<node CREATED="1341747378193" ID="ID_614016483" MODIFIED="1341747381031" TEXT="types ">
<node CREATED="1341747381034" ID="ID_1009950406" MODIFIED="1343477599496" TEXT="left-right">
<node CREATED="1343477668970" ID="ID_1868372133" MODIFIED="1343477672374" TEXT="definition">
<node CREATED="1343477599498" ID="ID_536485788" MODIFIED="1343477639072" TEXT="occurs when two threads attempt to aquire the same locks in a different order"/>
</node>
<node CREATED="1343477677906" ID="ID_635016052" MODIFIED="1343477684286" TEXT="solution">
<node CREATED="1343477684288" ID="ID_178531144" MODIFIED="1343477715678" TEXT="gurantee that ever thread that needs locks L and M at the same time aquires them in the same order"/>
</node>
</node>
<node CREATED="1343477769601" ID="ID_415623787" MODIFIED="1343477775129" TEXT="dynamic lock ordering">
<node CREATED="1343477785472" ID="ID_1789288894" MODIFIED="1343477798786" TEXT="definition">
<node CREATED="1343477799613" ID="ID_1078975097" MODIFIED="1343477880669" TEXT="when the locks are parametised so although the locking code has a consitent order , switching the order of the parameters can cause deadlock"/>
</node>
<node CREATED="1343477899785" ID="ID_593786720" MODIFIED="1343477903295" TEXT="solution">
<node CREATED="1343477903297" ID="ID_457033404" MODIFIED="1343477929065" TEXT="look for nested lock aquisitions"/>
<node CREATED="1343477930294" ID="ID_1296693597" MODIFIED="1343478069443" TEXT="we must induce ordering">
<node CREATED="1343478820423" ID="ID_580152384" MODIFIED="1343478826920" TEXT="by hashcode">
<node CREATED="1343478069445" ID="ID_364480815" MODIFIED="1343478431840" TEXT="we get the default hashcode for the objects and lock depending on which one is less"/>
<node CREATED="1343478432235" ID="ID_30412100" MODIFIED="1343478445028" TEXT="this will always be consistent between lock monitors"/>
<node CREATED="1343478658437" ID="ID_632968043" MODIFIED="1343478703605" TEXT="in the case where the hashcodes are equal we have a tie break where there is another lock to aquire first before aquiring the two locks in any order">
<node CREATED="1343478738701" ID="ID_991351468" MODIFIED="1343478758687" TEXT="if hash collisionare frequent this may become a concurrency bottleneck"/>
</node>
</node>
<node CREATED="1343478846180" ID="ID_783669230" MODIFIED="1343478852723" TEXT="by some unique ordinal">
<node CREATED="1343478867285" ID="ID_1859209038" MODIFIED="1343481778480" TEXT="objec"/>
</node>
</node>
</node>
</node>
<node CREATED="1343481745730" ID="ID_1321169970" MODIFIED="1343481763230" TEXT="deadlocks between cooperating objects">
<node CREATED="1343481787029" ID="ID_1115894173" MODIFIED="1343481807620" TEXT="definition">
<node CREATED="1343481807622" ID="ID_365227578" MODIFIED="1343481831271" TEXT="one objects synchronized method calls another objects synchronised method"/>
<node CREATED="1343481831995" ID="ID_1501501903" MODIFIED="1343481840447" TEXT="there is an implicit lock ordering"/>
<node CREATED="1343481841135" ID="ID_159411669" MODIFIED="1343481858377" TEXT="depending on the call heirarchy">
<node CREATED="1343481863735" ID="ID_974332945" MODIFIED="1343481869631" TEXT="different locks may be ordered"/>
</node>
</node>
<node CREATED="1343481875788" ID="ID_1828901054" MODIFIED="1343481883765" TEXT="solution ">
<node CREATED="1343481884784" ID="ID_1096091287" MODIFIED="1343481906713" TEXT="the warning sign is that while holding the lock the code calls an ">
<node CREATED="1343481906715" ID="ID_1220479248" MODIFIED="1343481909822" TEXT="alien method">
<node CREATED="1343481937853" ID="ID_29084541" MODIFIED="1343481941475" TEXT="definition">
<node CREATED="1343481941477" ID="ID_1221869869" MODIFIED="1343481957466" TEXT="a method whose behaviour is not fullu specified in the containing class"/>
<node CREATED="1343481964937" ID="ID_1377799706" MODIFIED="1343482003400" TEXT="this includes methods in other classes as well as overrridable methods that are neither pricate nor final"/>
<node CREATED="1343482016830" ID="ID_866076030" MODIFIED="1343482032534" TEXT="passing an object to an alien method must be considered as publishing that object">
<node CREATED="1343482045105" ID="ID_556166985" MODIFIED="1343482058014" TEXT="since you dont know what code will be called in that method"/>
<node CREATED="1343482058828" ID="ID_1848586173" MODIFIED="1343482097067" TEXT="you dont kno that the alien method wont publish the object or retain a reference to it that may be used later by another thread"/>
</node>
</node>
</node>
</node>
<node CREATED="1343483632769" ID="ID_795709504" MODIFIED="1343483640449" TEXT="only call alien methods via">
<node CREATED="1343483640454" ID="ID_1129478882" MODIFIED="1343483644144" TEXT="open calls">
<node CREATED="1343483644147" ID="ID_1114568460" MODIFIED="1343483647238" TEXT="definition ">
<node CREATED="1343483647241" ID="ID_1758047943" MODIFIED="1343483660767" TEXT="a call to another method with no locks held"/>
<node CREATED="1343483725302" ID="ID_641777478" MODIFIED="1343483755997" TEXT="analgous to using encapsulation to provide thread saftey">
<node CREATED="1343483756000" ID="ID_1221947307" MODIFIED="1343483761374" TEXT="makes analysis easier"/>
</node>
</node>
<node CREATED="1343483663152" ID="ID_1323757999" MODIFIED="1343483680005" TEXT="consideration">
<node CREATED="1343483680007" ID="ID_1253878781" MODIFIED="1343483707370" TEXT="classes that rely on open calls are more">
<node CREATED="1343483707373" ID="ID_1410598723" MODIFIED="1343483711013" TEXT="well behaved"/>
<node CREATED="1343483711228" ID="ID_1632671400" MODIFIED="1343483713884" TEXT="conposable"/>
</node>
</node>
</node>
</node>
<node CREATED="1343483837840" ID="ID_605311201" MODIFIED="1343483951771" TEXT="after analysis shows we can shrink the synchronized blocks to only guard operations that access shared state"/>
</node>
<node CREATED="1343482125028" ID="ID_943715800" MODIFIED="1343482129279" TEXT="considerations">
<node CREATED="1343482130146" ID="ID_1985465485" MODIFIED="1343482147526" TEXT="invoking an alien method with a lock held is askinf for liveness trouble"/>
<node CREATED="1343482148333" ID="ID_571262535" MODIFIED="1343482177166" TEXT="the alien mehtond might acquire other locks or block for a long time , stalling other threads that need the lock you hold"/>
<node CREATED="1343483996709" ID="ID_613966721" MODIFIED="1343484037167" TEXT="strive to use open calls through your program, Programs that rely on open calls are far easier toanalyse for deadlock-freedom than those that allow calls to alien mehtids with locks held."/>
<node CREATED="1343484068043" ID="ID_4081870" MODIFIED="1343484120517" TEXT="restructiring a synchronixed block to allow open calls can have sideeffects, ">
<node CREATED="1343484120520" ID="ID_159448531" MODIFIED="1343484121765" TEXT="operations that were atomic are no longer atomiic"/>
<node CREATED="1343484134274" ID="ID_276452024" MODIFIED="1343484197209" TEXT="htis should be acceptable"/>
</node>
<node CREATED="1343484200080" ID="ID_1239380456" MODIFIED="1343484210986" TEXT="when we cannot abide by the sideeffecs">
<node CREATED="1343484210989" ID="ID_27461042" MODIFIED="1343484240464" TEXT="we may need to strucutre a concurrent object so that only one thread can execute the code path following an open call">
<node CREATED="1343806257298" ID="ID_1212856811" MODIFIED="1343806260903" TEXT="e.g.">
<node CREATED="1343806260906" ID="ID_183761024" MODIFIED="1343806278246" TEXT="when shutting down a service">
<node CREATED="1343806278249" ID="ID_1648647046" MODIFIED="1343806302601" TEXT="first: wait for in-progress operations to complete"/>
<node CREATED="1343806303210" ID="ID_375734127" MODIFIED="1343806346587" TEXT="then release resources used by the service"/>
<node CREATED="1343806347028" ID="ID_1948349008" MODIFIED="1343806367698" TEXT="so hold the lock long enough to update the service state to &quot;shutting down&quot;">
<node CREATED="1343806379526" ID="ID_356763564" MODIFIED="1343806390515" TEXT="so that other threads see this state">
<node CREATED="1343806390517" ID="ID_981546989" MODIFIED="1343806556865" TEXT="including the thread that is shutting down the service"/>
</node>
<node CREATED="1343806560958" ID="ID_222861550" MODIFIED="1343806597355" TEXT="relies on the construction of a protocol so that other threads do not try to start if the state is &quot; shutting down &quot;"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1343806644522" ID="ID_887370113" MODIFIED="1343806660479" TEXT="resource deadlock">
<node CREATED="1343806660482" ID="ID_1516969000" MODIFIED="1343806663566" TEXT="definition">
<node CREATED="1343806663568" ID="ID_617790997" MODIFIED="1343806681965" TEXT="threads can deadlock waiting on resources as well as lockks"/>
<node CREATED="1343806682355" ID="ID_1565565847" MODIFIED="1343806728986" TEXT="also includes thread starvation deadlock">
<node CREATED="1343806728988" ID="ID_359836311" MODIFIED="1343806732520" TEXT="definition">
<node CREATED="1343806732522" ID="ID_21628134" MODIFIED="1343806756337" TEXT="e.g. ">
<node CREATED="1343806756339" ID="ID_485209852" MODIFIED="1343806781377" TEXT="where a tasks that submits a task and waits for its result executes in a single-threaded Executor."/>
<node CREATED="1343806782244" ID="ID_1617120831" MODIFIED="1343806807331" TEXT="in which case it will wait forever"/>
</node>
<node CREATED="1343806808656" ID="ID_1478153853" MODIFIED="1343806843059" TEXT="tasks that wiat for other tasks are the primary source for thread starvation deadlock"/>
<node CREATED="1343806906625" ID="ID_1624869428" MODIFIED="1343806918818" TEXT="bounded bools and interdependent tasks do not mix well"/>
</node>
</node>
</node>
<node CREATED="1343806996194" ID="ID_1581724919" MODIFIED="1343807000038" TEXT="considerations">
<node CREATED="1343807000040" ID="ID_471324585" MODIFIED="1343807028819" TEXT="a program  that never aquires more than one lock at a time cannot experiience lock ordering deadlock"/>
<node CREATED="1343807029250" ID="ID_1142245408" MODIFIED="1343807049405" TEXT="if you aquire multiple locks , the lock ordering must be part of your design"/>
<node CREATED="1343807088853" ID="ID_644281281" MODIFIED="1343807102397" TEXT="document the lock ordering protocol"/>
<node CREATED="1343807102933" ID="ID_328065371" MODIFIED="1343807117472" TEXT="minimise lock interactions"/>
</node>
<node CREATED="1343807124742" ID="ID_263454902" MODIFIED="1343807128454" TEXT="audit">
<node CREATED="1343807130104" ID="ID_1132168822" MODIFIED="1343807140780" TEXT="audit your code for deadlock freedom ">
<node CREATED="1343807140783" ID="ID_622560631" MODIFIED="1343807168417" TEXT="first identify where multiple locks could be acquired ">
<node CREATED="1343807168419" ID="ID_1897442221" MODIFIED="1343807175028" TEXT="try to make this a small set"/>
</node>
<node CREATED="1343807175995" ID="ID_326313894" MODIFIED="1343807228198" TEXT="second: perform a global analysis of all such instances to ensure that lock ordering is consistent across your entire program"/>
</node>
<node CREATED="1343807255852" ID="ID_668860675" MODIFIED="1343807273965" TEXT="techniques">
<node CREATED="1343807273967" ID="ID_667815624" MODIFIED="1343807276082" TEXT="code review"/>
<node CREATED="1343807276422" ID="ID_397904734" MODIFIED="1343807289669" TEXT="byte code or source code  static analysis programs"/>
<node CREATED="1343807299314" ID="ID_1979421821" MODIFIED="1343807306475" TEXT="use open calls to make this easier"/>
<node CREATED="1343807358492" ID="ID_629431122" MODIFIED="1343807372187" TEXT="explict Lock classes">
<node CREATED="1343807372189" ID="ID_1058128064" MODIFIED="1343807377713" TEXT="tryLock ">
<node CREATED="1343807377715" ID="ID_694302107" MODIFIED="1343807390187" TEXT="definition">
<node CREATED="1343807390583" ID="ID_58748461" MODIFIED="1343807427895" TEXT="lets you specify a timeout after which tryLock returns a failure"/>
</node>
<node CREATED="1343807469658" ID="ID_1816158789" MODIFIED="1343807473404" TEXT="considerations">
<node CREATED="1343807434686" ID="ID_1388095658" MODIFIED="1343807468521" TEXT="by using a timeout longer than you expect to take you can regain control if there is a problem aquiring the lock"/>
<node CREATED="1343807479369" ID="ID_927745782" MODIFIED="1343807489508" TEXT="when a timed lock fails you dont always know why"/>
<node CREATED="1344090320251" ID="ID_1377190031" MODIFIED="1344090343103" TEXT="this works only when two locks are aquired together in the same method">
<node CREATED="1344090343105" ID="ID_610492558" MODIFIED="1344090367452" TEXT="if multiple locks are aquired due to nesting of method calls you cannot just release the outer lock"/>
<node CREATED="1344090368686" ID="ID_1548677132" MODIFIED="1344090374073" TEXT="even if you know you hold it"/>
</node>
</node>
<node CREATED="1344090245147" ID="ID_1557442920" MODIFIED="1344090249415" TEXT="solution ">
<node CREATED="1344090249418" ID="ID_529836823" MODIFIED="1344090263313" TEXT="when a lock aquisition times out">
<node CREATED="1344090263315" ID="ID_16113259" MODIFIED="1344090273582" TEXT="release the locks"/>
<node CREATED="1344090283230" ID="ID_791056417" MODIFIED="1344090290725" TEXT="back off and wait a while"/>
<node CREATED="1344090291079" ID="ID_609011365" MODIFIED="1344090299033" TEXT="try again"/>
</node>
</node>
</node>
</node>
<node CREATED="1344090387477" ID="ID_1319321435" MODIFIED="1344090402339" TEXT="deadlock analysis ">
<node CREATED="1344090402341" ID="ID_1575145657" MODIFIED="1344090404241" TEXT="via">
<node CREATED="1344090404243" ID="ID_902528431" MODIFIED="1344090414252" TEXT="thread dumps">
<node CREATED="1344090414254" ID="ID_756535830" MODIFIED="1344090417048" TEXT="definition">
<node CREATED="1344090455968" ID="ID_1072678132" MODIFIED="1344090465542" TEXT="includes">
<node CREATED="1344090417051" ID="ID_83274349" MODIFIED="1344090474863" TEXT=" a stack trace for each running thread"/>
<node CREATED="1344090475497" ID="ID_762132592" MODIFIED="1344090505118" TEXT="locking information ">
<node CREATED="1344090505120" ID="ID_665913866" MODIFIED="1344090507922" TEXT="such as">
<node CREATED="1344090507924" ID="ID_102177435" MODIFIED="1344090514598" TEXT="which locks are held by each thread"/>
<node CREATED="1344090514818" ID="ID_697249792" MODIFIED="1344090536472" TEXT="in which stack frame they were acquired"/>
<node CREATED="1344090536943" ID="ID_802702433" MODIFIED="1344090546247" TEXT="which lock a blocked thread is waiting to acquire"/>
</node>
</node>
<node CREATED="1344090573168" ID="ID_426745028" MODIFIED="1344090578736" TEXT="deadlock information">
<node CREATED="1344090578738" ID="ID_51646142" MODIFIED="1344090622903" TEXT="when generating a thread lock the jvm traverses the lock waiting graph looking for deadlock"/>
<node CREATED="1344090623173" ID="ID_412632317" MODIFIED="1344090646963" TEXT="if it finds one it provides ">
<node CREATED="1344090648084" ID="ID_1446630401" MODIFIED="1344090654083" TEXT="which threads are involved"/>
<node CREATED="1344090659898" ID="ID_1611896378" MODIFIED="1344090666845" TEXT="which locks are involved"/>
<node CREATED="1344090667474" ID="ID_695759351" MODIFIED="1344090679519" TEXT="where in the program the aquistions take place"/>
</node>
</node>
</node>
</node>
<node CREATED="1344090699389" ID="ID_1539637099" MODIFIED="1344090706124" TEXT="trigger via">
<node CREATED="1344090706126" ID="ID_458507700" MODIFIED="1344090716310" TEXT="SIGQUIT (kill -3)"/>
<node CREATED="1344090716888" ID="ID_259775666" MODIFIED="1344090728794" TEXT="Ctrl + \ in unix"/>
<node CREATED="1344090729180" ID="ID_1898301598" MODIFIED="1344090737606" TEXT="Ctrl + break in windows"/>
</node>
<node CREATED="1344090755355" ID="ID_48693950" MODIFIED="1344090759520" TEXT="considerations ">
<node CREATED="1344090759523" ID="ID_580093178" MODIFIED="1344090771377" TEXT="explicit lock classes">
<node CREATED="1344090771379" ID="ID_403585547" MODIFIED="1344090802887" TEXT="java 5 has no support for lock information from thread dump explicit locks do not show up"/>
<node CREATED="1344090803995" ID="ID_400328253" MODIFIED="1344090828425" TEXT="java 6 does include thread dump support and deadlock detection with explicit locks">
<node CREATED="1344090828427" ID="ID_949222099" MODIFIED="1344090842379" TEXT="the information on where the locks are aquired is less precise"/>
</node>
<node CREATED="1344090885870" ID="ID_146749579" MODIFIED="1344090906192" TEXT="intrinsic locks are assoicated with the stack frame in which they were aquired"/>
<node CREATED="1344090906373" ID="ID_1680973516" MODIFIED="1344090916854" TEXT="explicit locks are associated only with the aquiring thread"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1344091306783" ID="ID_909641366" MODIFIED="1344091315069" TEXT="stavation">
<node CREATED="1344091315071" ID="ID_1077332761" MODIFIED="1344091318517" TEXT="definition">
<node CREATED="1344091318519" ID="ID_789788800" MODIFIED="1344091352077" TEXT="when a thread is permanently denide acces to resources it needs in order to make progress"/>
<node CREATED="1344091352649" ID="ID_361756048" MODIFIED="1344091370550" TEXT="the most commonly starved resource is CPU cycles"/>
</node>
<node CREATED="1344091372075" ID="ID_1624719168" MODIFIED="1344091416751" TEXT="can be caused by">
<node CREATED="1344091375821" ID="ID_1800815414" MODIFIED="1344091427517" TEXT=" in appropriate use of thread priorities">
<node CREATED="1344091523128" ID="ID_801619583" MODIFIED="1344091528264" TEXT="thread priorites">
<node CREATED="1344091528267" ID="ID_1958628583" MODIFIED="1344091537486" TEXT="api">
<node CREATED="1344091537488" ID="ID_1061038352" MODIFIED="1344091555012" TEXT="merely contains sheduling hnts">
<node CREATED="1344091718115" ID="ID_1042421736" MODIFIED="1344091725385" TEXT="may do nothing "/>
<node CREATED="1344091725890" ID="ID_357679533" MODIFIED="1344091747377" TEXT="or may cause always cause one thread to be scheduled before another">
<node CREATED="1344091765306" ID="ID_540040744" MODIFIED="1344091772413" TEXT="starvation"/>
</node>
<node CREATED="1344091774289" ID="ID_1044987513" MODIFIED="1344091795890" TEXT="generally wise to avoid tweaking scheduling priorites">
<node CREATED="1344091797330" ID="ID_673727050" MODIFIED="1344091814268" TEXT="as it makes the behaviour of your application platform specific"/>
</node>
</node>
<node CREATED="1344091555632" ID="ID_598604264" MODIFIED="1344091585874" TEXT="has 10 levels that the jvm can map to operating system scheduling priorities">
<node CREATED="1344091594580" ID="ID_1490852135" MODIFIED="1344091613300" TEXT="platform specific"/>
<node CREATED="1344091613801" ID="ID_1474447784" MODIFIED="1344091631617" TEXT="some OS&apos;s have fewer than 10 levels ">
<node CREATED="1344091631619" ID="ID_1679357862" MODIFIED="1344091653423" TEXT="hence some api levels map to the sameOS levels"/>
</node>
</node>
<node CREATED="1344091689494" ID="ID_959730202" MODIFIED="1344091714768" TEXT="generally most threads have Thread,NORM_PRIORITY">
<node CREATED="1344091876558" ID="ID_275587715" MODIFIED="1344091882545" TEXT="this is usually adequate"/>
</node>
<node CREATED="1344091829862" ID="ID_1993048181" MODIFIED="1344091854682" TEXT="you can often spot a program that is trying to fix priority tweaking ">
<node CREATED="1344091854684" ID="ID_823885374" MODIFIED="1344091857757" TEXT="it contains">
<node CREATED="1344091857759" ID="ID_1288365405" MODIFIED="1344091861401" TEXT="Thread,yield"/>
<node CREATED="1344091861630" ID="ID_51143881" MODIFIED="1344091868095" TEXT="Thread.sleep"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1344091435931" FOLDED="true" ID="ID_1039442539" MODIFIED="1344091517155" TEXT="executing non terminating code while holding locks">
<node CREATED="1344091443878" ID="ID_42047741" MODIFIED="1344091449975" TEXT="inifintate loops"/>
<node CREATED="1344091450821" ID="ID_1143606205" MODIFIED="1344091465903" TEXT="infinite waits"/>
</node>
</node>
</node>
<node CREATED="1344091892762" ID="ID_1483361120" MODIFIED="1344091921895" TEXT="poor responsiveness">
<node CREATED="1344091922958" ID="ID_1397025248" MODIFIED="1344092064580" TEXT="causes">
<node CREATED="1344091928038" ID="ID_1866016217" MODIFIED="1344091994174" TEXT="CPU intensive background task can still suffer from poor responsiveness if they have to compete for cpu cycles with the event thread">
<node CREATED="1344091994954" ID="ID_80348823" MODIFIED="1344092011451" TEXT="this is one case where altering priorities makes sense">
<node CREATED="1344092011453" ID="ID_109063949" MODIFIED="1344092035572" TEXT="when cpu intensive background tasks effects responsiveness"/>
</node>
</node>
<node CREATED="1344092069989" ID="ID_531713497" MODIFIED="1344092077872" TEXT="poor lock management">
<node CREATED="1344092077874" ID="ID_1568739317" MODIFIED="1344092124520" TEXT="if a thread hold a lock for a long time or longer than necessary while working"/>
<node CREATED="1344092125094" ID="ID_1245335122" MODIFIED="1344092137167" TEXT="other threads that need that lock may need to wait a long time"/>
</node>
</node>
</node>
<node CREATED="1344092140598" ID="ID_1206629670" MODIFIED="1344092144731" TEXT="Livelock">
<node CREATED="1344092146145" ID="ID_705709538" MODIFIED="1344092153725" TEXT="is">
<node CREATED="1344092153727" ID="ID_1340969700" MODIFIED="1344092184833" TEXT="a form of liveness failure in which a thread while not blocked cannot make progress because it keeps retrying an operation that will always fail"/>
</node>
<node CREATED="1344092198304" ID="ID_895876629" MODIFIED="1344092212681" TEXT="causes">
<node CREATED="1344092212684" ID="ID_897798034" MODIFIED="1344092226807" TEXT="transactional message applications">
<node CREATED="1344092401575" ID="ID_259844321" MODIFIED="1344092420903" TEXT="overeager recovery code that treats and unrecoverable error as a recovverable one">
<node CREATED="1344092420905" ID="ID_416037645" MODIFIED="1344092426625" TEXT="e.g.">
<node CREATED="1344092226809" ID="ID_862856677" MODIFIED="1344092310073" TEXT="where a framework rolls back a message and puts it to the end of a queue">
<node CREATED="1344092310627" ID="ID_460725221" MODIFIED="1344092360965" TEXT="if there is a bug for a particular type of message ,this will cause the message to continually be placed at the head of the queue and cause starve other messages from being processed"/>
<node CREATED="1344092372006" ID="ID_1196910141" MODIFIED="1344092400397" TEXT="this is called the poisone message problem"/>
</node>
</node>
</node>
<node CREATED="1344092437775" ID="ID_388846911" MODIFIED="1344092454694" TEXT="multiple co-operating threads">
<node CREATED="1344092454697" ID="ID_417043377" MODIFIED="1344092487982" TEXT="where they change state in response to each other in a way such that they can never make progress">
<node CREATED="1344092487991" ID="ID_13937574" MODIFIED="1344092492314" TEXT="e.g. ">
<node CREATED="1344092492316" ID="ID_223643015" MODIFIED="1344092517318" TEXT="like two people that bump into each other in a corridor, and then both move to the left to avoid each other"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1344092526203" ID="ID_766309232" MODIFIED="1344092532340" TEXT="solution">
<node CREATED="1344092532342" ID="ID_767111968" MODIFIED="1344092543299" TEXT="multple co-operating thread problem">
<node CREATED="1344092543301" ID="ID_1106471022" MODIFIED="1344092556632" TEXT="introduce some randomness into the retry mechanism"/>
<node CREATED="1344092569297" ID="ID_812488756" MODIFIED="1344092586584" TEXT="retrying with random waits and backoffs">
<node CREATED="1344092589202" ID="ID_333678028" MODIFIED="1344092620540" TEXT="the ethernet protocol includes an exponential backup after repeated collisions"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1343807354596" ID="ID_642854855" MODIFIED="1343807357187" TEXT="tools">
<node CREATED="1344092648107" ID="ID_1394236466" MODIFIED="1344092678935" TEXT="avoiding lock ordering deadlock starts at desing time">
<node CREATED="1344092678937" ID="ID_1474198340" MODIFIED="1344092698316" TEXT="ensure that when threads aquire multiple locks they do so in a consistent order"/>
<node CREATED="1344092699033" ID="ID_1416969399" MODIFIED="1344092715826" TEXT="this is best ensured by using open calls throughout your program">
<node CREATED="1344092715828" ID="ID_189722811" MODIFIED="1344092717934" TEXT="which">
<node CREATED="1344092717936" ID="ID_1691155228" MODIFIED="1344092738548" TEXT="greatly reduces the number of places where  multiple locks are held at once"/>
<node CREATED="1344092738844" ID="ID_930830093" MODIFIED="1344092747943" TEXT="makes it more obvious where those places are"/>
<node CREATED="1344092748318" ID="ID_862266999" MODIFIED="1344092748318" TEXT=""/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
