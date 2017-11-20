public class ConstructorConcurrency {

    public static int foo = 0;

    public static Object ref = new Object();
    
    public ConstructorConcurrency() {
	// synchronized(ref) {
	    foo++;
	// }
    }

    public static void main(String[] args) {

	final int NUM_TIMES = 1000;

	Thread[] ts = new Thread[NUM_TIMES];
	
	for (int j = 0; j < NUM_TIMES; j++) {
	    Thread t = new Thread( () -> {
		    for (int k = 0; k < 10; k++) {
			new ConstructorConcurrency();
			// try {
			//     Thread.sleep(10);
			// } catch (InterruptedException iex) {
			// }
		    }
		});
	    ts[j] = t;
	}

	for (int j = 0; j < NUM_TIMES; j++) {
	    ts[j].start();
	}

	for (int j = 0; j < NUM_TIMES; j++) {
	    try {
		ts[j].join();
	    } catch (InterruptedException iex) {
		System.out.println("lol");
	    }
	}
	
	System.out.println("foo is " + foo);
	
    }
}
