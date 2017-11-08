import java.util.HashMap;

public class ThreadedHashMap {

    public static HashMap h = new HashMap();
    public static HashMap h2 = new HashMap();
    
    public static void main(String[] args) {

	// Remember hashes are key-value pairs
	// e.g. animal id number to noise it makes
	// 1 -> "meow"
	// 17 -> "moo"
	// 4 -> "cluck"
	// Can be in any order, can be gaps
	

	final int NUM_TIMES = 1000;

	Thread t1 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    // System.out.println("Adding " + j);
		    h.put(j, "chirp");
		    try {
			Thread.sleep(1);
		    } catch (InterruptedException iex) { }

		}
	    });

	Thread t2 = new Thread(() -> {
		for (int j = 0; j < NUM_TIMES; j++) {
		    //System.out.println("Removing " + j);
		    h.remove(j);
		    try {
			Thread.sleep(1);
		    } catch (InterruptedException iex) { }

		}
	    });

	try {
	    t2.start();
	    t1.start();
	    t1.join();
	    t2.join();
	} catch (InterruptedException iex) { }

	System.out.println("Final size of hash is " + h.size());

	// Thread t3 = new Thread(() -> {
	// 	for (int j = 0; j < NUM_TIMES; j++) {
	// 	    h2.put(j, "COFFEE");
	// 	    try {
	// 		Thread.sleep(1);
	// 	    } catch (InterruptedException iex) { }

	// 	}
	//     });

	// Thread t4 = new Thread(() -> {
	// 	for (int j = 0; j < NUM_TIMES; j++) {
	// 	    h2.put(j, "TEA");
	// 	    try {
	// 		Thread.sleep(1);
	// 	    } catch (InterruptedException iex) { }

	// 	}
	//     });
	
	// try {
	//     t4.start();
	//     t3.start();
	//     t3.join();
	//     t4.join();
	// } catch (InterruptedException iex) { }

	// int c = 0;
	// for (Object value: h2.values()) {
	    
	//     System.out.println(c++ + ": "+ value);
	// }
	
    }
}
