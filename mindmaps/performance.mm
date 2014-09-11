<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1346797816795" ID="ID_89160207" MODIFIED="1347654692717" TEXT="Performance and Scalability">
<node CREATED="1346797920436" FOLDED="true" ID="ID_722152838" MODIFIED="1346967703139" POSITION="right" TEXT="improved ">
<node CREATED="1346798237918" ID="ID_789127106" MODIFIED="1346798244152" TEXT="performance">
<node CREATED="1346798249648" ID="ID_1416891435" MODIFIED="1346798251442" TEXT="via">
<node CREATED="1346797975299" ID="ID_1644310868" MODIFIED="1346797981698" TEXT="resource utilisation">
<node CREATED="1346797981701" ID="ID_1716527197" MODIFIED="1346797984684" TEXT="by">
<node CREATED="1346797984687" ID="ID_1139884656" MODIFIED="1346798008989" TEXT="letting applications more easiliy exploit avalable processing capacity"/>
</node>
</node>
<node CREATED="1346798107210" ID="ID_1076220275" MODIFIED="1346798113811" TEXT="responsiveness">
<node CREATED="1346798115300" ID="ID_1063833359" MODIFIED="1346798126002" TEXT="by">
<node CREATED="1346798126006" ID="ID_1056271666" MODIFIED="1346798157916" TEXT="letting application begin processing new tasks immediiately while existing tasks are still running"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1346798194951" FOLDED="true" ID="ID_1915135089" MODIFIED="1346967702352" POSITION="right" TEXT="considerations">
<node CREATED="1346798203910" ID="ID_943703841" MODIFIED="1346798213267" TEXT="improvements often counter procudctive">
<node CREATED="1346798213269" ID="ID_664313599" MODIFIED="1346798225018" TEXT="first make your program right, then improve it"/>
</node>
</node>
<node CREATED="1346798719287" FOLDED="true" ID="ID_1285061843" MODIFIED="1346799261268" POSITION="right" TEXT="mearsurment">
<node CREATED="1346798724286" ID="ID_436229820" MODIFIED="1346798728317" TEXT="via">
<node CREATED="1346798769543" ID="ID_692796846" MODIFIED="1346798771946" TEXT="how fast">
<node CREATED="1346798728320" ID="ID_1356574004" MODIFIED="1346798733996" TEXT="service time"/>
<node CREATED="1346798743595" ID="ID_1202612027" MODIFIED="1346798750312" TEXT="effciency">
<node CREATED="1346798932135" ID="ID_808044895" MODIFIED="1346798952365" TEXT="when tuning for performance the goal is usually to do the same work with less effort">
<node CREATED="1346798952367" ID="ID_1643640284" MODIFIED="1346799021707" TEXT="reusing previously computed results"/>
</node>
</node>
<node CREATED="1346798735765" ID="ID_699566094" MODIFIED="1346798737734" TEXT="latency"/>
</node>
<node CREATED="1346798783648" ID="ID_397061841" MODIFIED="1346798788209" TEXT="hpw much">
<node CREATED="1346798751454" ID="ID_1070777083" MODIFIED="1346798756065" TEXT="scalability">
<node CREATED="1346798817290" ID="ID_461059085" MODIFIED="1346798880158" TEXT="scalability descirbes the ability to improve throughput or capacity when additional computing resources (such as additional CPU&apos;s , memory, storage or IO bandwidth) are added"/>
<node CREATED="1346799022643" ID="ID_1027279217" MODIFIED="1346799053076" TEXT="trying to find ways to parallelize the problem "/>
<node CREATED="1346799053578" ID="ID_1560233352" MODIFIED="1346799060756" TEXT="doing more work with more resources"/>
</node>
<node CREATED="1346798756299" ID="ID_133781734" MODIFIED="1346798768972" TEXT="capacity"/>
<node CREATED="1346798738215" ID="ID_205523402" MODIFIED="1346798742512" TEXT="throughput"/>
</node>
</node>
<node CREATED="1346799096453" ID="ID_181627327" MODIFIED="1346799101116" TEXT="considerations">
<node CREATED="1346799101118" ID="ID_646911786" MODIFIED="1346799107549" TEXT="how fast vs how much">
<node CREATED="1346799107551" ID="ID_1356417304" MODIFIED="1346799139049" TEXT="often at odds with each other"/>
<node CREATED="1346799139530" ID="ID_1882560037" MODIFIED="1346799167317" TEXT="man y of the tricks that improve performce in single threaded applications are bad for scalability"/>
</node>
</node>
</node>
<node CREATED="1346798270351" FOLDED="true" ID="ID_953543743" MODIFIED="1346967700821" POSITION="right" TEXT="definition">
<node CREATED="1346798281529" ID="ID_479575760" MODIFIED="1346798299538" TEXT="doing more work with fewer ">
<node CREATED="1346798299541" ID="ID_1474538315" MODIFIED="1346798302611" TEXT="resources">
<node CREATED="1346798315714" ID="ID_750171280" MODIFIED="1346798380380" TEXT="often bound by">
<node CREATED="1346798318959" ID="ID_488543323" MODIFIED="1346798324120" TEXT="CPU cycles"/>
<node CREATED="1346798324523" ID="ID_1341976414" MODIFIED="1346798326526" TEXT="memory"/>
<node CREATED="1346798327092" ID="ID_343332802" MODIFIED="1346798333503" TEXT="network bandwith"/>
<node CREATED="1346798334111" ID="ID_1417363759" MODIFIED="1346798343506" TEXT="IO bandwidth"/>
<node CREATED="1346798344077" ID="ID_536346813" MODIFIED="1346798348549" TEXT="database requests "/>
<node CREATED="1346798348801" ID="ID_1077892593" MODIFIED="1346798357826" TEXT="disk space"/>
</node>
</node>
</node>
<node CREATED="1346798428157" ID="ID_233926177" MODIFIED="1346798456473" TEXT="keeping the CPUs as busy as possible with useful work">
<node CREATED="1346798457916" ID="ID_1768647443" MODIFIED="1346798483906" TEXT="if the program is compute bound">
<node CREATED="1346798484947" ID="ID_1005327152" MODIFIED="1346798486331" TEXT=" then we may have to add more CPU&apos;s"/>
<node CREATED="1346798486792" ID="ID_666221293" MODIFIED="1346798490963" TEXT="improve algorithims"/>
</node>
<node CREATED="1346798475961" ID="ID_936214676" MODIFIED="1346798519662" TEXT="we keep cpus hotter by decoming the application so there is always work to be done"/>
</node>
</node>
<node CREATED="1346799262600" FOLDED="true" ID="ID_124043818" MODIFIED="1346967699437" POSITION="right" TEXT="evaluating tradeoffs">
<node CREATED="1346799318488" ID="ID_1629246954" MODIFIED="1346799323576" TEXT="information">
<node CREATED="1346799323579" ID="ID_1416328324" MODIFIED="1346799356127" TEXT="is often not enought to make the right design tradeoffs"/>
<node CREATED="1346799356916" ID="ID_1083516052" MODIFIED="1346799368492" TEXT="most optimisations are premature">
<node CREATED="1346799368495" ID="ID_1843882194" MODIFIED="1346799393095" TEXT="often underetaken before a clear set of requirements are avialable"/>
<node CREATED="1346799395373" ID="ID_464127596" MODIFIED="1346799424442" TEXT="avoid premature optimisations ,first make it right, then make it fast - if it is not already fast enough"/>
</node>
<node CREATED="1346800026565" ID="ID_1596814663" MODIFIED="1346800059737" TEXT="the quest for performance is probably the single greatest source for concurrency bugs">
<node CREATED="1346800059739" ID="ID_1095930823" MODIFIED="1346800083509" TEXT="the belief that synchronisation is too slow led to many clever looking but dangerous idions">
<node CREATED="1346800083511" ID="ID_539126571" MODIFIED="1346800091862" TEXT="see double checked locking"/>
</node>
</node>
</node>
<node CREATED="1346799550306" ID="ID_120034066" MODIFIED="1346799555683" TEXT="readability">
<node CREATED="1346799555686" ID="ID_1027768638" MODIFIED="1346799572896" TEXT="many performance optimisations come at the cost of ">
<node CREATED="1346799572898" ID="ID_1396486178" MODIFIED="1346799618685" TEXT="maintainability">
<node CREATED="1346799618687" ID="ID_548034581" MODIFIED="1346799650379" TEXT="the more nonobvious the code is the harder it is to understand and maintain"/>
<node CREATED="1346799686103" ID="ID_1362765223" MODIFIED="1346799696082" TEXT="greater risk of error">
<node CREATED="1346799696085" ID="ID_122169489" MODIFIED="1346799706146" TEXT="subtler nuances in algorithims"/>
</node>
</node>
<node CREATED="1346799654496" ID="ID_662687014" MODIFIED="1346799666028" TEXT="object oriented design principles">
<node CREATED="1346799666030" ID="ID_716137736" MODIFIED="1346799669650" TEXT="e.g.">
<node CREATED="1346799669652" ID="ID_1654169370" MODIFIED="1346799674611" TEXT="breaking encapsulation"/>
</node>
</node>
</node>
</node>
<node CREATED="1346799744994" ID="ID_341165077" MODIFIED="1346799753472" TEXT="considerations">
<node CREATED="1346799753474" ID="ID_1439655362" MODIFIED="1346799789920" TEXT="if youcant spot the costs risk and tradeoff , you probably havent thought throug it carefully enough to proceed"/>
<node CREATED="1346799823857" ID="ID_1572499477" MODIFIED="1346799832951" TEXT="key questions">
<node CREATED="1346799811869" ID="ID_1539159572" MODIFIED="1346799821269" TEXT="what do you mean by more performant?"/>
<node CREATED="1346799839163" ID="ID_998099946" MODIFIED="1346799855841" TEXT="under what conditions will thi apporach acgtually be faster?">
<node CREATED="1346799855843" ID="ID_1348920747" MODIFIED="1346799863716" TEXT="light or heavy load"/>
<node CREATED="1346799864248" ID="ID_882316046" MODIFIED="1346799874636" TEXT="large or small data sets"/>
<node CREATED="1346799875197" ID="ID_79854781" MODIFIED="1346799889516" TEXT="can you support your answer with measurements?"/>
</node>
<node CREATED="1346799891155" ID="ID_519551638" MODIFIED="1346799911349" TEXT="is the code likely to be used in situations wheere the conditions may be different?"/>
<node CREATED="1346799913019" ID="ID_1262272504" MODIFIED="1346799945650" TEXT="what are the hidden costs in trading for this improved performance">
<node CREATED="1346799945652" ID="ID_334863967" MODIFIED="1346799954543" TEXT="e/g/ costs">
<node CREATED="1346799954545" ID="ID_1440349195" MODIFIED="1346799960668" TEXT="more development"/>
<node CREATED="1346799961314" ID="ID_1525807962" MODIFIED="1346799967158" TEXT="more maintenance risk"/>
</node>
</node>
</node>
<node CREATED="1346800334851" ID="ID_589337048" MODIFIED="1346800449272" TEXT="concrete requirements">
<node CREATED="1346800370308" ID="ID_29687104" MODIFIED="1346800426720" TEXT="intuation of many developers about where a performance problem lies or which approach will be faster or more scalable is often incorrect"/>
<node CREATED="1346800344917" ID="ID_1381195389" MODIFIED="1346800357203" TEXT="when you trade safety for performance ">
<node CREATED="1346800357206" ID="ID_921586561" MODIFIED="1346800369657" TEXT="you get neither"/>
</node>
<node CREATED="1346800449274" ID="ID_1023196521" MODIFIED="1346800488535" TEXT="any performance tuining exxercise be accoimpanied by ">
<node CREATED="1346800488537" ID="ID_1794542054" MODIFIED="1346800508174" TEXT="concrete performance requirements">
<node CREATED="1346800508177" ID="ID_1308168035" MODIFIED="1346800516326" TEXT="tell you when and when not to tune"/>
</node>
<node CREATED="1346800532459" ID="ID_773482283" MODIFIED="1346800538971" TEXT="measuring program in place">
<node CREATED="1346800538973" ID="ID_908230054" MODIFIED="1346800541528" TEXT="using">
<node CREATED="1346800541530" ID="ID_1562619967" MODIFIED="1346800553446" TEXT="realistic configuration"/>
<node CREATED="1346800554811" ID="ID_1080126798" MODIFIED="1346800565045" TEXT="realistic load profile"/>
</node>
<node CREATED="1346800578181" ID="ID_857838784" MODIFIED="1346800595781" TEXT="that measures before and after tuning"/>
</node>
<node CREATED="1346800623549" ID="ID_396990882" MODIFIED="1346800632990" TEXT="measure, dont guess!"/>
</node>
</node>
</node>
</node>
<node CREATED="1346912821115" FOLDED="true" ID="ID_1414094061" MODIFIED="1346967697275" POSITION="right" TEXT="Amdahls law">
<node CREATED="1346912877383" ID="ID_441574667" MODIFIED="1346912883631" TEXT="description of">
<node CREATED="1346912883633" ID="ID_1596358478" MODIFIED="1346912933606" TEXT="how much a program can theoretically be sped up by additional computing resources based on the proortion of parallezible and serializble components"/>
<node CREATED="1346913059425" ID="ID_1684406002" MODIFIED="1346913083486" TEXT="as N approaches infitinity the maximum speedup converges to 1/F">
<node CREATED="1346913083490" ID="ID_1873589935" MODIFIED="1346913206899" TEXT="e.g. that a program whith 50% of the processing must be exexuted serially can be sped up by a factor of 2"/>
<node CREATED="1346913207808" ID="ID_546124033" MODIFIED="1346913233395" TEXT="a program in which 10% must be serially executed can be sped up by a factor of 10"/>
<node CREATED="1346913152267" ID="ID_220920750" MODIFIED="1346913180955" TEXT="regardless of how many processors are available"/>
</node>
<node CREATED="1346913272751" ID="ID_1383196014" MODIFIED="1346913289548" TEXT="also shows the effciency of processors">
<node CREATED="1346913289550" ID="ID_831447414" MODIFIED="1346913292795" TEXT="e.g">
<node CREATED="1346913292798" ID="ID_1189307388" MODIFIED="1346917095609" TEXT="a 10 processor system with 10% serialisation can achieve at most 5.3(at 53% utilisation) and with 100 processors it can achieve at most a speedup of 9.2 (at 9% utlisation)"/>
</node>
</node>
</node>
<node CREATED="1346912940261" ID="ID_379318789" MODIFIED="1346912943797" TEXT="equation">
<node CREATED="1346912945105" ID="ID_55892158" MODIFIED="1346913011287" TEXT="Speedup &lt;= 1 / ( F + (1 -F)/N)"/>
<node CREATED="1346913012200" ID="ID_1727888022" MODIFIED="1346913043720" TEXT="where F is the fraction ofthe calculation that must be executed serially"/>
<node CREATED="1346913044441" ID="ID_989593602" MODIFIED="1346913056783" TEXT="where N is the number of processors"/>
</node>
<node CREATED="1346935766845" ID="ID_1880307521" MODIFIED="1346935771492" TEXT="also consider">
<node CREATED="1346935771495" ID="ID_1832763873" MODIFIED="1346935843085" TEXT="even for a highly parallel application where N threads fetch work from a shared q independently">
<node CREATED="1346935843100" ID="ID_634120700" MODIFIED="1346935898258" TEXT="the work queue is shared by all worker threads and will require some synchronisation"/>
<node CREATED="1346935898920" ID="ID_193032967" MODIFIED="1346935947014" TEXT="if locking is used to guard the state of the queue then while one thread is dequeing a task othere threads that need to dequeu their next task must wait -- and this is where task processing is serialised"/>
<node CREATED="1346935957241" ID="ID_793817005" MODIFIED="1346935970337" TEXT="the processing time of a single tasks incliudes">
<node CREATED="1346935970340" ID="ID_240550546" MODIFIED="1346935982329" TEXT="time to execute the Runnable"/>
<node CREATED="1346935983182" ID="ID_1330604894" MODIFIED="1346936010227" TEXT="time to dequeue class from shared work queue"/>
<node CREATED="1346936010841" ID="ID_221500748" MODIFIED="1346936034377" TEXT="LinkedBlockingQueue will block less"/>
<node CREATED="1346936049438" ID="ID_993156022" MODIFIED="1346936063722" TEXT="result handling">
<node CREATED="1346936079268" ID="ID_276121935" MODIFIED="1346936108568" TEXT="may be source of serialisation if shared"/>
<node CREATED="1346936109194" ID="ID_1627130564" MODIFIED="1346936115449" TEXT="e.g.">
<node CREATED="1346936068676" ID="ID_1406937541" MODIFIED="1346936078653" TEXT="placing in a data structure"/>
<node CREATED="1346936063724" ID="ID_498107604" MODIFIED="1346936068088" TEXT="writing to a log file"/>
</node>
</node>
</node>
</node>
<node CREATED="1346962444972" ID="ID_1856505484" MODIFIED="1346962502216" TEXT="thinking &quot;in the limit&quot; for the maximum number of processors">
<node CREATED="1346962502218" ID="ID_28248955" MODIFIED="1346962535957" TEXT="can offer insights to where scaling limits might appear"/>
</node>
</node>
</node>
<node CREATED="1346962538277" FOLDED="true" ID="ID_121757486" MODIFIED="1347655809171" POSITION="right" TEXT="thread costs">
<node CREATED="1346962735328" ID="ID_1677453296" MODIFIED="1346962745897" TEXT="are only worthwhile ">
<node CREATED="1346962746957" ID="ID_118706358" MODIFIED="1346962989515" TEXT="when the performance benefits outweigh the costs"/>
</node>
<node CREATED="1346962598384" ID="ID_1159191830" MODIFIED="1346962642426" TEXT="examples">
<node CREATED="1346962642428" ID="ID_1388489502" MODIFIED="1346962650933" TEXT="context switching">
<node CREATED="1346963022108" ID="ID_753828821" MODIFIED="1346963024914" TEXT="is">
<node CREATED="1346963024916" ID="ID_672657487" MODIFIED="1346963045049" TEXT="when the os preempts and switches out a thread to allow another to run"/>
</node>
<node CREATED="1346963058747" ID="ID_314159152" MODIFIED="1346963061605" TEXT="requires">
<node CREATED="1346963061607" ID="ID_1108903050" MODIFIED="1346963076943" TEXT="saving the execution context of the current thread"/>
<node CREATED="1346963077266" ID="ID_355157191" MODIFIED="1346963090893" TEXT="restoring the execution context of the newly scheduled thread"/>
</node>
<node CREATED="1346963122013" ID="ID_954222719" MODIFIED="1346963126317" TEXT="costs">
<node CREATED="1346963126319" ID="ID_736874922" MODIFIED="1346963155652" TEXT="the newly loaded execution context is unlikely to be in the processor cache">
<node CREATED="1346963155654" ID="ID_212953619" MODIFIED="1346963168475" TEXT="hence a flurry of cache misses on initial load"/>
<node CREATED="1346963169071" ID="ID_1164138784" MODIFIED="1346963176412" TEXT="thread run a little more slowly"/>
<node CREATED="1346963185250" ID="ID_144937826" MODIFIED="1346963223243" TEXT="threads are given a minimum time quantum to amortise the cost of the context switch"/>
</node>
<node CREATED="1346965626971" ID="ID_1523054353" MODIFIED="1346966097153" TEXT="is equivalent">
<node CREATED="1346965805365" ID="ID_913288986" MODIFIED="1346966026651" TEXT="5,000 to 10,000 clock cycles"/>
</node>
<node CREATED="1346966103306" ID="ID_259722983" MODIFIED="1346966107003" TEXT="profiling">
<node CREATED="1346966107005" ID="ID_809216102" MODIFIED="1346966118636" TEXT="vmstat">
<node CREATED="1346966118638" ID="ID_121547442" MODIFIED="1346966124329" TEXT="reports">
<node CREATED="1346966124331" ID="ID_1607375345" MODIFIED="1346966131147" TEXT="number of context switches"/>
<node CREATED="1346966131698" ID="ID_1574556277" MODIFIED="1346966142823" TEXT="percentage of time spent in the kernel">
<node CREATED="1346966142825" ID="ID_822348478" MODIFIED="1346966156448" TEXT="high kernel usuage often indicates">
<node CREATED="1346966156450" ID="ID_936242213" MODIFIED="1346966171528" TEXT="heavy scheduling activity">
<node CREATED="1346966171530" ID="ID_1222386792" MODIFIED="1346966179389" TEXT="which may be caused by">
<node CREATED="1346966179392" ID="ID_226296145" MODIFIED="1346966182778" TEXT="blocking">
<node CREATED="1346966182780" ID="ID_1845315324" MODIFIED="1346966189127" TEXT="due to">
<node CREATED="1346966189130" ID="ID_1409490322" MODIFIED="1346966191678" TEXT="IO"/>
<node CREATED="1346966192154" ID="ID_58097698" MODIFIED="1346966195199" TEXT="lock contention"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1346962651527" ID="ID_256930165" MODIFIED="1346962660472" TEXT="memory synchronisation">
<node CREATED="1346966214986" ID="ID_1680617283" MODIFIED="1346966218279" TEXT="costs ">
<node CREATED="1346966218281" ID="ID_66048391" MODIFIED="1346966224740" TEXT="come from">
<node CREATED="1346966224742" ID="ID_1885503553" MODIFIED="1346966233118" TEXT="visibility guarantees">
<node CREATED="1346966233121" FOLDED="true" ID="ID_1080900655" MODIFIED="1346967361881" TEXT="offered by">
<node CREATED="1346966239305" ID="ID_3388803" MODIFIED="1346966245367" TEXT="synchronised">
<node CREATED="1346966518099" ID="ID_1982622601" MODIFIED="1346966536030" TEXT="types">
<node CREATED="1346966536032" ID="ID_801866704" MODIFIED="1346966539557" TEXT="contended">
<node CREATED="1346966639727" ID="ID_1885600983" MODIFIED="1346966654416" TEXT="costs"/>
</node>
<node CREATED="1346966539832" ID="ID_671044276" MODIFIED="1346966546627" TEXT="uncontended">
<node CREATED="1346966657476" ID="ID_745696765" MODIFIED="1346966659670" TEXT="costs">
<node CREATED="1346966659672" ID="ID_741281860" MODIFIED="1346966673153" TEXT="20 -250 clock cycles"/>
<node CREATED="1346966689974" ID="ID_1177826910" MODIFIED="1346966700193" TEXT="rarely significant"/>
</node>
</node>
</node>
<node CREATED="1346966617283" ID="ID_1534029988" MODIFIED="1346966635465" TEXT="optimised for uncontended "/>
<node CREATED="1346966717733" ID="ID_402809150" MODIFIED="1346966724950" TEXT="jvm optimisations">
<node CREATED="1346966724952" ID="ID_534463245" MODIFIED="1346966728776" TEXT="of ">
<node CREATED="1346966728778" ID="ID_1791860757" MODIFIED="1346966749610" TEXT="optimising away lock aquisition">
<node CREATED="1346966749612" ID="ID_599441704" MODIFIED="1346966767166" TEXT="if the lock can be proven never to contend"/>
</node>
<node CREATED="1346966775120" ID="ID_799862136" MODIFIED="1346966782119" TEXT="escape analysis">
<node CREATED="1346966782121" ID="ID_1452717656" MODIFIED="1346966804081" TEXT="identify when a local object is never published to the heap and is therefore thread local"/>
</node>
<node CREATED="1346966859038" ID="ID_516318711" MODIFIED="1346966865829" TEXT="lock coarsining">
<node CREATED="1346966865831" ID="ID_554914053" MODIFIED="1346966867863" TEXT="is ">
<node CREATED="1346966867865" ID="ID_237765702" MODIFIED="1346966889299" TEXT="the merging of ajacent synchronised blocks using the same lock"/>
<node CREATED="1346966901280" ID="ID_1230354398" MODIFIED="1346967044102" TEXT="this">
<node CREATED="1346967045266" ID="ID_321349198" MODIFIED="1346967049555" TEXT="reduces overhead"/>
<node CREATED="1346967049800" ID="ID_1356619070" MODIFIED="1346967059618" TEXT="gives the compiler less locks to work with">
<node CREATED="1346967059620" ID="ID_317177475" MODIFIED="1346967062275" TEXT="thus ">
<node CREATED="1346967062277" ID="ID_1753576672" MODIFIED="1346967067791" TEXT="enables other optimisations"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1346967099252" ID="ID_692334481" MODIFIED="1346967102895" TEXT="considerations">
<node CREATED="1346967102897" ID="ID_438019329" MODIFIED="1346967152085" TEXT="dont worry about the cost of uncontended synchronisation. the mechanism is already fast and jvms can perform additional optimasations that furhter eliminate cost."/>
<node CREATED="1346967152562" ID="ID_368968559" MODIFIED="1346967169364" TEXT="focus optimisation on areas where lock contention occurs."/>
</node>
<node CREATED="1346967202090" ID="ID_442865752" MODIFIED="1346967207338" TEXT="general costs">
<node CREATED="1346967207341" ID="ID_1215155398" MODIFIED="1346967215512" TEXT="creates traffic on the ">
<node CREATED="1346967215514" ID="ID_1426727946" MODIFIED="1346967219359" TEXT="shared memory bus">
<node CREATED="1346967219361" ID="ID_1209649986" MODIFIED="1346967254895" TEXT="which ">
<node CREATED="1346967254897" ID="ID_268277009" MODIFIED="1346967262124" TEXT="has limited bandwith"/>
<node CREATED="1346967262687" ID="ID_1096454638" MODIFIED="1346967276818" TEXT="which is shared by all processors"/>
<node CREATED="1346967302722" ID="ID_1375821937" MODIFIED="1346967355457" TEXT="affects other threads if they are all competing for bandwith"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1346966245805" ID="ID_1273346302" MODIFIED="1346966248874" TEXT="volatile">
<node CREATED="1346966549702" ID="ID_1669939495" MODIFIED="1346966556609" TEXT="uncontended"/>
</node>
</node>
<node CREATED="1346966361872" ID="ID_1661440638" MODIFIED="1346966374861" TEXT="implemented via">
<node CREATED="1346966374863" ID="ID_880429639" MODIFIED="1346966380443" TEXT="memory barries">
<node CREATED="1346966380445" ID="ID_781584488" MODIFIED="1346966382095" TEXT="that">
<node CREATED="1346966382097" ID="ID_1027739392" MODIFIED="1346966388513" TEXT="flush ">
<node CREATED="1346966389476" ID="ID_1442458005" MODIFIED="1346966403396" TEXT="caches"/>
<node CREATED="1346966409511" ID="ID_297000356" MODIFIED="1346966418078" TEXT="hardware write buffers"/>
</node>
<node CREATED="1346966418920" ID="ID_1807185464" MODIFIED="1346966422281" TEXT="stall ">
<node CREATED="1346966422283" ID="ID_166319000" MODIFIED="1346966443153" TEXT="execution pipelines"/>
</node>
<node CREATED="1346966471176" ID="ID_725755449" MODIFIED="1346966474821" TEXT="invalidate">
<node CREATED="1346966475754" ID="ID_426252281" MODIFIED="1346966476941" TEXT="caches"/>
</node>
</node>
<node CREATED="1346966445651" ID="ID_346931486" MODIFIED="1346966451313" TEXT="inhibit ">
<node CREATED="1346966451315" ID="ID_1754262852" MODIFIED="1346966456327" TEXT="compiler optimisations">
<node CREATED="1346966456329" ID="ID_1042931601" MODIFIED="1346966457599" TEXT="as">
<node CREATED="1346966457601" ID="ID_202458386" MODIFIED="1346966466789" TEXT="operations cannt be reordered"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1346962661025" FOLDED="true" ID="ID_1484995131" MODIFIED="1346967692108" TEXT="blocking">
<node CREATED="1346963358221" ID="ID_495845283" MODIFIED="1346967386645" TEXT="when a thread blocks ">
<node CREATED="1346965465855" ID="ID_930319659" MODIFIED="1346965488247" TEXT="the jvm ">
<node CREATED="1346965488249" ID="ID_985563856" MODIFIED="1346965489744" TEXT="suspends the thread"/>
<node CREATED="1346965490473" ID="ID_1094192601" MODIFIED="1346967421974" TEXT="allows it to be switched out by OS"/>
</node>
</node>
<node CREATED="1346967424356" ID="ID_357184769" MODIFIED="1346967433099" TEXT="uncontended synchronisation">
<node CREATED="1346967433101" ID="ID_1865220885" MODIFIED="1346967441973" TEXT="can be handled entirely within the jvm"/>
</node>
<node CREATED="1346965516045" FOLDED="true" ID="ID_276981997" MODIFIED="1346967372921" TEXT="if a thread blocks frequently">
<node CREATED="1346965528518" ID="ID_677626718" MODIFIED="1346965539083" TEXT="it will be unable to use its full scheduling quantum"/>
<node CREATED="1346965561390" ID="ID_310710395" MODIFIED="1346966302839" TEXT="it incures more context switches than one that is CPU bount">
<node CREATED="1346965593719" ID="ID_300034680" MODIFIED="1346965597565" TEXT="this increases">
<node CREATED="1346965597567" ID="ID_422447637" MODIFIED="1346965605013" TEXT="scheduling overhead"/>
</node>
<node CREATED="1346965606898" ID="ID_688957878" MODIFIED="1346965611291" TEXT="this reduces ">
<node CREATED="1346965611294" ID="ID_950695320" MODIFIED="1346965615366" TEXT="throughput"/>
</node>
</node>
</node>
<node CREATED="1346967450878" FOLDED="true" ID="ID_1840838338" MODIFIED="1346967687988" TEXT="jvm implementations ">
<node CREATED="1346967458199" ID="ID_413672280" MODIFIED="1346967462375" TEXT="spin waiting">
<node CREATED="1346967462378" ID="ID_820866532" MODIFIED="1346967464138" TEXT="is">
<node CREATED="1346967464140" ID="ID_331082708" MODIFIED="1346967478448" TEXT="repeatldy trying to aquire the lock until it succesds"/>
<node CREATED="1346967499245" ID="ID_992628851" MODIFIED="1346967507121" TEXT="perferable for short waits"/>
</node>
</node>
<node CREATED="1346967480477" ID="ID_952509771" MODIFIED="1346967496521" TEXT="suspending the thread via operating system">
<node CREATED="1346967509249" ID="ID_166402234" MODIFIED="1346967512335" TEXT="is ">
<node CREATED="1346967512337" ID="ID_1871034116" MODIFIED="1346967518872" TEXT="preferable">
<node CREATED="1346967518874" ID="ID_1881534218" MODIFIED="1346967526740" TEXT="for long waits"/>
</node>
<node CREATED="1346967534764" ID="ID_1908993123" MODIFIED="1346967538668" TEXT="most often used"/>
</node>
</node>
</node>
<node CREATED="1346967572404" ID="ID_1996246925" MODIFIED="1346967575136" TEXT="costs">
<node CREATED="1346967575138" FOLDED="true" ID="ID_1469132301" MODIFIED="1346967686003" TEXT="suspending a thread because it could not get a lock or a conditional wait entails">
<node CREATED="1346967612394" ID="ID_883147113" MODIFIED="1346967625255" TEXT="two additional context switches">
<node CREATED="1346967625257" ID="ID_1192557660" MODIFIED="1346967633813" TEXT="switched out before quantum expires"/>
<node CREATED="1346967634262" ID="ID_1075889226" MODIFIED="1346967639964" TEXT="switched back ina gain"/>
</node>
<node CREATED="1346967641721" ID="ID_286050675" MODIFIED="1346967651701" TEXT="plus all attended OS activiity"/>
<node CREATED="1346967652036" ID="ID_1234085563" MODIFIED="1346967664074" TEXT="plus all extra cache loading and miss activiity"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1346967706630" FOLDED="true" ID="ID_1257609529" MODIFIED="1347655805940" POSITION="right" TEXT="reducing lock contention">
<node CREATED="1347222768246" ID="ID_668056117" MODIFIED="1347222768246" TEXT=""/>
<node CREATED="1347222864667" ID="ID_1510555946" MODIFIED="1347222872009" TEXT="lock contention">
<node CREATED="1347222872012" ID="ID_1363252986" MODIFIED="1347222873707" TEXT="causes">
<node CREATED="1347222873709" ID="ID_1408054448" MODIFIED="1347222880385" TEXT="scalability">
<node CREATED="1347222930418" ID="ID_306772472" MODIFIED="1347222946516" TEXT="the principal thread to scalability in concurrent applications is the exclusive resource lock"/>
</node>
<node CREATED="1347222880613" ID="ID_1077657685" MODIFIED="1347222929483" TEXT="performance"/>
</node>
<node CREATED="1347222958744" ID="ID_636152498" MODIFIED="1347222967532" TEXT="influences">
<node CREATED="1347222999981" ID="ID_531557308" MODIFIED="1347223002257" TEXT="factors">
<node CREATED="1347222967534" ID="ID_120934338" MODIFIED="1347222977488" TEXT="how often lock is requested"/>
<node CREATED="1347222978411" ID="ID_1361502348" MODIFIED="1347222987133" TEXT="how long the lock is held"/>
</node>
<node CREATED="1347223009726" ID="ID_1089468914" MODIFIED="1347223036010" TEXT="if the product of the factors is small">
<node CREATED="1347223036012" ID="ID_250461572" MODIFIED="1347223055409" TEXT="most attempts to aquire are uncontended"/>
<node CREATED="1347223055998" ID="ID_111673448" MODIFIED="1347223082844" TEXT="otherwise ">
<node CREATED="1347223082846" ID="ID_1318541581" MODIFIED="1347223092603" TEXT="threads will block waiting for it"/>
<node CREATED="1347223093177" ID="ID_677118724" MODIFIED="1347223105095" TEXT="processors may even sit edle while there is plenty of work to do"/>
</node>
</node>
</node>
<node CREATED="1347223110801" ID="ID_1483652915" MODIFIED="1347223134381" TEXT="soluction">
<node CREATED="1347223123773" ID="ID_1513713735" MODIFIED="1347223181532" TEXT="replace exclusive locks with co-ordination mechanisms">
<node CREATED="1347655559472" ID="ID_1618542270" MODIFIED="1347655562886" TEXT="such as">
<node CREATED="1347655562888" ID="ID_695642307" MODIFIED="1347655572173" TEXT="concurrent collections"/>
<node CREATED="1347655572525" ID="ID_523753887" MODIFIED="1347655582266" TEXT="read-write locks">
<node CREATED="1347655620858" ID="ID_1339769715" MODIFIED="1347655653002" TEXT="enforces a multiple-reader single-writer "/>
</node>
<node CREATED="1347655582772" ID="ID_386756388" MODIFIED="1347655587321" TEXT="immutable objects">
<node CREATED="1347655659675" ID="ID_754551754" MODIFIED="1347655667237" TEXT="best for readonly structures"/>
</node>
<node CREATED="1347655587631" ID="ID_1782188942" MODIFIED="1347655609809" TEXT="atomic variables">
<node CREATED="1347655686907" ID="ID_634708321" MODIFIED="1347655718561" TEXT="reduce the cost of hot fields"/>
<node CREATED="1347655719057" ID="ID_198484900" MODIFIED="1347655722241" TEXT="best if">
<node CREATED="1347655722243" ID="ID_677949443" MODIFIED="1347655756351" TEXT="your class has a small number of hot fields that do not participate in invariants with other variables"/>
</node>
</node>
<node CREATED="1347655769299" ID="ID_78617338" MODIFIED="1347655783026" TEXT="changing your algorithim to have fewer hot fields"/>
</node>
</node>
<node CREATED="1347223134793" ID="ID_1419655995" MODIFIED="1347654655998" TEXT="reduce">
<node CREATED="1347223138975" ID="ID_1087390927" MODIFIED="1347654170343" TEXT="the duration that locks are held">
<node CREATED="1347223204004" ID="ID_1958370173" MODIFIED="1347223206993" TEXT="move">
<node CREATED="1347223206995" ID="ID_188215344" MODIFIED="1347223224243" TEXT="code that doesnt require locks out of synchornized blocks">
<node CREATED="1347223226744" ID="ID_620597506" MODIFIED="1347223238050" TEXT="esp ">
<node CREATED="1347223238052" ID="ID_70826827" MODIFIED="1347223247236" TEXT="expensive operatiosn"/>
<node CREATED="1347223247746" ID="ID_1414417772" MODIFIED="1347223257198" TEXT="potential blocking operations such as IO"/>
</node>
<node CREATED="1347223784110" ID="ID_1613500370" MODIFIED="1347223792516" TEXT="considerations">
<node CREATED="1347223792518" ID="ID_1211864687" MODIFIED="1347223811252" TEXT="a synchronised block can be too small">
<node CREATED="1347223812565" ID="ID_814587509" MODIFIED="1347223844472" TEXT="operations that need to be atomic must be contained in a single synchronised block"/>
<node CREATED="1347223865862" ID="ID_758361769" MODIFIED="1347223883048" TEXT="because the cost of synchronising is non zero">
<node CREATED="1347223883051" ID="ID_188565900" MODIFIED="1347223964729" TEXT="breaking one synchronised blocks into many eventually becomes counter productive"/>
<node CREATED="1347223980461" ID="ID_208170649" MODIFIED="1347224015551" TEXT="denormalising should only be considered once you have normalised fully and performance is still below par"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1347223584591" ID="ID_605907671" MODIFIED="1347223590987" TEXT="delegate thread safety">
<node CREATED="1347223590989" ID="ID_233254688" MODIFIED="1347223602849" TEXT="via">
<node CREATED="1347223602851" ID="ID_1808038283" MODIFIED="1347223608137" TEXT="a thread safe object"/>
</node>
<node CREATED="1347223618431" ID="ID_467276096" MODIFIED="1347223622513" TEXT="advantages">
<node CREATED="1347223622515" ID="ID_428930663" MODIFIED="1347223636202" TEXT="eliminates need for ">
<node CREATED="1347223636204" ID="ID_1407508745" MODIFIED="1347223645581" TEXT="explicit synchronisation"/>
</node>
<node CREATED="1347223646524" ID="ID_882337417" MODIFIED="1347654626877" TEXT="reduces lock scope to the duration of the thread safe object"/>
<node CREATED="1347223673424" ID="ID_1686162287" MODIFIED="1347223693913" TEXT="reduces ris that a future maintainer will undermine thread safety">
<node CREATED="1347223698658" ID="ID_1789825978" MODIFIED="1347223758349" TEXT="by forgetiing to aquire the appropriate lock"/>
</node>
</node>
</node>
</node>
<node CREATED="1347223148719" ID="ID_1178402722" MODIFIED="1347223155214" TEXT="frequency locks are requested"/>
<node CREATED="1347654664084" ID="ID_1232818992" MODIFIED="1347654689171" TEXT="lock granularity">
<node CREATED="1347654713065" ID="ID_1185526705" MODIFIED="1347654722115" TEXT="lock splitting">
<node CREATED="1347654758722" ID="ID_1243487106" MODIFIED="1347654771721" TEXT="if a lock guards more than one independent state">
<node CREATED="1347654771723" ID="ID_724399786" MODIFIED="1347654832149" TEXT="you may be able to improve scalability by splitting it into multiple locks that guard different variables"/>
<node CREATED="1347654832396" ID="ID_61893398" MODIFIED="1347654842815" TEXT="this results in each lock being requested less often"/>
</node>
<node CREATED="1347654927231" ID="ID_485227235" MODIFIED="1347654936637" TEXT="improves scalability when">
<node CREATED="1347654936639" ID="ID_1285631756" MODIFIED="1347654950345" TEXT="lock has moderate but not heavy contention"/>
</node>
</node>
<node CREATED="1347654722626" ID="ID_1226966924" MODIFIED="1347654757086" TEXT="lock striping">
<node CREATED="1347655070054" ID="ID_1955163033" MODIFIED="1347655087112" TEXT="is an extension of lock splitting"/>
<node CREATED="1347655087625" ID="ID_236250865" MODIFIED="1347655109843" TEXT="used on a set of independent objects "/>
<node CREATED="1347655129206" ID="ID_602397319" MODIFIED="1347655138689" TEXT="for example ">
<node CREATED="1347655138691" ID="ID_1094633456" MODIFIED="1347655171810" TEXT="concurrenthashmap uses an array of 16 locks each of which guards 1/16 of the hashbuckets"/>
</node>
<node CREATED="1347655175434" ID="ID_1489394040" MODIFIED="1347655188015" TEXT="have disadvantages of">
<node CREATED="1347655188017" ID="ID_344798794" MODIFIED="1347655245254" TEXT="locking the whole set of objects exclusivly is more difficult and expensive than with a single lock"/>
</node>
</node>
</node>
<node CREATED="1347655274724" ID="ID_5487322" MODIFIED="1347655290551" TEXT="interaction with &apos;hot&apos; fields">
<node CREATED="1347655405028" ID="ID_1137221707" MODIFIED="1347655442194" TEXT="common operations such as caching frequently computed values can introduce hot fields that limit scalability"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1347655812034" ID="ID_775881402" MODIFIED="1347655829249" POSITION="right" TEXT="monitoring CPU utilisation">
<node CREATED="1347655829251" ID="ID_1564965218" MODIFIED="1347655833799" TEXT="goal">
<node CREATED="1347655833802" ID="ID_711245974" MODIFIED="1347655842369" TEXT="keep the processors fully utilised"/>
<node CREATED="1347655907127" ID="ID_156574036" MODIFIED="1347655917556" TEXT="if the cpus have uneven load">
<node CREATED="1347655917559" ID="ID_545904882" MODIFIED="1347655926101" TEXT="increase parallellism in your code"/>
</node>
<node CREATED="1347655947598" ID="ID_1481829385" MODIFIED="1347655963115" TEXT="if CPUs are even but not being used">
<node CREATED="1347655963119" ID="ID_737757116" MODIFIED="1347655965179" TEXT="causes">
<node CREATED="1347655966476" ID="ID_500485002" MODIFIED="1347655976429" TEXT="insufficient load">
<node CREATED="1347655976431" ID="ID_62746973" MODIFIED="1347655987944" TEXT="low load on application"/>
<node CREATED="1347655988462" ID="ID_1035007352" MODIFIED="1347655997874" TEXT="increase load"/>
</node>
<node CREATED="1347656000786" ID="ID_1616119178" MODIFIED="1347656006667" TEXT="i/o bound">
<node CREATED="1347656006670" ID="ID_1114471911" MODIFIED="1347656016021" TEXT="run iostat or perfmon"/>
<node CREATED="1347656023370" ID="ID_827464598" MODIFIED="1347656045500" TEXT="check bandwith limitations by monitory network traffic"/>
</node>
<node CREATED="1347656048788" ID="ID_1912020721" MODIFIED="1347656058288" TEXT="externally bound">
<node CREATED="1347656058291" ID="ID_319520484" MODIFIED="1347656080379" TEXT="use a profiler to test for bottlenecks with external systems"/>
<node CREATED="1347656080934" ID="ID_1527105943" MODIFIED="1347656093112" TEXT="database admin tools also tell if theres a bottle neck on the database"/>
</node>
<node CREATED="1347656108516" ID="ID_59580560" MODIFIED="1347656118321" TEXT="lock contention">
<node CREATED="1347656118323" ID="ID_691730914" MODIFIED="1347656136708" TEXT="profiling tools can tell you which locks look hot"/>
<node CREATED="1347656137259" ID="ID_1680998266" MODIFIED="1347656165513" TEXT="you can often get the same information by triggering random thread dumps  and looking to see which threads are contending for which locks"/>
</node>
</node>
</node>
<node CREATED="1347656180619" ID="ID_1659656151" MODIFIED="1347656190763" TEXT="if CPUs are being used">
<node CREATED="1347656190765" ID="ID_148523093" MODIFIED="1347656242513" TEXT="perhaps profiling reveals that you could benefit from more CPU&apos;s"/>
<node CREATED="1347656243029" ID="ID_938478315" MODIFIED="1347656279863" TEXT="one of the columns from vmstat is  the numner of threads that are runnable but are not running because a CPU is not available"/>
<node CREATED="1347656280445" ID="ID_5762530" MODIFIED="1347656309583" TEXT="if CPU utilisation is high and theres always runnable threads waiting for a CPU you application may benefit from more processors"/>
</node>
</node>
<node CREATED="1347655846152" ID="ID_681070457" MODIFIED="1347655848226" TEXT="tools">
<node CREATED="1347655872783" ID="ID_1664461616" MODIFIED="1347655881485" TEXT="tell you how hot the processor is running"/>
<node CREATED="1347655883251" ID="ID_24754119" MODIFIED="1347655885498" TEXT="unix">
<node CREATED="1347655853723" ID="ID_1403549827" MODIFIED="1347655859338" TEXT="mpstat"/>
<node CREATED="1347655848229" ID="ID_34949649" MODIFIED="1347655853442" TEXT="vmstat"/>
<node CREATED="1347656017047" ID="ID_1898305185" MODIFIED="1347656018740" TEXT="iostat"/>
</node>
<node CREATED="1347655891050" ID="ID_1700267391" MODIFIED="1347655893339" TEXT="windows">
<node CREATED="1347655893342" ID="ID_26738794" MODIFIED="1347655896910" TEXT="perfmon"/>
</node>
</node>
</node>
<node CREATED="1347656326849" ID="ID_152538798" MODIFIED="1347656335542" POSITION="right" TEXT="object pooling is bad">
<node CREATED="1347656335544" ID="ID_999379698" MODIFIED="1347656352351" TEXT="object creation is now cheap">
<node CREATED="1347656352874" ID="ID_1418568546" MODIFIED="1347656364422" TEXT="allocation in java is now faster than malloc in C"/>
</node>
<node CREATED="1347656382785" ID="ID_158552871" MODIFIED="1347656426883" TEXT="object pooling is shown to be a performance loss">
<node CREATED="1347656428423" ID="ID_622981013" MODIFIED="1347656444969" TEXT="no coordination needed for a thread creating its own object"/>
<node CREATED="1347656445457" ID="ID_942424043" MODIFIED="1347656451616" TEXT="pools require synchronisation"/>
</node>
<node CREATED="1347656488241" ID="ID_451775613" MODIFIED="1347656499692" TEXT="allocating objects is cheaper than synchronising"/>
</node>
<node CREATED="1347656756679" ID="ID_830322554" MODIFIED="1347656762739" POSITION="right" TEXT="reducint context switch overhead">
<node CREATED="1347656957494" ID="ID_1249354718" MODIFIED="1347656985228" TEXT="moving the IO out of request processing thread is likely to shorten the mean service time for request processing.">
<node CREATED="1347656986659" ID="ID_1268710679" MODIFIED="1347656994356" TEXT="e.g. threads calling log"/>
</node>
<node CREATED="1347656996425" ID="ID_1570471995" MODIFIED="1347657028829" TEXT="threads no longer block waiting for the output strea lock or for IO to complete">
<node CREATED="1347657028831" ID="ID_1848903994" MODIFIED="1347657046014" TEXT="although we have increaded the contention for the message queu"/>
<node CREATED="1347657046486" ID="ID_1579388827" MODIFIED="1347657059318" TEXT="the put pperation on the message queue is lighter than io">
<node CREATED="1347657072466" ID="ID_1917088807" MODIFIED="1347657092983" TEXT="as long as the queue is not full"/>
</node>
</node>
<node CREATED="1347657101041" ID="ID_1205463158" MODIFIED="1347657139490" TEXT="because a thread no longer blocks its less likely to be contet switched out"/>
<node CREATED="1347657140271" ID="ID_1777274156" MODIFIED="1347657174922" TEXT="by moving ALL the IO to a single thread we also eliminate a source of blocking"/>
</node>
</node>
</map>
