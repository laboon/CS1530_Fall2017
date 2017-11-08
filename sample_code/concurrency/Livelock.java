// Livelock

// In this case, we have two friends who are very polite.
// Both of them want to rent a cat from Rent-A-Cat, but they
// don't want to rent it if their friend also wants it.
// So each one is waiting until the other person has rented
// the cat before they rent it themself.  Every time they
// try to rent the cat, they check to see if the other person
// has rented it, and if not, they wait.  However, since both
// of them are waiting for the other, none will ever actually
// get the cat!

// This is not deadlock because there is work being done by
// the CPU, it's just not useful.  The two threads are "spinning
// their wheels".

// Another way to think of livelock as two people trying to walk
// past each other in a hallway.  As they approach each other,
// Person A goes to the left and Person B goes to the right.
// This means that they are both on the same side of the hallway,
// and neither can get past the other.
// ----------------------------------------------
//          --->A B<----
//                
// ----------------------------------------------

// Now the algorithm for deciding how to go past the other person
// is "go to the other side of the hallway".  So both A and B
// go to the other side.
// ----------------------------------------------
//              V V
//              A B 
// ----------------------------------------------

// But they're still blocked!  So try the algorithm again - go to
// the other side of the hallway.
// ----------------------------------------------
//              A B
//              ^ ^
// ----------------------------------------------

// Continue ad infinitum.  There is definitely "work" being done as
// the two people move endlessly back and forth, but it is not
// useful work - no progress is being made.  They are stuck in an
// "infinite loop".

public class Livelock {

    public static void main(String[] args) {
        final Renter r1 = new Renter("John");
        final Renter r2 = new Renter("Jane");

        final Cat c = new Cat(r1);

        new Thread(() -> { 
             r1.rent(c, r2);   
        }).start();

        new Thread(() -> { 
            r2.rent(c, r1); 
        }).start();
    }
}

class Cat {
    public Renter _renter;
    public Cat(Renter r) { _renter = r; }

    // Note that we are synchronizing on this for both setRenter
    // and rent.  We should not have issues with accessing data
    // or data races here.
    
    public synchronized void setRenter(Renter r) { _renter = r; }
    public synchronized void rent() {
	System.out.println(_renter._name + " has rented the cat!");
    }
}

class Renter {
    public String _name;
    public boolean _wantsCat;

    public Renter(String n) {
	_name = n;
	_wantsCat = true;
    }

    public void rent(Cat cat, Renter friend) {
	while (_wantsCat) {
	    // Don't have the cat, so wait for friend.
	    if (cat._renter != this) {
		try {
		    Thread.sleep(1);
		} 
		catch(InterruptedException iex) { }
		// Go back to the beginning of the loop and try again
		continue;
	    }                       

	    // If friend wants the cat, insist upon passing the cat.
	    if (friend._wantsCat) {
		System.out.println("You can have the cat, " + friend._name + "!");
		cat.setRenter(friend);
		// Go back to the beginning of the loop and try again
		continue;
	    }

	    // Friend no longer wants the cat, so finally rent it
	    cat.rent();
	    _wantsCat = false;
	    System.out.println(_name + " rented the cat!");
	    cat.setRenter(friend);
	}
    }
}
