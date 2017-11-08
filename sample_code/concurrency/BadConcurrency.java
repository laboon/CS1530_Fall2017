public class BadConcurrency {

    public static int x = 0;

    public static final int NUM_TIMES = 100000;
    
    public static void main(String[] args) {

	// Start thread 1, which will add 100,000 to x
	
	Thread t1 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    x++;
		}
	    });

	// Start thread 2, which will subtract 100,000 from x

	Thread t2 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    x--;
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

	// Print out final result - we have done x++
	// and x-- the same number of times
	
	System.out.println("x is now " + x);
				   
    }
}
