// Just a different way of using synchronized, as a
// method modifier instead of synchronizing on a specific
// object in code.

// synchronized as a method modifier automatically
// syncs on "this" (i.e. the object the method belongs to)

// The downside to this is that the entire method is
// synchronized, and not just the part that you absolutely
// need to be run atomically.  This can degrade performance.

public class MethodLevelConcurrency {

    public static int x = 0;

    public static final int NUM_TIMES = 100000;

    public static synchronized void safeIncrement() {
	x++;
    }
    
    public static synchronized void safeDecrement() {
	x--;
    }

    
    public static void main(String[] args) {

	Thread t1 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    safeIncrement();
		}
	    });	    
	Thread t2 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    safeDecrement();
		}
	    });

	// Start off both threads
	t1.start();
	t2.start();
	
	// Wait for both to finish

	try {
	    t1.join();
	    t2.join();
	} catch (InterruptedException iex) { }

	// Print out final result - we have done x++ 100000 times
	// and x-- 100000 times
	
	System.out.println("x is now " + x);
				   
    }
}
