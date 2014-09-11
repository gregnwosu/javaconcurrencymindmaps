<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node text="java concurrent animated">
<node text="usage" position="left">
<node text="url">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>sourceforge.net/javaconcurrenta</p><p>green runnable<br />C-r to reset<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="considerations" folded="true">
<node text="saturation policy" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>what to do when you have run out of threads<br />one should consider what saturation policy to have in a multithreaded environment</p></body>
</html>
</richcontent>
</node>
<node text="Rejected">
</node>
<node text="Abort">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>discard longest waiting threads</p></body>
</html>
</richcontent>
</node>
</node>
<node text="discard">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>discards newest</p></body>
</html>
</richcontent>
</node>
</node>
<node text="caller runs">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>makes the caller run</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Thread States" folded="true">
<node text="New">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>created not started</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Runnable">
</node>
<node text="Terminated">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Exitied<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Blocked">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>trying to enter  block synchronised by another thread<br />can never be interrrupted</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Waiting">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>When thread is waiting on monitor<br />catch interrupted</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Timed Waiting">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Waiting with a timeout<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Java memory model">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>if you want to ensure that anything seen by one thread is seen by another you have to use a lock<br />memory model works with synchronised and also works with new locks<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="Synchronsied" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>important to realise that a blocked is a semantic on a synchronised object<br />notify is a semantic on a wait</p></body>
</html>
</richcontent>
</node>
<node text="wait">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>allows other threads to enter a synchronised part</p></body>
</html>
</richcontent>
</node>
</node>
<node text="notify">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>signal another thread that its time to wake up<br />waiting threads move to blocked<br />once the original synchronised thread wakes up any thread can then get the data again<br />NOTE : it is arbitary which one will wake up<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="concurrent utilites">
<node text="Executor" folded="true">
<node text="pooled thread executor">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>fixed threadpool will only pool threads after it is created<br />make a thread for every core / latency of thread amhdals law<br />you can at times have more the number of threads</p></body>
</html>
</richcontent>
</node>
</node>
<node text="single">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>good for serialising access</p></body>
</html>
</richcontent>
</node>
</node>
<node text="scheduled thread">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>start after delay <br />execute periodically</p></body>
</html>
</richcontent>
</node>
</node>
<node text="cached">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>no limit to amount of threads<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Futures" folded="true">
<node text="future task">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>are implemented by future task which are runnable</p></body>
</html>
</richcontent>
</node>
</node>
<node text="cancel">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>throws a cancellation exception to anyone calling get<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Locks">
<node text="Reentrent locks">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>faster than synchronised <br />solves some of the problems with synchrosnised<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="not blocked">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>like <br />#+BEGIN_SRC java<br />lock() unlock() <br />#+END_SRC</p><p><br />Reentrant lock uses a wait state to simulate a blocking state <br />we can now interrupt waiting threads<br />#+BEGIN_SRC java<br />&#160;lock.lockInterruptedly()<br />locked thread.interrupt()</p><p>#+END_SRC<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="blocking with timeout">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>lock.trylock(Time , timeunit)<br />can pass in a timeunit<br />lock.try()<br />returns immediately if lock isnt ready</p></body>
</html>
</richcontent>
</node>
</node>
<node text="condition">
<node text="create a new condition">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_SRC java<br />lock.newCondition()<br />#+END_SRC<br /></p></body>
</html>
</richcontent>
</node>
<node text="wait for a condition">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_SRC java<br />condition.await()<br />#+END_SRC</p></body>
</html>
</richcontent>
</node>
</node>
<node text="notify on a condition">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>tell one or tell all waiters the condition has been met<br />#+BEGIN_SRC java<br />condition.signal()<br />condiition.signalAll()<br />#+END_SRC<br />all blocke threads waiting are notified</p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node text="Semaphores" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>let a predifined number of threads execute</p></body>
</html>
</richcontent>
</node>
<node text="fair">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>tries to allow the threads in that are waiting the longest<br />after</p></body>
</html>
</richcontent>
</node>
</node>
<node text="aquire">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>prospective threads either run of have to wait<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="release">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>lucky threads get to release<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="ReadWriteLock">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />all of the threads can get in as long as there no writing going on<br />Reentrant readwrite lock</p></body>
</html>
</richcontent>
</node>
<node text="readers">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>meant to be used in a situation where there are few writers with lots of readers</p><p>#+BEGIN_SRC java<br />lock.readlock().lock()<br />#+END_SRC</p><p>no limit to the number of readers<br />#+BEGIN_SRC java<br />lock.writelock.lock()<br />#+END_SRC</p><p><br />can not get in while there are readers</p><p>if another reader want to get it it cant while there is a writelock <br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="if there is a writer waiting">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>prior to java 6 , <br />if you called a reader while a writer was waiting it would get in<br />but in java 6 writer will wait for the writer that was waiting first<br />this is to avoid starvation<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="can convert a writer to a reader">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Downgrade to read<br />#+BEGIN_SRC java<br />lock.readlock().lock()<br />lock.writelock().unlock()<br />#+END_SRC<br />in java 8 new readwrite lock called </p></body>
</html>
</richcontent>
</node>
</node>
<node text="Stampedlock">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>only do when there are not too many writers<br />lock.tryoptimisticread()<br />doesnt want to waste time trying to aquire a lock<br />it just goes into synchronised place</p></body>
</html>
</richcontent>
</node>
</node>
<node text="validation">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p><br />#+BEGIN_SRC java<br />lock.validated()<br />#+END_SRC</p><p>tests to see if anything had changed<br />a lot cheaper<br />a writer can come in even though there are optimistic readers<br />if you see that the lock is is invalidated you can restart you calculation.<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="CountDownLatch">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>waiting for a number of events<br />is off until its on , once on it stays on forever<br />way of working out who can access a thread when you have an external set of thread<br />that can effect the conditions<br />the threads that wait arent the ones that countdown</p></body>
</html>
</richcontent>
</node>
<node text="counting down">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_SRC java<br />countdownlatch.countdown()<br />#+END_SRC<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="CyclicBarrier" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>can be reused once it <br />can pass in a runnable when the barrier is opened</p></body>
</html>
</richcontent>
</node>
<node text="waitin">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>cb.await()</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Phaser">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>if you are using cyclic barrier in java 7+<br />always switch to a phaser<br />faster verison of cyclic barrier<br />threads that call arrive() will can pass through but incremnet the counter<br />arriveAndAwait will passthrough when the time ocomes<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="AtomicInteger">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>ensures only one thread can modify the data at a time<br />increment and get<br />compare and set<br />makes sure that the values is as you expect before you try to change<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="BlockingQueue" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>threads block whne there is no more room in the queue</p></body>
</html>
</richcontent>
</node>
<node text="take vs poll">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>poll will return if its there or will return null<br />take will block</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="TransferQ">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>objects never go in they just take from the outside<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="CompletionService" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>We dont care about the order that things come<br />work on each of these tasks work one at a time in seperate threads then allow one thread to go<br />you know how many concurrent sutff you want to get the answer to and <br />a bit like a future with a blocking queue, except the elements of the list are executed in parallel</p></body>
</html>
</richcontent>
</node>
<node text="initialisng">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>you pass in an executor</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="ConcurrentHashmap" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Always better to use a concurrent hashmap  than a synchronised map</p></body>
</html>
</richcontent>
</node>
<node text="check and swap">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>only updates if the key is already there</p></body>
</html>
</richcontent>
</node>
</node>
<node text="replace" folded="true">
<node text="check this out" background_color="#ffff88">
<icon builtin="button_cancel"/>
</node>
</node>
<node text="replace key value">
</node>
</node>
<node text="Fork/Join">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>implementation of hierarchies/levels of execution<br />extends Recurusion<br />#+BEGIN_SRC java<br />ForkJoinPool(numthreads) <br />#+END_SRC</p></body>
</html>
</richcontent>
</node>
<node text="involke with solver">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_SRC java<br />pool.invoke(solver)<br />#+END_SRC<br /></p></body>
</html>
</richcontent>
</node>
</node>
<node text="RecursiveAction">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Solver extends RecursiveAction</p><p>creating recursive solvers<br />#+BEGIN_SRC java<br />Solver solver1 = new Solver(array,stard, mid)<br />Solver solver2 = new Solver ( array, mid end) <br />invokeAll(solver1, solver2)<br />result = Mathmax(solver1.result, solver2.result)</p><p>#+END_SRC<br />wont work on fibonaci`</p><p>java specilalist heinz cabultz</p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
