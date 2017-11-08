/**
 * This illustrates how to sleep for a given number of seconds.
 * Note that this is _not_ going to be perfect because sleeping is
 * _not_ guaranteed to be for a _precise_ amount of time.
 * But it is good enough for our project!
 * You can use System.nanoTime() if you want better precision.
 */

public class Timer {

    public static void main(String[] args) {

	System.out.println("Countdown timer...");

	// Create a new thread which will count down from 10 to 0...

	// Note this uses the lambda syntax!
	
	Thread t = new Thread(() -> {
		for (int j = 10; j >= 0; j--) {
		    System.out.println(j + "...");

		    // This thread will sleep for >= 1000 milliseconds (1 second)
		    // In practice it will be very close to 1000 milliseconds
		    // Do not rely on Java (or the JVM in general) for hard
		    // real-time guarantees!
		    try {
			Thread.sleep(1000);
		    } catch (InterruptedException iex) {
			// ignore
		    }
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
    }
}
