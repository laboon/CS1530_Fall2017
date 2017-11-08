public class UnnecessaryShared {

    // In this version, we will synchronize on a locking
    // object, but it won't buy us anything.  Data races
    // are already impossible since we don't share mutable
    // state between threads.

    // Note we do share some state, viz., NUM_TIMES, but since
    // this is immutable (a final int), there is no sharing
    // of mutable state and so we are still OK from a threading
    // perspective.

    // This is will be MUCH slower than NoShared due to the overhead
    // of synchronization.
    
    public static int numDogs = 0;
    public static int numCats = 0;

    public static final int NUM_TIMES = 10000000;
    
    public static Object lockingObject = new Object();
    
    public static void main(String[] args) {
	
	Thread t1 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    // UNNECESSARY SYNCHRONIZATION
		    synchronized(lockingObject) {
			numDogs++;
		    }
		}
	    });

	Thread t2 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    // UNNECESSARY SYNCHRONIZATION
		    synchronized(lockingObject) {
			numCats++;
		    }
		}
	    });

	t1.start();
	t2.start();

	try {
	    t1.join();
	    t2.join();
	} catch (InterruptedException iex) {
	    // Ignore
	}

	System.out.println("Num cats = " + numCats);
	System.out.println("Num dogs = " + numDogs);
			       
    }
}
