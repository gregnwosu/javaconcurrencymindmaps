<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1338545291534" ID="ID_1656061710" MODIFIED="1338546722466" TEXT="concurrency">
<node CREATED="1338546712709" ID="ID_880376331" MODIFIED="1338546739271" POSITION="right" TEXT="thread saftey">
<node CREATED="1338545313058" ID="ID_785107823" MODIFIED="1338554993578" TEXT="sharing objects safely">
<node CREATED="1338546005970" ID="ID_1486593963" MODIFIED="1338555398188" TEXT="definition">
<node CREATED="1338545429398" ID="ID_1950294885" MODIFIED="1338545820555">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      a class is thread safe when it continues
    </p>
    <p>
      to behave correctly when accessed from multiple threads
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1338545650336" ID="ID_863811629" MODIFIED="1338555013832" TEXT="thread confinement">
<node CREATED="1338555013832" ID="ID_1780491906" MODIFIED="1338555016901" TEXT="definition">
<node CREATED="1338555017987" ID="ID_1771496667" MODIFIED="1338555043951" TEXT="a thread confied object is owned exclusively by and confined to one thread and can be modified by its owning thread"/>
</node>
<node CREATED="1338550053398" ID="ID_1123561551" MODIFIED="1338550061702" TEXT="techniques">
<node CREATED="1338549986433" ID="ID_924981756" MODIFIED="1338550016629" TEXT="java swing uses the invoke later class to schedule a runnable for exectuion on the event thread"/>
<node CREATED="1338550074325" ID="ID_1473092561" MODIFIED="1338550116617" TEXT="connection pools marshal the distribution of non thread safe objects to exclusviely one thread at time"/>
</node>
<node CREATED="1338550122967" ID="ID_1504707180" MODIFIED="1338550339806" TEXT="types">
<node CREATED="1338550130105" ID="ID_255745323" MODIFIED="1338550151760" TEXT="ad hoc thread confinement">
<node CREATED="1338550175691" ID="ID_220082834" MODIFIED="1338550185151" TEXT="definition">
<node CREATED="1338550151760" ID="ID_853930884" MODIFIED="1338550174333" TEXT="responsibility for the thread confinement falls entirely on the implementation"/>
</node>
<node CREATED="1338550179164" ID="ID_1360513149" MODIFIED="1338550213296" TEXT="fragile because">
<node CREATED="1338550213901" ID="ID_819817047" MODIFIED="1338550220753" TEXT="non of the help from ">
<node CREATED="1338550221838" ID="ID_63383998" MODIFIED="1338550226530" TEXT="language features">
<node CREATED="1338550226531" ID="ID_1802258797" MODIFIED="1338550241682" TEXT="visibility modifiers"/>
<node CREATED="1338550241998" ID="ID_1846107675" MODIFIED="1338550248115" TEXT="local variables"/>
</node>
</node>
</node>
</node>
<node CREATED="1338550357763" ID="ID_1391951112" MODIFIED="1338552525839" TEXT="volatile variable ">
<node CREATED="1338550366099" ID="ID_1761471033" MODIFIED="1338550376712" TEXT="a write is like entering a synchronised block">
<node CREATED="1338550377924" ID="ID_285038436" MODIFIED="1338550390844" TEXT="therefore only safe if no more than one thread wirtes at the same time ">
<node CREATED="1338550391496" ID="ID_1998423696" MODIFIED="1338550410063" TEXT="otherwise what is written to memory is nonsense"/>
</node>
</node>
</node>
<node CREATED="1338550443434" ID="ID_1266387340" MODIFIED="1338550454738" TEXT="stack confinement">
<node CREATED="1338550454739" ID="ID_1642298073" MODIFIED="1338550456828" TEXT="definition">
<node CREATED="1338550457916" ID="ID_1839887101" MODIFIED="1338550468416" TEXT="objects that can only be reached via local variables"/>
<node CREATED="1338550513709" ID="ID_1942355985" MODIFIED="1338550532530" TEXT="this includes shared primitives since there is no way to obtain a reference to a shared primitive"/>
</node>
</node>
<node CREATED="1338550714485" ID="ID_1630102744" MODIFIED="1338550751019" TEXT="thread local">
<node CREATED="1338550751655" ID="ID_1027546853" MODIFIED="1338550770311" TEXT="override &apos;initialValue&apos;"/>
<node CREATED="1338550772522" ID="ID_1937741162" MODIFIED="1338550776577" TEXT="use when ">
<node CREATED="1338550776578" ID="ID_149547547" MODIFIED="1338550849393" TEXT="frequently used operation requires a temporary objectand wants to avoid reallocating it"/>
</node>
</node>
</node>
<node CREATED="1338550261359" ID="ID_480653971" MODIFIED="1338550264307" TEXT="considerations">
<node CREATED="1338550265375" ID="ID_1851287763" MODIFIED="1338550285458" TEXT="the decision to use thread confinement often comes when you are using a single threaded subsystem"/>
<node CREATED="1338550622338" ID="ID_381773840" MODIFIED="1338550685832" TEXT="the awarenesss that a confined object is not threadsafe often only existst in the head of the developer , future maintainers may allow it to escape"/>
</node>
</node>
<node CREATED="1338549980464" ID="ID_1233838472" MODIFIED="1338553529159" TEXT="Immutability">
<node CREATED="1338550882749" ID="ID_67626703" MODIFIED="1338552077725" TEXT="definition">
<node CREATED="1338550893101" ID="ID_74841816" MODIFIED="1338550907781" TEXT="an immutable object is one whose state cannot be changed after construction"/>
<node CREATED="1338550954996" ID="ID_1844255255" MODIFIED="1338550962026" TEXT="an object is immuatble if">
<node CREATED="1338550962027" ID="ID_1626596630" MODIFIED="1338550971129" TEXT="its state cannot be modified after construction"/>
<node CREATED="1338550971412" ID="ID_1677588063" MODIFIED="1338550989915" TEXT="it is properly constructed ">
<node CREATED="1338550990309" ID="ID_592805055" MODIFIED="1338551005881" TEXT="i.e. the thsi reference does not escape during construction"/>
</node>
</node>
</node>
<node CREATED="1338552078749" ID="ID_281471209" MODIFIED="1338553541241" TEXT="final fields">
<node CREATED="1338552089001" ID="ID_914709385" MODIFIED="1338552094644" TEXT="initialisation safety">
<node CREATED="1338552095630" ID="ID_1294486575" MODIFIED="1338552137782" TEXT="immutable objects be freely accessed and shared without synchronisation"/>
<node CREATED="1338553565707" ID="ID_970418564" MODIFIED="1338553572241" TEXT="as long as properly constructed"/>
</node>
<node CREATED="1338552187797" ID="ID_1514231376" MODIFIED="1338552203007" TEXT="documents  thats fields are not expected to change"/>
</node>
<node CREATED="1338552260728" ID="ID_118092355" MODIFIED="1338552264990" TEXT="considerations">
<node CREATED="1338552266072" FOLDED="true" ID="ID_919920915" MODIFIED="1338554529955" TEXT="holders">
<node CREATED="1338552275032" ID="ID_793539520" MODIFIED="1338552437654" TEXT="whenenever  a group of related data itmes must be acted on atomically consider creating an immutable holder class for them "/>
</node>
</node>
<node CREATED="1338554535263" ID="ID_52353776" MODIFIED="1338554545974" TEXT="effectively immutable objects">
<node CREATED="1338554547087" ID="ID_566313178" MODIFIED="1338554560671" TEXT="definition">
<node CREATED="1338554609442" ID="ID_1161902108" MODIFIED="1338554634505" TEXT="obects that are not technically immutable but whose state will not be modified after publication"/>
</node>
<node CREATED="1338554637219" ID="ID_1413535675" MODIFIED="1338554717101" TEXT="Safely published effectively immutable objects ccan be used safely by any thread without  additional synchronisation">
<node CREATED="1338554719703" ID="ID_139313498" MODIFIED="1338554727261" TEXT="n.b. must be safely published first!"/>
</node>
</node>
</node>
<node CREATED="1338546024482" ID="ID_952317158" MODIFIED="1338555132843" TEXT="guarded">
<node CREATED="1338555135864" ID="ID_1925989480" MODIFIED="1338555139124" TEXT="definition">
<node CREATED="1338555140968" ID="ID_262889815" MODIFIED="1338555205157" TEXT="a guarded object can be accessed only with a specific lock held. Guarded objects inlcude those that are encapsulated within other thread-safe objects and published objects that are knowon to be guarded by a specific lock"/>
</node>
<node CREATED="1338546147419" ID="ID_83670594" MODIFIED="1338546300708" TEXT="reentrancy">
<node CREATED="1338546165457" ID="ID_1540795009" MODIFIED="1338546179934" TEXT="locks aquired on a per thread basis"/>
<node CREATED="1338546228817" ID="ID_775242628" MODIFIED="1338546246896" TEXT="each lock assoicated with ">
<node CREATED="1338546247648" ID="ID_1393685162" MODIFIED="1338546253859" TEXT="aquisition count "/>
<node CREATED="1338546256432" ID="ID_1961906543" MODIFIED="1338546259457" TEXT="owning thread"/>
</node>
</node>
<node CREATED="1338546471351" FOLDED="true" ID="ID_170907128" MODIFIED="1338546503472" TEXT="guarding variables">
<node CREATED="1338546302405" ID="ID_1822970170" MODIFIED="1338546468221">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      for each mutable state variable&#160;&#160;that may be accessed vy more than one thead, ALL acces to that variable must be performed with the same lock held
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1338546506236" ID="ID_1099766874" MODIFIED="1338546569646" TEXT="guarding invariants">
<node CREATED="1338546513132" ID="ID_1459086154" MODIFIED="1338546546779" TEXT="for every invariant that involves more than one variable , all the variables involved in that invariant must be guarded by the same lock"/>
</node>
<node CREATED="1338546656155" ID="ID_1951332087" MODIFIED="1338546667060" TEXT="avoid holding locks duting lengthy computations"/>
<node CREATED="1338545820556" ID="ID_565427117" MODIFIED="1338549284519" TEXT="atomicity">
<node CREATED="1338552448820" ID="ID_1161224177" MODIFIED="1338552457513" TEXT="definition">
<node CREATED="1338545827595" ID="ID_569980522" MODIFIED="1338545924888">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;operations&#160;&#160;A and B are atomic with respect to each other if, from the perspective of a thread executing A , when another thread executes B , either all of B has executed or none of it has.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1338545931631" ID="ID_1081810104" MODIFIED="1338545934431" TEXT="An atomic operation is one that is atomic with respects to all operations , including itself , that operate on the same state."/>
</node>
<node CREATED="1338552479625" ID="ID_1996877381" MODIFIED="1338552484499" TEXT="considerations">
<node CREATED="1338552484500" ID="ID_1828991478" MODIFIED="1338552490875" TEXT="compound variables">
<node CREATED="1338545962810" ID="ID_200217749" MODIFIED="1338552497679" TEXT="to preserve state consistency, update related state variables in a single atomic operation"/>
</node>
</node>
</node>
</node>
<node CREATED="1338555264429" ID="ID_1103692328" MODIFIED="1338555269087" TEXT="shared thread safe">
<node CREATED="1338555269088" ID="ID_72921" MODIFIED="1338555274541" TEXT="definition">
<node CREATED="1338555276015" ID="ID_1885059128" MODIFIED="1338555313599" TEXT="a thread-safe object performs synchronisation interenally , so mutlible thrads can freely access it through its public interface without further synchronisation"/>
</node>
</node>
</node>
<node CREATED="1338546739271" ID="ID_1270813028" MODIFIED="1338546751834" TEXT="concerns">
<node CREATED="1338546764391" ID="ID_1948142779" MODIFIED="1338553521489" TEXT="visibility">
<node CREATED="1338546782574" ID="ID_431490414" MODIFIED="1338546812655" TEXT="there is no guarantee that reading thread will see a value written by another thread on a timely basis"/>
<node CREATED="1338546814125" ID="ID_672103320" MODIFIED="1338546831808" TEXT="in order to ensure visibility of memory you must use synchronisation"/>
<node CREATED="1338546920289" ID="ID_267887765" MODIFIED="1338546926822" TEXT="out of thin air safety">
<node CREATED="1338546928258" ID="ID_1760787514" MODIFIED="1338546958646" TEXT="when a thread reads a variable without synchronisation ">
<node CREATED="1338546959987" ID="ID_140478034" MODIFIED="1338546965557" TEXT="it may see stale data"/>
<node CREATED="1338546966292" ID="ID_1871510722" MODIFIED="1338547000790" TEXT="BUT the data will data that was actually placed on the thread at some time"/>
<node CREATED="1338547002645" ID="ID_1954060141" MODIFIED="1338547061386" TEXT="EXCEPT 64 bit numeric values , the jvm is permitted to tread a 64 bit read or write as two separate 32 bit operations">
<node CREATED="1338547065130" ID="ID_320119693" MODIFIED="1338547068442" TEXT="double and long"/>
</node>
<node CREATED="1338547122125" ID="ID_218360177" MODIFIED="1338547152179" TEXT="it is not safe to use shared mutable long and double variables in multithreaded programs unless declared volatile or guarded by a lock"/>
</node>
</node>
<node CREATED="1338547168670" FOLDED="true" ID="ID_296047186" MODIFIED="1338554517508" TEXT="guaranteeing visibility">
<node CREATED="1338547265842" FOLDED="true" ID="ID_661844282" MODIFIED="1338547288471" TEXT="locking">
<node CREATED="1338547221937" ID="ID_423443316" MODIFIED="1338547260645" TEXT="ensure that all threads see the most up to date values of shared mutlable variable, the reading and writing threads must syncronise on a common lock"/>
</node>
<node CREATED="1338547289508" ID="ID_509584409" MODIFIED="1338547295030" TEXT="volatile">
<node CREATED="1338547295604" ID="ID_1796099899" MODIFIED="1338547426272" TEXT="when a field is declared volatile the compiler  and runtime are put on notice that this variable is shared and operations on it should not be reordered with other memory operations"/>
<node CREATED="1338547427501" ID="ID_710148910" MODIFIED="1338547565478" TEXT="volatile variables  are not cached in registers or in cache where they are hidden from other processors "/>
<node CREATED="1338547566179" FOLDED="true" ID="ID_1117204536" MODIFIED="1338549015873" TEXT="When a thread  A writes to a volatile variable and subsequently thread B readds that same variable, the values of ALL variabvles that wer visble to A pripr ro writeing to the volatile variable  become visible to B after reading the volatile variable">
<node CREATED="1338548940233" ID="ID_64356104" MODIFIED="1338549009395" TEXT="writing a volatile variable is like exiting a synchronized block and reading a volatile variable is like entering a synchronized block"/>
</node>
<node CREATED="1338549017933" ID="ID_1705536035" MODIFIED="1338549024784" TEXT="Caution">
<node CREATED="1338549025853" ID="ID_811078910" MODIFIED="1338549045985" TEXT="use volatile variable s only when ">
<node CREATED="1338549047726" ID="ID_740311803" MODIFIED="1338549073092" TEXT="they simply implementing and verification of you synchronisation policy"/>
</node>
<node CREATED="1338549075551" FOLDED="true" ID="ID_1811442299" MODIFIED="1338549230836" TEXT="avoid using volatiles when">
<node CREATED="1338549099840" ID="ID_57295658" MODIFIED="1338549132743" TEXT="verifying corrects would require subtle reasoning about visibility"/>
<node CREATED="1338549133429" ID="ID_560902236" MODIFIED="1338549133429" TEXT=""/>
</node>
<node CREATED="1338549233657" ID="ID_880079726" MODIFIED="1338549238877" TEXT="compared  with locking">
<node CREATED="1338549240009" ID="ID_1717702881" MODIFIED="1338549313553" TEXT="only guarantees visibility not also  atomicity like locking"/>
</node>
</node>
<node CREATED="1338549139204" ID="ID_932674560" MODIFIED="1338549144552" TEXT="Good Use">
<node CREATED="1338549145701" ID="ID_398567639" MODIFIED="1338549189502" TEXT="ensuring visibility of a ">
<node CREATED="1338549189503" ID="ID_1001486953" MODIFIED="1338549193279" TEXT="threads own state"/>
<node CREATED="1338549194791" ID="ID_1230252087" MODIFIED="1338549204105" TEXT="an object referred to"/>
<node CREATED="1338549204583" ID="ID_489088531" MODIFIED="1338549216335" TEXT="indicating an important lifecycle event">
<node CREATED="1338549216336" ID="ID_960628652" MODIFIED="1338549220140" TEXT="init/shutdown"/>
</node>
</node>
<node CREATED="1338549180934" ID="ID_1265887830" MODIFIED="1338549357234" TEXT="USE WHEN">
<node CREATED="1338549360146" ID="ID_1475826363" MODIFIED="1338549411093" TEXT="Writes to the variable do not depend on its current value, or you can ensure that only a single thread ever updates the value"/>
<node CREATED="1338549411937" ID="ID_88050414" MODIFIED="1338549456280" TEXT="the variable does not participate in  invariants with other state variables"/>
<node CREATED="1338549456867" ID="ID_113453999" MODIFIED="1338549475747" TEXT="locking is not required for any other reason while the variable is being accessed"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1338549591289" ID="ID_323090618" MODIFIED="1338553306078" TEXT="publication">
<node CREATED="1338549600553" FOLDED="true" ID="ID_160823140" MODIFIED="1338553362465" TEXT="defiinition">
<node CREATED="1338549629710" ID="ID_1532777110" MODIFIED="1338549645886" TEXT="making a variable available to code outside its current scope"/>
<node CREATED="1338549659201" ID="ID_1318470769" MODIFIED="1338549670834" TEXT="construction">
<node CREATED="1338549720692" ID="ID_1633007533" MODIFIED="1338549732793" TEXT="do not allow the this reference to escape during construction">
<node CREATED="1338549671936" ID="ID_1559857460" MODIFIED="1338549692067" TEXT="an object is in a predictable consistent state after the constructor returns">
<node CREATED="1338549693249" ID="ID_312086494" MODIFIED="1338549719316" TEXT="this is true even if the publication is the last statement in the constructor"/>
</node>
</node>
</node>
</node>
<node CREATED="1338553364416" ID="ID_599457941" MODIFIED="1338553378437" TEXT="improper publication">
<node CREATED="1338553453476" ID="ID_958106023" MODIFIED="1338553456726" TEXT="defiition">
<node CREATED="1338553378438" ID="ID_171224131" MODIFIED="1338553396211" TEXT="when synchronisation is not used to make an object visible to other threads!"/>
</node>
<node CREATED="1338553430819" ID="ID_564482693" MODIFIED="1338553447397" TEXT="possible to have an object with incosistent fields">
<node CREATED="1338553466220" ID="ID_1789838358" MODIFIED="1338553497114" TEXT="the object constructor first writes default values to all fields before subclass constructors run"/>
</node>
</node>
<node CREATED="1338553595517" ID="ID_1664925998" MODIFIED="1338553599634" TEXT="safe publication">
<node CREATED="1338553600588" ID="ID_1972142150" MODIFIED="1338554766126" TEXT="definition">
<node CREATED="1338553607213" ID="ID_1870182011" MODIFIED="1338553620932" TEXT="Initialising and object from a static initialiser"/>
<node CREATED="1338553621246" ID="ID_611155092" MODIFIED="1338553650145" TEXT="storing a reference to an object in">
<node CREATED="1338553651231" ID="ID_593954884" MODIFIED="1338553659142" TEXT="volatile field"/>
<node CREATED="1338553659471" ID="ID_1275790777" MODIFIED="1338553665941" TEXT="atomic reference"/>
<node CREATED="1338553666576" ID="ID_1651784933" MODIFIED="1338553696759" TEXT="final field of a properly constructed object"/>
<node CREATED="1338553701441" ID="ID_310706853" MODIFIED="1338553714828" TEXT="field that is properly guarded by a lock"/>
</node>
</node>
<node CREATED="1338553746692" ID="ID_1941082885" MODIFIED="1338554407338" TEXT="considerations">
<node CREATED="1338553750612" ID="ID_463254628" MODIFIED="1338554082701" TEXT="thread safe collections ">
<node CREATED="1338553756597" ID="ID_22576775" MODIFIED="1338553764283" TEXT="guarantees">
<node CREATED="1338554260241" ID="ID_953258962" MODIFIED="1338554348840" TEXT="placing in an object  in a threadsafe collection ">
<node CREATED="1338554082701" ID="ID_1976867585" MODIFIED="1338554289853" TEXT="such as ">
<node CREATED="1338554095074" ID="ID_367869550" MODIFIED="1338554099532" TEXT="Vector "/>
<node CREATED="1338554100422" ID="ID_46803407" MODIFIED="1338554103739" TEXT="Hashtable"/>
<node CREATED="1338554108135" ID="ID_189993267" MODIFIED="1338554113039" TEXT="synchronizedMap"/>
<node CREATED="1338554217932" ID="ID_688052946" MODIFIED="1338554239895" TEXT="ConcurrentMap"/>
<node CREATED="1338554113366" ID="ID_170898381" MODIFIED="1338554124574" TEXT="synchronizedList"/>
<node CREATED="1338554124967" ID="ID_442538953" MODIFIED="1338554138555" TEXT="synchronizedSet"/>
<node CREATED="1338554139496" ID="ID_1127964839" MODIFIED="1338554149235" TEXT="CopyOnWriteArraySet"/>
<node CREATED="1338554150152" ID="ID_1712743402" MODIFIED="1338554159084" TEXT="CopyOnWriteArrayList"/>
<node CREATED="1338554292114" ID="ID_208750079" MODIFIED="1338554298091" TEXT="BlockingQueue"/>
<node CREATED="1338554304946" ID="ID_1341622183" MODIFIED="1338554311667" TEXT="ConcurrentLinkedQueue"/>
</node>
</node>
<node CREATED="1338554042163" ID="ID_491279751" MODIFIED="1338554388189" TEXT="safely publishes it to any thread that retrieves from that collection"/>
</node>
</node>
<node CREATED="1338554407338" ID="ID_34275222" MODIFIED="1338554413146" TEXT="static initialiser">
<node CREATED="1338554413147" ID="ID_791337105" MODIFIED="1338554433591" TEXT="is oftern the easiest and safest way to publish objects that can be statically constructed">
<node CREATED="1338554442087" ID="ID_84334436" MODIFIED="1338554507340" TEXT="executed at class initilisation time"/>
</node>
</node>
<node CREATED="1338554792789" ID="ID_158448728" MODIFIED="1338554813310" TEXT="mutablility">
<node CREATED="1338554816375" ID="ID_602585224" MODIFIED="1338554822482" TEXT="immutable objects ">
<node CREATED="1338554822483" ID="ID_650027411" MODIFIED="1338554839295" TEXT="can be published via any mechanism"/>
<node CREATED="1338554839624" ID="ID_1095193786" MODIFIED="1338554847454" TEXT="effectively immutable objects ">
<node CREATED="1338554847455" ID="ID_913955228" MODIFIED="1338554854384" TEXT="must be safely published"/>
</node>
<node CREATED="1338554859353" ID="ID_1553195571" MODIFIED="1338554870644" TEXT="mutable objects">
<node CREATED="1338554870645" ID="ID_1882307672" MODIFIED="1338554879617" TEXT="must be safely published "/>
<node CREATED="1338554881625" ID="ID_754521942" MODIFIED="1338554889103" TEXT="thread safe or;"/>
<node CREATED="1338554889530" ID="ID_615831276" MODIFIED="1338554895939" TEXT="guarded by a lock"/>
</node>
</node>
</node>
<node CREATED="1338554908027" ID="ID_1674763992" MODIFIED="1338554914184" TEXT="documentation">
<node CREATED="1338554914185" ID="ID_66255205" MODIFIED="1338554941060" TEXT="when you publish an object how it can be accessed"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
