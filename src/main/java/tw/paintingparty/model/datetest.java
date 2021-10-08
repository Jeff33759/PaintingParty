package tw.paintingparty.model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class datetest {

	public static void main(String[] args) {
		
	    Date date = new Date();

	    DateFormat dateformat = new SimpleDateFormat("yyyyMMddHHmmss");
	    String date1 = dateformat.format(date).toString();
	    System.out.println(date1);
		
	}

}
