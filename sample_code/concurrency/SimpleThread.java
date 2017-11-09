import java.util.*;

public class SimpleThread {

    private static Random rng = new Random();
    
    public static void main(String[] args) {

	// Create a new thread which will run the method
	// SimpleThread::backgroundTask.

	// Note that it has not started yet!  It's just been
	// created and sitting around

	// Note that a method is a type of Runnable (something that
	// can be run in a Thread).

	SimpleThread st = new SimpleThread();
	
	Thread t = new Thread(SimpleThread::backgroundTask);

	// Start running the other thread
	
	t.start();

	// Now, in main thread, print out Main Task (j)
	// with j from 0 to 99

	// Note that any thread may throw an InterruptedException.
	// This occurs when a thread is interrupted before it
	// does the activity it is supposed to do.
	
	for (int j=0; j < 100; j++) {
	    System.out.println("MAIN TASK (" + j + ")");
	    try {
	    	Thread.sleep(10);
	    } catch (InterruptedException iex) { }
	}
	System.out.println("MAIN IS DONE WOOT");
    }

    // Note that there is nothing special about this method!
    
    private static void backgroundTask() {

	// In other thread, print out Background Task (j)
	// with j from 0 to 99
	
	for (int j = 0; j < 200; j++) {
	    System.out.println("BACKGROUND TASK(" + j + ")");
	    try {
	    	Thread.sleep(10);
	    } catch (InterruptedException iex) { }

	}
	System.out.println("BACKGROUND IS DONE WOOT");

	
    }
}
