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
<node CREATED="1343484210989" ID="ID_27461042" MODIFIED="1343484240464" TEXT="we may need to strucutre a concurrent object so that only one thread can execute the code path following an open call"/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
