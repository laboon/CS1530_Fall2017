// In this case, every time we increment or decrement x,
// we ensure that is an ATOMIC operation.
// Either t1 or t2 has the lock on Object ref,
// but never both, so they will never interleave.

public class DavidConcurrency {

    public static int x = 0;

    public static final int NUM_TIMES = Integer.MAX_VALUE;
    
    public static void main(String[] args) {

	for (int j = 0; j < NUM_TIMES; j++) {
	    x++;
	}
	
	for (int j = 0; j < NUM_TIMES; j++) {
	    x--;
	}

	// Print out final result - we have done x++ 10000 times
	// and x-- 10000 times
	
	System.out.println("x is now " + x);
				   
    }
}
