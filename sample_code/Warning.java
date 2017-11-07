import java.util.ArrayList;



public class Warning {

    
    public static void main(String[] args) {
	ArrayList<String> al = new ArrayList<String>();
	for (String arg : args) {
	    al.add(arg);
	}

	al.add(new Darble());
	
	int c = 0;
	
	for (Object a : al) {
	    c += Integer.parseInt((String) a);
	}
    }


}

class Darble {
}
