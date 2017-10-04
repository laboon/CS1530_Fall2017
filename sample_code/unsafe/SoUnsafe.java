import sun.misc.*;
import java.lang.reflect.*;

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
