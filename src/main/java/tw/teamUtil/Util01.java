package tw.teamUtil;


import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import tw.paintingparty.chatroom.model.MessageC2SBean;
import tw.paintingparty.chatroom.model.MessageS2CBean;

public class Util01 {

	public static void main(String[] args) throws ParseException {
//		測試區
		Util01 util01 = new Util01();
//		Map priceStage = util01.PriceDivideByThree(259);
//		System.out.println(priceStage.get("Stage1"));
//		System.out.println(priceStage.get("Stage2"));
//		System.out.println(priceStage.get("Stage3"));
		
//		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//    	String nowTimeing = formatter.format( LocalDateTime.now() ).toString();
//    	System.out.println(nowTimeing);
    	
//		String[] caseTagSplit = util01.CaseTagSplit("1,2,3");
//		String selectStr = "where ";
//		
//		String hql2 = "from Tag as t ";
//		
//		for(int i=0;i<caseTagSplit.length;i++) {
//			selectStr += "t.tag_id = " + caseTagSplit[i] + " " ;
//			
//			if( i != caseTagSplit.length-1 ) {
//				selectStr += "or ";
//			}
//			
//		}
//		String finalhql2 = hql2 + selectStr;
//		System.out.println(finalhql2);

		

    	
	}
	
	
	public void deleteChatConnNotChat( Integer myid , Integer toid ) { 
		//當外面點下思訓按鈕，會建立一個連結，但若彼此都沒說過話，那就在關掉WS十，刪除此連結，避免一直狂點，連結越來越長，但都是沒用的連結
		//**暫無用到**
		
		System.out.println("UTIL做0");
		
		String url = "jdbc:sqlserver://localhost:1433;databasename=paintingparty";
		String user="sa";
		String password="as";
		String sql = "select * from chat_history where ( member_id_s = ? and member_id_r = ? ) or ( member_id_s = ? and member_id_r = ? ) ;"; 
		
		try (Connection conn = DriverManager.getConnection(url,user,password)){ //try with resource可以不用自己關
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,myid ); 
			pstmt.setInt(2,toid );
			pstmt.setInt(3,toid );
			pstmt.setInt(4,myid );
			ResultSet rs = pstmt.executeQuery();
			//	rs.next();
			System.out.println("UTIL做1");
			if( !rs.next() ) { //若有通西就是T，若無就F，前面加驚嘆號，代表若沒東西才執行
				System.out.println("UTIL做2");
				
				String sql2 = "delete from chat_conn where member_id_a = ? and member_id_b = ? "; //若建立連結，卻沒有和對方傳過訊息，就砍掉我自己跟他的連結	
				pstmt = conn.prepareStatement(sql2);
				pstmt.setInt(1,myid ); 
				pstmt.setInt(2,toid );
				pstmt.executeUpdate();
				System.out.println("UTIL做3");
				
			} //end if
			
			
		} catch (SQLException e) {
			
			System.out.println("UTIL錯誤");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	public void insertChatHistoryToDB( MessageS2CBean ms2cb ) { //當伺服端收到訊息，就存入DB的歷史訊息
//  ****此作法每當一個會員發一次訊息，就會對資料庫進行一次存取，且每筆資料存的訊息量都不多，即時聊天室又是操作量很大的功能，所以對資料庫負擔非常大，
//		往後可考慮改成，做一個暫存(STATIC)，先把每個伺服端收到的訊息放進去，等到存到了500比，在一次寫進DB，成為一筆RECORD，暫存裡面的訊息，用JSON格式，但南點在於，取出資料時，要挑出A會員與B會員講的話...
		
		Util01 util01 = new Util01();
		String url = "jdbc:sqlserver://localhost:1433;databasename=paintingparty";
		String user="sa";
		String password="as";
		String sql = "insert into chat_history (member_id_s , member_id_r , message_content , message_time) "
				+ " values( ? , ? , ? , ? ) ; "; 
		
		try (Connection conn = DriverManager.getConnection(url,user,password)){ //try with resource可以不用自己關
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ms2cb.getFrom_user_id() );  //誰寄的訊息(當然是自己)
			pstmt.setInt(2,ms2cb.getTo_user_id() );  //寄給誰(看連接誰)
			pstmt.setString(3,ms2cb.getSend_message() ); //訊息內容 
			pstmt.setString(4, ms2cb.getCurrent_time() ); //訊息的日期，我們在SQL直接給他設成NVARCHAR，沒用datetime，一樣可以排序 
			
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}
	
	
	
	public void insertNewConnToDBToMe( Integer myid , Integer toid ) throws ParseException { //在前台按下私訊鈕時，若自己沒有與對方季戀連結，就建立，若有，就更新日期
		
		Util01 util01 = new Util01();
		String url = "jdbc:sqlserver://localhost:1433;databasename=paintingparty";
		String user="sa";
		String password="as";
		String sql = "select * from chat_conn where member_id_a = ? and member_id_b = ? ;"; 
		
		try (Connection conn = DriverManager.getConnection(url,user,password)){ //try with resource可以不用自己關
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,myid ); //檢查我有沒有
			pstmt.setInt(2,toid );
			ResultSet rs = pstmt.executeQuery();
			//	rs.next();
			
			if( rs.next() ) { //若有通西就是T，若無就F，此為若有
				System.out.println("近來");
				String currentDate = util01.getCurrentDate();
				Date currentDateParse = new  SimpleDateFormat( "yyyy-MM-dd" ).parse(currentDate);  
				java.sql.Date sqlDate = new java.sql.Date(currentDateParse.getTime());
				
				String sql2 = "update chat_conn set conn_date = ? where member_id_a = ? and member_id_b = ? ;";	
				pstmt = conn.prepareStatement(sql2);
				pstmt.setDate(1, sqlDate );
				pstmt.setInt(2,myid ); //更新我連對方的連結
				pstmt.setInt(3,toid );
				pstmt.executeUpdate();
				
			}else {//若無資料，要新增
				System.out.println("近來2");
				
				String currentDate = util01.getCurrentDate();
				Date currentDateParse = new  SimpleDateFormat( "yyyy-MM-dd" ).parse(currentDate);  
				java.sql.Date sqlDate = new java.sql.Date(currentDateParse.getTime());
				
				String sql3 = "insert into chat_conn (member_id_a , member_id_b , conn_date) values( ? , ? , ? ) ;";	
				pstmt = conn.prepareStatement(sql3);
				pstmt.setInt(1,myid ); //別人在抓時，會用自己ID抓這欄位，所以這裡要把A射程TOID
				pstmt.setInt(2,toid );
				pstmt.setDate(3, sqlDate );
				pstmt.executeUpdate();
				
			} //if end
			
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	public void insertNewConnToDB( Integer myid , Integer toid ) throws ParseException { //傳送訊息時，若對方沒有與自己建立連結，那就建立
		Util01 util01 = new Util01();
		String url = "jdbc:sqlserver://localhost:1433;databasename=paintingparty";
		String user="sa";
		String password="as";
		String sql = "select * from chat_conn where member_id_a = ? and member_id_b = ? ;"; 
		
		try (Connection conn = DriverManager.getConnection(url,user,password)){ //try with resource可以不用自己關
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,toid ); //找對方有沒有，而不是自己有沒有
			pstmt.setInt(2,myid );
			ResultSet rs = pstmt.executeQuery();
		//	rs.next();
			
			if( rs.next() ) { //若有通西就是T，若無就F，此為若有
				System.out.println("近來");
				String currentDate = util01.getCurrentDate();
				Date currentDateParse = new  SimpleDateFormat( "yyyy-MM-dd" ).parse(currentDate);  
				java.sql.Date sqlDate = new java.sql.Date(currentDateParse.getTime());
				
				String sql2 = "update chat_conn set conn_date = ? where member_id_a = ? and member_id_b = ? ;";	
				pstmt = conn.prepareStatement(sql2);
				pstmt.setDate(1, sqlDate );
				pstmt.setInt(2,toid ); //更新對方的，不是自己的
				pstmt.setInt(3,myid );
				pstmt.executeUpdate();
				
			}else {//若無資料，要新增
				System.out.println("近來2");
				
				String currentDate = util01.getCurrentDate();
				Date currentDateParse = new  SimpleDateFormat( "yyyy-MM-dd" ).parse(currentDate);  
				java.sql.Date sqlDate = new java.sql.Date(currentDateParse.getTime());
				
				String sql3 = "insert into chat_conn (member_id_a , member_id_b , conn_date) values( ? , ? , ? ) ;";	
				pstmt = conn.prepareStatement(sql3);
				pstmt.setInt(1,toid ); //別人在抓時，會用自己ID抓這欄位，所以這裡要把A射程TOID
				pstmt.setInt(2,myid );
				pstmt.setDate(3, sqlDate );
				pstmt.executeUpdate();
				
			} //if end
			
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public String selectMyNameInWebSocket( Integer myid ) {
		String url = "jdbc:sqlserver://localhost:1433;databasename=paintingparty";
		String user="sa";
		String password="as";
		String sql = "select * from member where member_id = ? ;";
		
		String myname = ""; 
		try (Connection conn = DriverManager.getConnection(url,user,password)){ //try with resource可以不用自己關
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,myid );
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			myname = rs.getString("member_name");
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return myname;

	}
	
	
	public String getCurrentTime_second ( ) {
//		得到現在的日期時間，格式為yyyy-MM-dd HH:mm:ss
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd  HH:mm:ss");
    	String nowTimeing = formatter.format( LocalDateTime.now() ).toString();
		return nowTimeing;
	}
	
	
	
	public String[] CaseTagSplit( String CaseTag ) { 
		//把案件的TAG欄位，以,為切割點，得出數字的陣列，去搜尋標籤表
		
		String[] SplitList = CaseTag.split(",");
		
		
		return SplitList;
	}
	
	
	public String fileNameUtil( String originalFileName ) { 
		//把檔名給加上日期，例如aaa.jpg => 1202008200912aaa.jpg
    	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
    	String nowTimeing = formatter.format( LocalDateTime.now() ).toString();
    	String export = nowTimeing + originalFileName;
    	
		return export;
	}
	
	
	public String getCurrentDate ( ) {
//		得到現在的日期，格式為yyyy-MM-dd
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    	String date = formatter.format( LocalDateTime.now() ).toString();
    	return date;
	}

	
	public Date StringFormatToDateYYYYMMDD ( String sqlDateResault ) throws ParseException {
		//把字串的內容，去掉分秒，只剩下年月日，並轉成日期，分頁功能硬幹用
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date format = sdf.parse(sqlDateResault);
		return format;
	}
	
	public String dateFormatToStringYYYYMMDD ( Date date ) {
		//把DATE的內容，去掉分秒，只剩下年月日，並轉成字串
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String format = sdf.format(date);
		return format;
	}
	
	
	public Map PriceDivideByThree( int price ) { 
		//訂單稿酬除以三，若無法除盡，兩個商一樣，最後一個要自動補滿稿酬
		
		Map<String,Integer> priceMap = new HashMap<String,Integer>();
		Integer priceInteger = price;
		Integer PriceStage1and2 = priceInteger/3;
		Integer PriceStage3 = price - (PriceStage1and2*2);
		priceMap.put("Stage1", PriceStage1and2);
		priceMap.put("Stage2", PriceStage1and2);
		priceMap.put("Stage3", PriceStage3);
		
		return priceMap;
	}
	
	
	
	public void insertImgInfoToDB (  String ImgName , String ImgRoot ) { 
		//當客戶端上傳檔案，伺服端把檔案讀進伺服端硬碟時，同步把圖片的存放位置寫到資料庫
		//因為HIBERNATE的HQL語句無法實現INSERT，所以這邊我們還是用JDBC去做
		String url = "jdbc:sqlserver://localhost:1433;databaseName=test";
		
		String user = "sa";
		String password = "as";
		
		String sql = "insert into imginfo (imgname , imgroot) values (?,?) ";
		
		try(Connection conn = DriverManager.getConnection(url, user, password);) {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ImgName );
			pstmt.setString(2, ImgRoot );
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}
