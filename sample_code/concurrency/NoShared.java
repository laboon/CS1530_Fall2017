public class NoShared {

    // If you avoid any shared mutable state between threads,
    // you can avoid synchronizing!

    // Remember that synchronization has a non-trivial cost
    // when it comes to performance.

    // You have several choices to avoid shared mutable state -
    //    1. Never mutate state
    //    2. Never share state
    //    3. Never share or mutate state

    // In this example, we mutate the state of numDogs and
    // numCats, BUT we never share that data.  Multiple threads
    // will never access any of these vars at the "same time".
    // 
    // Thus there is no risk of a data race here.  Huzzah!
    
    public static int numDogs = 0;
    public static int numCats = 0;

    // NOTE there is shared state here but it is immutable.
    
    public static final int NUM_TIMES = 10000000;
    
    public static void main(String[] args) {
	// Note no synchronization here!
	// This is because we know that
	
	Thread t1 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    numDogs++;
		}
	    });

	Thread t2 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    numCats++;
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
