import java.util.ArrayList;

public class Warning {

    public static void main(String[] args) {
	ArrayList al = new ArrayList();
	for (String arg : args) {
	    al.add(arg);
	}

	int c = 0;
	
	for (Object a : al) {
	    c += Integer.parseInt((String) a);
	}
    }
}
