package tw.paintingparty.util;


import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormat_forWang {

	public String dateFormat(Date date) {
		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd");
		return sdFormat.format(date);
	}
	
}
