public class VarReuse {

    // REDUCE VARIABLE SCOPE
    // ELIMINATE VARIABLE RE-USE
    
    public static void main(String[] args) {
	int j = 1;
	System.out.println("Count from 1 to 10");
	for (; j <= 10; j++) {
	    System.out.println("j is " + j);
	}

	System.out.println("And count from 1 to 10 again!");
	for (j = 1; j <= 10; j++) {
	    System.out.println("j is " + j);
	}

    }
}
