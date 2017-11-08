/**
 * This is a variation on Timer.java in this same directory.
 * See there for more specifics.
 * Here we will use System.nanoTime() to 
 */

public class TimerActual {

    public static long[] _times = new long[12];

    
    public static void printTimeDiffs() {
	long timeDiff = -1;
	for (int j = 10; j >= 0; j--) {
	    timeDiff = (_times[j + 1] - _times[j]) * -1;
	    System.out.println("Time " + j + " = " + timeDiff + " ns");
	}
    }
    
    public static void main(String[] args) {

	System.out.println("Countdown timer...");

	
	// Create a new thread which will count down from 10 to 0...

	// Note this uses the lambda syntax!

	Thread t = new Thread(() -> {
		
		// Initial time
		_times[11] = System.nanoTime();
		
		for (int j = 10; j >= 0; j--) {
		    System.out.println(j + "...");
		    
		    try {
			Thread.sleep(1000);
		    } catch (InterruptedException iex) {
			// ignore
		    }
		    _times[j] = System.nanoTime();

		}
	    });

	// Start the thread
	
	t.start();

	// Wait until the thread is complete before moving on

	try {
	    t.join();
	} catch (InterruptedException iex) {
	    // ignore
	}
	
	System.out.println("Liftoff!");

	printTimeDiffs();
    }
}
