// Here, we have thread 1 ("xincr") incrementing variable x,
// and thread 2 ("yincr") incrementing variable y.
// Once they are done incrementing, will then print out values

// What happens when we comment out the joins?

public class JoinDemo {

    public static int x = 0;

    public static int y = 0;

    public static final int NUM_TIMES = 100000000;
    
    public static void main(String[] args) {
	
	Thread t1 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    x++;
		}
		System.out.println("END t1!");
	    });	    
	Thread t2 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    y++;
		}
		System.out.println("END t2!");
	    });

	// Start off both threads
	t1.start();
	t2.start();
	
	// Wait for both to finish
	System.out.println("Main thread of execution here...");

	try {
	    t1.join();
	    t2.join();
	} catch (InterruptedException iex) { }
	
	System.out.println("x = " + x + " and y = " + y);
				   
    }
}
