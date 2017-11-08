import java.util.Hashtable;

public class HashtableDemo {

    public static void main(String[] args) {

	// Remember hashes are key-value pairs
	// e.g. animal id number to noise it makes
	// 1 -> "meow"
	// 17 -> "moo"
	// 4 -> "cluck"
	// Can be in any order, can be gaps
	
	Hashtable h = new Hashtable();

	final int NUM_TIMES = 9999999;
	
	for (int j = 0; j < NUM_TIMES; j++) {
	    h.put(j, "chirp");
	}

	for (int j = 0; j < NUM_TIMES; j++) {
	    h.remove(j);
	}

	System.out.println("Final size of hash is " + h.size());
	
    }
}
