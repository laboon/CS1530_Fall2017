import sun.misc.*;
import java.lang.reflect.*;

// For more fun things you can do with unsafe, such as modify
// private variables, throw checked exceptions even if they are not
// checked for, store information off the heap, write data
// wherever you want (the 10th element of a 4-element array?  SURE!),
// allocate native memory, etc. check out:
// http://www.baeldung.com/java-unsafe

public class SoUnsafe {
    
    public static Unsafe getUnsafe() {
	Unsafe unsafe = null;
	try {
	    Field f = Unsafe.class.getDeclaredField("theUnsafe");
	    f.setAccessible(true);
	    unsafe = (Unsafe) f.get(null);
	} catch (Exception ex) {
	    // ignore
	}
	return unsafe;
    }

    public static void main(String[] args) {
	Unsafe theUnsafe = getUnsafe();
	// Regular ol' instantiation
	OrdinaryClass oc = new OrdinaryClass();
	oc.printA();

	
	// Unsafe - ignore the constructor
	OrdinaryClass unsafeOc = null;
	try {
	     unsafeOc = (OrdinaryClass) theUnsafe.allocateInstance(OrdinaryClass.class);
	} catch (Exception ex) {
	    // ignore
	}
	    
	unsafeOc.printA();
	
    }
}
