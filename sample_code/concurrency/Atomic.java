import java.util.concurrent.atomic.*;

public class Atomic {

    // Atomic version of Long class
    // Note that there are lots of Atomic variants -
    // AtomicBoolean, AtomicLongArray, AtomicInteger, etc.
    // See https://docs.oracle.com/javase/7/docs/api/java/util/concurrent/atomic/package-summary.html

    public static AtomicLong _a = new AtomicLong(5);

    // Our unsynchronized long
    
    public static Long _l = new Long(5);

    // Our synchronized Long
    
    public static Long _sl = new Long(5);

    public static final long NUM_TIMES = 100000;
    
    public static void main(String[] args) {

	Object lock2 = new Object();
	
	Thread t1 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    // Note that our API is slightly different
		    // for Atomic* types!
		    // Allow us to do multiple things atomically
		    // Also note this method returns the new value
		    // but we are implicitly throwing it away
		    // synchronized(lock2) {
			_a.incrementAndGet();
		    // }
		}
	    });

	Thread t2 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    // synchronized(lock2) {
			_a.decrementAndGet();
		    // }
		}		
	    });
	try {
	    t1.start();
	    t2.start();
	    t1.join();
	    t2.join();
	} catch (InterruptedException iex) { }
	System.out.println("Atomic long is: " + _a);
	// System.exit(0);
	// Do the same thing, with a regular Long

	Thread t3 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    // No way to perform an increment atomically
		    // on long
		    _l++;
		}
	    });

	Thread t4 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    _l--;
		}		
	    });
	
	try {
	    t3.start();
	    t4.start();
	    t3.join();
	    t4.join();
	} catch (InterruptedException iex) { }
	
	System.out.println("Regular long is: " + _l);
	// System.exit(0);
	// We CAN use a regular Long, but we will need to make sure
	// that we synchronize on some shared object

	// Note that there is now the chance for error since we a
	// are forced to remember to synchronize EVERY time we use
	// that variable!  And remember what to sync on!

	Object lock = new Object();
	
	Thread t5 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    // Note that we are synchronizing on a
		    // RELEVANT object (_l) instead of just
		    // a random one as we did when I
		    // introduced locking and synchronization
		    
		    synchronized(lock) {
		    	_sl += 1;
		    }
		}
	    });

	Thread t6 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    synchronized(lock) {
		    	_sl -= 1;
		    }
		}		
	    });
	
	try {
	    t5.start();
	    t6.start();
	    t5.join();
	    t6.join();
	} catch (InterruptedException iex) { }

	
	// Print out results
	
	System.out.println("Synchronized long is: " + _sl);
	
				       
    }
}
