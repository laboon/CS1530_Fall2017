// "volatile" is a Java keyword which means that the variable
// will be read from main memory *every* time it is accessed.
// It will not be hoisted or read from CPU cache.

// Threading can result in really, really fun and interesting
// bugs, which will react differently based on slight changes
// in code.  Sometimes a threading issue may only show up once every
// several million - or more - times that a program is run.

// Try commenting/uncommenting the System.out.println on line
// 57 and see how often our (known) data race occurs.
// Threading is a minefield!  

public class LolWut {

    public static final int NUM_TIMES = 10000;
    
    public static volatile boolean allDoneVolatile = false;

    public static boolean allDone = false;

    public static volatile int v = 0;

    public static int nv = 0;

    public static void main(String[] args) {

	final Object ref = new Object();
	
	// Thread 1 is going to increment v and nv NUM_TIMES times
	
	Thread t1 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    v++;
		    nv++;
		    try {
			Thread.sleep(0, 100);
		    } catch (InterruptedException iex) { }
		}
		allDone = true;
	    });

	Thread t2 = new Thread(() -> {
		int lv = -1;
		int lnv = -1;
		while (!allDone) {
		    lv = v;
		    // System.out.println("lv = " + lv);
		    lnv = nv;
		    // System.out.println("lnv = " + lnv);

		    if (lv != lnv) {
			System.out.println("1 DIFFERENT! lv = " + lv + ", lnv = " + lnv);
		    } else {
			// Try commenting out this line and seeing how many times values
			// are different!
			// System.out.println("1 SAME! v = " + lv + ", nv = " + lnv);
		    }
		}

	    });

	t1.start();
	t2.start();

	try {
	t1.join();
	t2.join();
	} catch (InterruptedException iex) {}

	System.out.println("Final value of v  = " + v);
	
    }
}
