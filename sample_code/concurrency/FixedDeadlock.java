// A demonstration of deadlock

public class FixedDeadlock {

    // We have two resources to lock on, printer and scanner
    
    public static Printer printer = new Printer();
    
    public static Scanner scanner = new Scanner();
    
    public static void main(String[] args) {

	// Thread 1 is going to attempt to get the printer first, then scanner
	// Thread 2 is going to attempt to get the scanner first, then printer

	// Thread 1 gets printer
	// Thread 2 gets scanner
	// Thread 1 is now waiting for the scanner to be free
	// Thread 2 is now waiting for the printer to be free
	// Neither will ever be!  Each is waiting for the other
	
	Thread t1 = new Thread(() -> {
		synchronized(printer) {
		    printer.print("thread 1");
		    try {
			Thread.sleep(100);
		    } catch (InterruptedException iex) {}
		    
		    synchronized(scanner) {
			scanner.scan("thread 1");
			try {
			    Thread.sleep(100);
			} catch (InterruptedException iex) {}

			
		    }
		}
	    });

	Thread t2 = new Thread(() -> {
		synchronized(printer) {
		    printer.print("thread 2");

		    try {
			Thread.sleep(100);
		    } catch (InterruptedException iex) {}
		    synchronized(scanner) {
			scanner.scan("thread 2");
			try {
			    Thread.sleep(100);
			} catch (InterruptedException iex) {}

		    }
		}
	    });

	// Start threads and wait for them finish
	
	t1.start();
	t2.start();
	try {
	    t1.join();
	    t2.join();
	} catch (InterruptedException iex) { }

	// We'll never get to this point.  How can we fix it?
	
	System.out.println("Everything went well");
    }

    // Two filler classes, just showing example resources to lock on
	    
    // class Printer {
    // 	public void print(String x) {
    // 	    System.out.println("Printing, from " + x);
    // 	}
    // }

    // class Scanner {
    // 	public void scan(String x) {
    // 	    System.out.println("Scanning, from " + x);
    // 	}
    // }

    
}

