import java.util.*;

// Perform the same calculations as we did in the SynchronousCalculator,
// but this time using threads

// For explanation of different performance characteristics, see
// Amdahl's Law - https://en.wikipedia.org/wiki/Amdahl%27s_law
// This is an "embarassingly parallel" problem

public class ConcurrentCalculator {

    /**
     * Helper method for printing out arrays.
     * @param int[] arr Array of integers to print
     */
    public static void printArray(int[] arr) {
	System.out.print("[ ");
	for (int j=0; j < (arr.length - 1); j++) {
	    System.out.print(arr[j] + ", ");
	}
	if (arr.length > 0) {
	    System.out.print(arr[arr.length - 1]);
	}
	System.out.println(" ]");
	    
    }

    /**
     * Generate initial array, where location 0 has
     * value 0, location 1 value 1, etc.
     */
    
    private static int[] generateInitialArray(int n) {
	int[] toReturn = new int[n];
	for (int j = 0; j < n; j++) {
	    toReturn[j] = j;
	}
	return toReturn;
    }

    /**
     * Placeholder for complex calculation
     */
    
    private static int calculate(int n) {
	int x = n;
	for (int j = 0; j < 100000; j++) {
	    for (int k = 0; k < 20; k++) {
		x += k * Math.atan(n);
	    }
	    x += Math.acos(n);
	    x -= j * Math.sin(n);
	}
	return x;
    }
    
    
    public static void main(String[] args) {

	int n = -1;
	
	try {
	    n = Integer.parseInt(args[0]);
	    if (n < 1) {
		throw new Exception();
	    }
	} catch (Exception ex) {
	    System.out.println("Expected positive int as argument!");
	    System.exit(1);
	}

	int[] initialArray = generateInitialArray(n);
	final int[] newArray = new int[initialArray.length];
	
	printArray(initialArray);

	// Create an array which will hold n threads. 
	
	Thread[] ts = new Thread[n];
	
	for (int j = 0; j < initialArray.length; j++) {

	    // Any external variables we access in a lambda must be final
	    // Since j will never need to be modified by the lambda, it's
	    // fine to just make a final version of it.
	    
	    final int fj = j;

	    // For each element, create a new thread with a Runnable lambda.
	    // Note that this is very similar to defining an "anonymous method"
	    
	    ts[fj] = new Thread(() ->
			       { 
				   newArray[fj] = calculate(initialArray[fj]);
				   System.out.println("Finished calculating " + fj);

			       });
	    
	    // We have now created a thread and it is ready to work, but not doing
	    // anything yet!
	}
	try {
	    
	    // Start each individual thread to calculate.
	    
	    for (Thread t : ts) t.start();

	    // All threads must be complete before any further progress in our
	    // main thread.  What do you think will happen if we comment this out?
	    // Note that if you do comment it out, the compiler will yell about
	    // our try catch block since no InterruptedException is thrown in the block.
	    // It's OK if we just catch a generic Exception since a generic Exception
	    // could theoretically be thrown at any point.
	    
	    for (Thread t : ts) t.join();
	    
	// } catch (Exception iex) { }
	} catch (InterruptedException iex) { }
	
	printArray(newArray);
	
    }
}
