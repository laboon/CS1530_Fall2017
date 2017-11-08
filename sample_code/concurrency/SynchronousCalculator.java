import java.util.*;

// This will run a complex calculation on every element of an array
// of the size passed in as a parameter.
// It will do so synchronously (that is, work on the first element, then
// the second, then the third, etc.)

public class SynchronousCalculator {

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
	int[] newArray = new int[initialArray.length];
	
	printArray(initialArray);
	
	for (int j = 0; j < initialArray.length; j++) {
	    newArray[j] = calculate(initialArray[j]);
	    System.out.println("Finished calculating " + j);
	}
		
	printArray(newArray);
	
    }
}
