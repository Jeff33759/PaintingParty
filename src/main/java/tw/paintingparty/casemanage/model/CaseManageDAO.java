package tw.paintingparty.casemanage.model;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import tw.paintingparty.model.CaseApply;
import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Member;
import tw.paintingparty.model.Orders;
import tw.paintingparty.model.Product;
import tw.paintingparty.model.Tag;
import tw.teamUtil.Util01;


@Repository("caseManageDao")
@Transactional
public class CaseManageDAO {

	@Autowired
    public SessionFactory sessionfactory;
	
	//---------------------------------------------
	
	
	public List<MyPostedAllCasesBean> selectMyPostedCases2( Integer myId , Integer sort , Integer condition ,Integer nowpage ) throws ParseException { //加上條件查詢
		//我發布的 => 所有案件
		//	var myposted_sort = 1; //0=由舊到新、1=由新到舊 預設1
		//  var myposted_condition = 0; //0=全部、1=上架、2=下架 預設0
		
		Session session = sessionfactory.getCurrentSession();
		
		Util01 util01 = new Util01();

		
		String sqltotalrecord = "select * from cases where member_id = ? "; //算總頁數用
		Integer totalRecord; //總筆數
		Integer finalPage; //總頁數
		
		if(sort==0) { //升冪		
			
			String sqlup = "SELECT TOP 4 * FROM ( "+
			        "SELECT ROW_NUMBER() OVER (ORDER BY case_id) AS RowNumber,"
			        + "case_id , case_title , upload_date , price_min , price_max , case_status "
			        + "FROM cases where member_id = ? ";
			
			if(condition==1) {
				sqltotalrecord+=" and case_status = '上架' ";
				sqlup+=" and case_status = '上架' ";
			}
			
			if(condition==2) {
				sqltotalrecord+=" and case_status = '下架' ";
				sqlup+=" and case_status = '下架' ";
			}
			
			sqlup+= ") A WHERE RowNumber > 4*(?) "; //?=頁數減1
		
			System.out.println("升冪字串: " + sqlup);
		
			//執行SQL語句
			NativeQuery addEntity = session.createSQLQuery(sqlup).setParameter(1, myId).setParameter(2, nowpage-1);
			List resultList = addEntity.getResultList();
			List<MyPostedAllCasesBean> mpacbList = new ArrayList<MyPostedAllCasesBean>();

			//得出共幾頁
			Query query2 = session.createSQLQuery(sqltotalrecord).addEntity(Cases.class).setParameter(1, myId);//查出所有
			totalRecord = query2.list().size();//共幾筆資料
			finalPage = totalRecord/4;
			if(totalRecord%4 != 0) {
				finalPage++;
			}
			
			
			//以下手動封裝
			for(int i=0 ; i< resultList.size() ;i++) {
				MyPostedAllCasesBean mpacb = new MyPostedAllCasesBean();
				Object[] row = (Object[])resultList.get(i);
				
				mpacb.setCase_id( Integer.parseInt(row[1].toString()) );
				mpacb.setCase_title( row[2].toString() );
				mpacb.setUpload_date( util01.StringFormatToDateYYYYMMDD(row[3].toString() ));
				mpacb.setPrice_min( Integer.parseInt(row[4].toString()) );
				mpacb.setPrice_max( Integer.parseInt(row[5].toString()) );
				mpacb.setCase_status( row[6].toString() );
				mpacb.setFinal_page( finalPage );
				
				
				mpacbList.add(mpacb);
			}
			
			
			
			return mpacbList;
		
		}//升冪END
		
		
		

		
		if(sort==1) { //降冪
			
			String sqldown = "SELECT TOP 4 * FROM ( "+
			        "SELECT ROW_NUMBER() OVER (ORDER BY case_id desc) AS RowNumber,"
			        + "case_id , case_title , upload_date , price_min , price_max , case_status "
			        + "FROM cases where member_id = ? ";
			
			
			if(condition==1) {
				sqltotalrecord+=" and case_status = '上架' ";
				sqldown+=" and case_status = '上架' ";
			}
			
			if(condition==2) {
				sqltotalrecord+=" and case_status = '下架' ";
				sqldown+=" and case_status = '下架' ";
			}
			
			sqldown+= ") A WHERE RowNumber > 4*(?) "; //?=頁數減1
		
			System.out.println("降冪字串: " + sqldown);
		
			
			NativeQuery addEntity = session.createSQLQuery(sqldown).setParameter(1, myId).setParameter(2, nowpage-1);
			List resultList = addEntity.getResultList();
			List<MyPostedAllCasesBean> mpacbList = new ArrayList<MyPostedAllCasesBean>();

			//得出共幾頁
			Query query2 = session.createSQLQuery(sqltotalrecord).addEntity(Cases.class).setParameter(1, myId);//查出所有
			totalRecord = query2.list().size();//共幾筆資料
			finalPage = totalRecord/4;
			if(totalRecord%4 != 0) {
				finalPage++;
			}
			
			
			//以下手動封裝
			for(int i=0 ; i< resultList.size() ;i++) {
				MyPostedAllCasesBean mpacb = new MyPostedAllCasesBean();
				Object[] row = (Object[])resultList.get(i);
				
				mpacb.setCase_id( Integer.parseInt(row[1].toString()) );
				mpacb.setCase_title( row[2].toString() );
				mpacb.setUpload_date( util01.StringFormatToDateYYYYMMDD(row[3].toString() ));
				mpacb.setPrice_min( Integer.parseInt(row[4].toString()) );
				mpacb.setPrice_max( Integer.parseInt(row[5].toString()) );
				mpacb.setCase_status( row[6].toString() );
				mpacb.setFinal_page( finalPage );
				
				
				mpacbList.add(mpacb);
			}
			
			
			
			return mpacbList;
			
			
			
		}

		
		return null;
	
	}
	
	
	
	
//---------------------------------------------
	
	
	public List<MyPostedOrdersBean> selectMyPostedOrders2(  Integer myId , Integer sort , Integer condition ,Integer nowpage ) throws ParseException { 
//    	我發布的>已成立訂單
//		利用自己ID茶案件表，查出來的是自己全部的案件，在用案件ID去查訂單表，相符的就是自己發過的案件有成例的所有訂單。
//      印出案件表的案件標題、在印出訂單的任一欄位
		
//		var mypostorders_sort = 1; //0=由舊到新、1=由新到舊 
//		var mypostorders_condition = 0; //0=全部、1~3=第一~三階段、4=已完成、5=已取消
		
		Session session = sessionfactory.getCurrentSession();
		
		Util01 util01 = new Util01();

		
		String sqltotalrecord = "select o.* "
				+ "from cases as c , orders as o "
				+ "where c.member_id = :memid and c.case_id = o.case_id "; //算總頁數用
		Integer totalRecord; //總筆數
		Integer finalPage; //總頁數
		
		
		if(sort==0) { //升冪		
			
			String sqlup = "SELECT TOP 4 * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY o.order_id) "
					 + "AS RowNumber, o.* , m.member_name , c.case_title "
					 + "FROM cases as c , orders as o ,  member as m "
					 + "where c.member_id = ? and c.case_id = o.case_id and o.member_id = m.member_id ";
			

			
			if(condition==1) {
				sqltotalrecord+=" and o.order_status = '第一階段' ";
				sqlup+=" and o.order_status = '第一階段' ";
			}
			
			if(condition==2) {
				sqltotalrecord+=" and o.order_status = '第二階段' ";
				sqlup+=" and o.order_status = '第二階段' ";
			}
			if(condition==3) {
				sqltotalrecord+=" and o.order_status = '第三階段' ";
				sqlup+=" and o.order_status = '第三階段' ";
			}
			if(condition==4) {
				sqltotalrecord+=" and o.order_status = '已完成' ";
				sqlup+=" and o.order_status = '已完成' ";
			}
			if(condition==5) {
				sqltotalrecord+=" and o.order_status = '已取消' ";
				sqlup+=" and o.order_status = '已取消' ";
			}
			
			sqlup+= ") A WHERE RowNumber > 4*(?) "; //?=頁數減1

			System.out.println("升冪字串: " + sqlup);
		
			//執行SQL語句
			NativeQuery addEntity = session.createSQLQuery(sqlup).setParameter(1, myId).setParameter(2, nowpage-1);
			List resultList = addEntity.getResultList();
			List<MyPostedOrdersBean> mpobList = new ArrayList<MyPostedOrdersBean>();

			//得出共幾頁
			Query query2 = session.createSQLQuery(sqltotalrecord).addEntity(Orders.class).setParameter("memid", myId);//查出所有
			totalRecord = query2.list().size();//共幾筆資料
			finalPage = totalRecord/4;
			if(totalRecord%4 != 0) {
				finalPage++;
			}
			
			
			//以下手動封裝
			for(int i=0 ; i< resultList.size() ;i++) {
				MyPostedOrdersBean mpob = new MyPostedOrdersBean();
				Object[] row = (Object[])resultList.get(i);
				
				mpob.setOrder_id( Integer.parseInt(row[1].toString()) );
	    		mpob.setCase_id(Integer.parseInt(row[2].toString()));
	    		mpob.setBmember_id(Integer.parseInt(row[3].toString()));
	    		mpob.setOrder_status(row[4].toString());
	    		mpob.setOrder_date( util01.StringFormatToDateYYYYMMDD(row[5].toString()) );
	    		mpob.setPrice(Integer.parseInt(row[6].toString()));
	    		mpob.setEvaluation_status_a2b(row[7].toString());
	    		mpob.setBmember_name(row[9].toString());
	    		mpob.setCase_title(row[10].toString());
	    		mpob.setFinal_page(finalPage);
				
				
	    		mpobList.add(mpob);
			}
			
	
			
			return mpobList;
		
		}//升冪END
		
		
		
		if(sort==1) { //降冪		
			
			String sqldown = "SELECT TOP 4 * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY o.order_id desc) "
					+ "AS RowNumber, o.* , m.member_name , c.case_title "
					+ "FROM cases as c , orders as o ,  member as m "
					+ "where c.member_id = ? and c.case_id = o.case_id and o.member_id = m.member_id ";
			
			
			
			if(condition==1) {
				sqltotalrecord+=" and o.order_status = '第一階段' ";
				sqldown+=" and o.order_status = '第一階段' ";
			}
			
			if(condition==2) {
				sqltotalrecord+=" and o.order_status = '第二階段' ";
				sqldown+=" and o.order_status = '第二階段' ";
			}
			if(condition==3) {
				sqltotalrecord+=" and o.order_status = '第三階段' ";
				sqldown+=" and o.order_status = '第三階段' ";
			}
			if(condition==4) {
				sqltotalrecord+=" and o.order_status = '已完成' ";
				sqldown+=" and o.order_status = '已完成' ";
			}
			if(condition==5) {
				sqltotalrecord+=" and o.order_status = '已取消' ";
				sqldown+=" and o.order_status = '已取消' ";
			}
			
			sqldown+= ") A WHERE RowNumber > 4*(?) "; //?=頁數減1
			
			System.out.println("降冪字串: " + sqldown);
			
			//執行SQL語句
			NativeQuery addEntity = session.createSQLQuery(sqldown).setParameter(1, myId).setParameter(2, nowpage-1);
			List resultList = addEntity.getResultList();
			List<MyPostedOrdersBean> mpobList = new ArrayList<MyPostedOrdersBean>();
			
			//得出共幾頁
			Query query2 = session.createSQLQuery(sqltotalrecord).addEntity(Orders.class).setParameter("memid", myId);//查出所有
			totalRecord = query2.list().size();//共幾筆資料
			finalPage = totalRecord/4;
			if(totalRecord%4 != 0) {
				finalPage++;
			}
			
			
			//以下手動封裝
			for(int i=0 ; i< resultList.size() ;i++) {
				MyPostedOrdersBean mpob = new MyPostedOrdersBean();
				Object[] row = (Object[])resultList.get(i);
				
				mpob.setOrder_id( Integer.parseInt(row[1].toString()) );
				mpob.setCase_id(Integer.parseInt(row[2].toString()));
				mpob.setBmember_id(Integer.parseInt(row[3].toString()));
				mpob.setOrder_status(row[4].toString());
				mpob.setOrder_date( util01.StringFormatToDateYYYYMMDD(row[5].toString()) );
				mpob.setPrice(Integer.parseInt(row[6].toString()));
				mpob.setEvaluation_status_a2b(row[7].toString());
				mpob.setBmember_name(row[9].toString());
				mpob.setCase_title(row[10].toString());
				mpob.setFinal_page(finalPage);
				
				
				mpobList.add(mpob);
			}
			
			
			
			return mpobList;
			
		}//降冪END
		
		
		return null;
		
	}
	
//---------------------------------------------
	
	
	public List<MyAppliedAllCasesBean> selectMyAppliedAllCases2( Integer myId , Integer sort ,Integer nowpage ) throws ParseException {
//    	我應徵的 > 所有案件
//		var myappliedcase_sort = 1; //0=由舊到新、1=由新到舊 
//		var myappliedcase_nowpage = 1; //當前頁數
//		var myappliedcase_finalpage ; //總頁數
		
		Session session = sessionfactory.getCurrentSession();
		
		Util01 util01 = new Util01();

		String sqltotalrecord = "select * "
				+ "from case_apply "
				+ "where member_id = :memid "; //算總頁數用
		Integer totalRecord; //總筆數
		Integer finalPage; //總頁數
		
		
		
		if(sort ==0) { //升冪
			
			String sqlup = "SELECT TOP 4 * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY ca.apply_id) "
					 + "AS RowNumber,ca.* , c.case_title , m.member_id as amember_id ,m.member_name "
					 + "FROM case_apply as ca , cases as c , member as m "
					 + " where ca.member_id = ? and ca.case_id = c.case_id and c.member_id = m.member_id "
					 + ") A WHERE RowNumber > 4*(?) ";
			

			System.out.println("升冪字串: " + sqlup);
			
			//執行SQL語句
			NativeQuery addEntity = session.createSQLQuery(sqlup).setParameter(1, myId).setParameter(2, nowpage-1);
			List resultList = addEntity.getResultList();
			List<MyAppliedAllCasesBean> maacbList = new ArrayList<MyAppliedAllCasesBean>();

			//得出共幾頁
			Query query2 = session.createSQLQuery(sqltotalrecord).addEntity(CaseApply.class).setParameter("memid", myId);//查出所有
			totalRecord = query2.list().size();//共幾筆資料
			finalPage = totalRecord/4;
			if(totalRecord%4 != 0) {
				finalPage++;
			}
			
			
			//以下手動封裝
			for(int i=0 ; i< resultList.size() ;i++) {
				MyAppliedAllCasesBean maacb = new MyAppliedAllCasesBean();
				Object[] row = (Object[])resultList.get(i);
				
				maacb.setCase_id( Integer.parseInt(row[3].toString()) );
				maacb.setPrice_expected(Integer.parseInt(row[4].toString()));
				maacb.setCase_time(Integer.parseInt(row[5].toString()));
				maacb.setApply_date( util01.StringFormatToDateYYYYMMDD(row[6].toString()) );
				maacb.setCase_title(row[8].toString());
				maacb.setAmember_id(Integer.parseInt(row[9].toString()));
				maacb.setAmember_name(row[10].toString());
				maacb.setFinal_page(finalPage);
				
				maacbList.add(maacb);
			}
			
			return maacbList;
			
			
		}//升冪 end
		
		
		
		
		if(sort ==1 ) { //降冪
			
			String sqldown = "SELECT TOP 4 * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY ca.apply_id desc) "
					 + "AS RowNumber,ca.* , c.case_title , m.member_id as amember_id ,m.member_name "
					 + "FROM case_apply as ca , cases as c , member as m "
					 + " where ca.member_id = ? and ca.case_id = c.case_id and c.member_id = m.member_id "
					 + ") A WHERE RowNumber > 4*(?) ";
			
			
			System.out.println("降冪字串: " + sqldown);
			
			//執行SQL語句
			NativeQuery addEntity = session.createSQLQuery(sqldown).setParameter(1, myId).setParameter(2, nowpage-1);
			List resultList = addEntity.getResultList();
			List<MyAppliedAllCasesBean> maacbList = new ArrayList<MyAppliedAllCasesBean>();

			//得出共幾頁
			Query query2 = session.createSQLQuery(sqltotalrecord).addEntity(CaseApply.class).setParameter("memid", myId);//查出所有
			totalRecord = query2.list().size();//共幾筆資料
			finalPage = totalRecord/4;
			if(totalRecord%4 != 0) {
				finalPage++;
			}
			
			
			//以下手動封裝
			for(int i=0 ; i< resultList.size() ;i++) {
				MyAppliedAllCasesBean maacb = new MyAppliedAllCasesBean();
				Object[] row = (Object[])resultList.get(i);
				
				maacb.setCase_id( Integer.parseInt(row[3].toString()) );
				maacb.setPrice_expected(Integer.parseInt(row[4].toString()));
				maacb.setCase_time(Integer.parseInt(row[5].toString()));
				maacb.setApply_date( util01.StringFormatToDateYYYYMMDD(row[6].toString()) );
				maacb.setCase_title(row[8].toString());
				maacb.setAmember_id(Integer.parseInt(row[9].toString()));
				maacb.setAmember_name(row[10].toString());
				maacb.setFinal_page(finalPage);
				
				maacbList.add(maacb);
			}
			
			return maacbList;

			
		}//降冪 end
		
		
		
		return null;
		
	}
	

	
	public List<MyAppliedOrdersBean> selectMyAppliedOrders2( Integer myId , Integer sort , Integer condition ,Integer nowpage  ) throws ParseException { //代做
//    	我應徵的 > 已成立訂單
//		var myappliedorder_sort = 1; //0=由舊到新、1=由新到舊 
//		var myappliedorder_condition = 0; //0=全部、1~3=第一~三階段、4=已完成、5=已取消
//		var myapplied_order_nowpage = 1; //當前頁數
//		var myapplied_order_finalpage ; //總頁數
		
		Session session = sessionfactory.getCurrentSession();
		Util01 util01 = new Util01();
		
		String sqltotalrecord = "select o.* "
				+ "from orders as o "
				+ "where o.member_id = :memid "; //算總頁數用
		Integer totalRecord; //總筆數
		Integer finalPage; //總頁數
		
		
		
		if(sort==0) { //升冪
			
			
			String sqlup = "SELECT TOP 4 * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY o.order_id) "
					 + "AS RowNumber, o.* , c.case_title , m.member_id as amember_id , m.member_name as amember_name "
					 + " FROM orders as o , cases as c , member as m "
					 + " where o.member_id = ? and o.case_id = c.case_id and c.member_id = m.member_id ";
			
			
			if(condition==1) {
				sqltotalrecord+=" and o.order_status = '第一階段' ";
				sqlup+=" and o.order_status = '第一階段' ";
			}
			
			if(condition==2) {
				sqltotalrecord+=" and o.order_status = '第二階段' ";
				sqlup+=" and o.order_status = '第二階段' ";
			}
			if(condition==3) {
				sqltotalrecord+=" and o.order_status = '第三階段' ";
				sqlup+=" and o.order_status = '第三階段' ";
			}
			if(condition==4) {
				sqltotalrecord+=" and o.order_status = '已完成' ";
				sqlup+=" and o.order_status = '已完成' ";
			}
			if(condition==5) {
				sqltotalrecord+=" and o.order_status = '已取消' ";
				sqlup+=" and o.order_status = '已取消' ";
			}
			
			sqlup+= ") A WHERE RowNumber > 4*(?) "; //?=頁數減1

			System.out.println("升冪字串: " + sqlup);
			
			//執行SQL語句
			NativeQuery addEntity = session.createSQLQuery(sqlup).setParameter(1, myId).setParameter(2, nowpage-1);
			List resultList = addEntity.getResultList();
			List<MyAppliedOrdersBean> maobList = new ArrayList<MyAppliedOrdersBean>();

			//得出共幾頁
			Query query2 = session.createSQLQuery(sqltotalrecord).addEntity(Orders.class).setParameter("memid", myId);//查出所有
			totalRecord = query2.list().size();//共幾筆資料
			finalPage = totalRecord/4;
			if(totalRecord%4 != 0) {
				finalPage++;
			}
			
			
			//以下手動封裝
			for(int i=0 ; i< resultList.size() ;i++) {
				MyAppliedOrdersBean maob = new MyAppliedOrdersBean();
				Object[] row = (Object[])resultList.get(i);
				
				maob.setOrder_id( Integer.parseInt(row[1].toString()) );
				maob.setCase_id( Integer.parseInt(row[2].toString()) );
				maob.setOrder_status(row[4].toString());
				maob.setOrder_date(util01.StringFormatToDateYYYYMMDD(row[5].toString()));
				maob.setPrice(Integer.parseInt(row[6].toString()));
				maob.setEvaluation_status_b2a(row[8].toString());
				maob.setCase_title(row[9].toString());
				maob.setAmember_id(Integer.parseInt(row[10].toString()));
				maob.setAmember_name(row[11].toString());
				maob.setFinal_page(finalPage);
				
				
				maobList.add(maob);
			}
			
	
			
			return maobList;
			
			
			
			
		}//升冪 end
		
		
		
		if(sort==1) { //降冪
			
			
			
			String sqldown = "SELECT TOP 4 * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY o.order_id desc) "
					 + "AS RowNumber, o.* , c.case_title , m.member_id as amember_id , m.member_name as amember_name "
					 + " FROM orders as o , cases as c , member as m "
					 + " where o.member_id = ? and o.case_id = c.case_id and c.member_id = m.member_id ";
			
			
			if(condition==1) {
				sqltotalrecord+=" and o.order_status = '第一階段' ";
				sqldown+=" and o.order_status = '第一階段' ";
			}
			
			if(condition==2) {
				sqltotalrecord+=" and o.order_status = '第二階段' ";
				sqldown+=" and o.order_status = '第二階段' ";
			}
			if(condition==3) {
				sqltotalrecord+=" and o.order_status = '第三階段' ";
				sqldown+=" and o.order_status = '第三階段' ";
			}
			if(condition==4) {
				sqltotalrecord+=" and o.order_status = '已完成' ";
				sqldown+=" and o.order_status = '已完成' ";
			}
			if(condition==5) {
				sqltotalrecord+=" and o.order_status = '已取消' ";
				sqldown+=" and o.order_status = '已取消' ";
			}
			
			sqldown+= ") A WHERE RowNumber > 4*(?) "; //?=頁數減1

			System.out.println("降冪字串: " + sqldown);
			
			//執行SQL語句
			NativeQuery addEntity = session.createSQLQuery(sqldown).setParameter(1, myId).setParameter(2, nowpage-1);
			List resultList = addEntity.getResultList();
			List<MyAppliedOrdersBean> maobList = new ArrayList<MyAppliedOrdersBean>();

			//得出共幾頁
			Query query2 = session.createSQLQuery(sqltotalrecord).addEntity(Orders.class).setParameter("memid", myId);//查出所有
			totalRecord = query2.list().size();//共幾筆資料
			finalPage = totalRecord/4;
			if(totalRecord%4 != 0) {
				finalPage++;
			}
			
			
			//以下手動封裝
			for(int i=0 ; i< resultList.size() ;i++) {
				MyAppliedOrdersBean maob = new MyAppliedOrdersBean();
				Object[] row = (Object[])resultList.get(i);
				
				maob.setOrder_id( Integer.parseInt(row[1].toString()) );
				maob.setCase_id( Integer.parseInt(row[2].toString()) );
				maob.setOrder_status(row[4].toString());
				maob.setOrder_date(util01.StringFormatToDateYYYYMMDD(row[5].toString()));
				maob.setPrice(Integer.parseInt(row[6].toString()));
				maob.setEvaluation_status_b2a(row[8].toString());
				maob.setCase_title(row[9].toString());
				maob.setAmember_id(Integer.parseInt(row[10].toString()));
				maob.setAmember_name(row[11].toString());
				maob.setFinal_page(finalPage);
				
				
				maobList.add(maob);
			}
			
	
			
			return maobList;
			
			
			
		}//降冪 end
		
		

		
		return null;
		
	}
	
	
	
	public void PassTheStage( Integer orderId ) {
//    	過稿
		
		Session session = sessionfactory.getCurrentSession();
		
		String hql = "from Orders as o where o.order_id = :orderid";
		Query<Orders> query = session.createQuery(hql,Orders.class).setParameter("orderid", orderId);
		Orders thisorder = query.getSingleResult();
		String nextStage = "";
		
		
		switch ( thisorder.getOrder_status() ) {
		
			case "第一階段" :
				nextStage = "第二階段";
				break;

			case "第二階段" :
				nextStage = "第三階段";
				break;
				
			case "第三階段" :
				nextStage = "已完成";
				break;
				
			default:
				nextStage = "錯誤";
				break;
		
		}
		thisorder.setOrder_status(nextStage);
		
		
	}
	
	
	public void CancelTheOrder( Integer orderId ) {
//    	終止交易
		
		Session session = sessionfactory.getCurrentSession();
		
		String hql = "from Orders as o where o.order_id = :orderid";
		Query<Orders> query = session.createQuery(hql,Orders.class).setParameter("orderid", orderId);
		Orders thisorder = query.getSingleResult();
		
		thisorder.setOrder_status("已取消");
		
		
	}
	
	
//    	評價A2B
	public void EvaluationA2B( EvaluationA2BBean evaa2b ) {
		
		Session session = sessionfactory.getCurrentSession();
		
		
		String sql = "insert into evaluation_a2b (case_id , member_id_s , member_id_r , evaluation_star , evaluation_content)  "
				+ "values( ? , ? , ? , ? , ? )";

    	
    	NativeQuery addEntity = session.createSQLQuery(sql);
    	addEntity.setParameter(1, evaa2b.getCase_id());
    	addEntity.setParameter(2, evaa2b.getMember_id_s());
    	addEntity.setParameter(3, evaa2b.getMember_id_r());
    	addEntity.setParameter(4, evaa2b.getEvaluation_star());
    	addEntity.setParameter(5, evaa2b.getEvaluation_content());

    	addEntity.executeUpdate();
		
		
		String hql = "update Orders as o set o.evaluation_status_a2b = :evaa2b where o.order_id = :orderid";
		Query query = session.createQuery(hql);
		query.setParameter("evaa2b", "已評價").setParameter("orderid", evaa2b.getOrder_id());
		
		query.executeUpdate();
		
		
	}
	
	
//    	評價B2A
	public void EvaluationB2A( EvaluationB2ABean evab2a ) {
		
		Session session = sessionfactory.getCurrentSession();
		
		
		String sql = "insert into evaluation_b2a (case_id , member_id_s , member_id_r , evaluation_star , evaluation_content)  "
				+ "values( ? , ? , ? , ? , ? )";
		
		
		NativeQuery addEntity = session.createSQLQuery(sql);
		addEntity.setParameter(1, evab2a.getCase_id());
		addEntity.setParameter(2, evab2a.getMember_id_s());
		addEntity.setParameter(3, evab2a.getMember_id_r());
		addEntity.setParameter(4, evab2a.getEvaluation_star());
		addEntity.setParameter(5, evab2a.getEvaluation_content());
		
		addEntity.executeUpdate();
		
		
		String hql = "update Orders as o set o.evaluation_status_b2a = :evab2a where o.order_id = :orderid";
		Query query = session.createQuery(hql);
		query.setParameter("evab2a", "已評價").setParameter("orderid", evab2a.getOrder_id());
		
		query.executeUpdate();
		
		
	}
	
	
	public PayInfoBean GetBmemberPayInfo( Integer bmemid ) {
//    	匯款資訊
		
		Session session = sessionfactory.getCurrentSession();
		
		String hql = "select new tw.paintingparty.casemanage.model.PayInfoBean"
				+ "(m.member_id , m.member_name , m.profile_pic , m.profile_pic_path , m.bank_account ) "
				+ "from Member as m"
				+ " where m.member_id = :bmemberid ";
		
		Query<PayInfoBean> query = session.createQuery(hql,PayInfoBean.class).setParameter("bmemberid", bmemid);
		PayInfoBean thisMemberInfo = query.getSingleResult();
		
		return thisMemberInfo;
		
	}
	
	public HeadShotBean HeadShotDownloader( Integer memid ) {
//    	大頭照印出
		
		Session session = sessionfactory.getCurrentSession();
		
		String hql = "from Member as m where m.member_id = :memberid";
		Query<Member> query = session.createQuery(hql,Member.class).setParameter("memberid", memid);
		Member thisMemberInfo = query.getSingleResult();
		HeadShotBean headShotBean = new HeadShotBean();
		headShotBean.setProfile_pic( thisMemberInfo.getProfile_pic() );
		headShotBean.setProfile_pic_path(thisMemberInfo.getProfile_pic_path());
		
		
		return headShotBean;
		
	}
	
	public void ProductUpload( Product productBean ) {
//   成品上傳
		
		Session session = sessionfactory.getCurrentSession();
				
		String sql = "insert into product (order_id , product_name , product_path , painter_message )  "
				+ "values( ? , ? , ? , ? )";
    	
    	NativeQuery addEntity = session.createSQLQuery(sql);
    	addEntity.setParameter(1,productBean.getOrder_id());
    	addEntity.setParameter(2, productBean.getProduct_name());
    	addEntity.setParameter(3, productBean.getProduct_path());
    	addEntity.setParameter(4, productBean.getPainter_message());

    	addEntity.executeUpdate();
		
	
		
	}
	
	public List<FileContentSendBeanB> FileContentB( FileContentReceiveBeanB fcrbb ) {
//   檔案內容B
		
		Session session = sessionfactory.getCurrentSession();
		
		//FileContentSendBeanB fileContentSendBeanB = new FileContentSendBeanB();
		Util01 util01 = new Util01();
		
		String hql = "from Member as m where m.member_id=:bmemid ";
		Query<Member> query = session.createQuery(hql,Member.class).setParameter("bmemid", fcrbb.getBmember_id());
		Member bmember = query.getSingleResult();
//		fileContentSendBeanB.setBmember_name( bmember.getMember_name() );
		
		String hql2 = "from Orders as o where o.order_id=:orderid ";
		Query<Orders> qurey2 = session.createQuery(hql2,Orders.class).setParameter("orderid", fcrbb.getOrder_id());
		Orders order = qurey2.getSingleResult();
		Map priceDivideByThree = util01.PriceDivideByThree( order.getPrice() );
//		fileContentSendBeanB.setPrice_stage1( (Integer)priceDivideByThree.get("Stage1") );
//		fileContentSendBeanB.setPrice_stage2( (Integer)priceDivideByThree.get("Stage2") );
//		fileContentSendBeanB.setPrice_stage3( (Integer)priceDivideByThree.get("Stage3") );
		
		String hql3 = "from Product as p where p.ordersbean.order_id = :orderid ";
//		Query<Product> qurey3 = session.createQuery(hql3,Product.class).setParameter("orderid", fcrbb.getOrder_id());
		Query query3 = session.createQuery(hql3).setParameter("orderid", fcrbb.getOrder_id());
		List<Product> list = query3.list();
		
		
    	List<FileContentSendBeanB> fcsbbList = new ArrayList<FileContentSendBeanB>();

    	//以下手動封裝(因為是用createSQLQuery)
    	for( Product p : list ) {
    		FileContentSendBeanB fileContentSendBeanB = new FileContentSendBeanB();
    		fileContentSendBeanB.setBmember_name( bmember.getMember_name() );
    		fileContentSendBeanB.setPrice_stage1( (Integer)priceDivideByThree.get("Stage1") );
    		fileContentSendBeanB.setPrice_stage2( (Integer)priceDivideByThree.get("Stage2") );
    		fileContentSendBeanB.setPrice_stage3( (Integer)priceDivideByThree.get("Stage3") );
    		fileContentSendBeanB.setProduct_name(p.getProduct_name());
    		fileContentSendBeanB.setProduct_path(p.getProduct_path());
    		fileContentSendBeanB.setPainter_message(p.getPainter_message());
    		
    		fcsbbList.add(fileContentSendBeanB);
    	}
		
		
		
		return fcsbbList;
		
	}
	
	
	
	
	public List<CaseBackStageBean> CaseBackStageManage( Integer caseid ) {
	//   管理案件
			
			Session session = sessionfactory.getCurrentSession();
					
			Util01 util01 = new Util01();
			
			String hql = "from Cases as c where c.case_id = :caseid ";
			Query<Cases> query = session.createQuery(hql,Cases.class).setParameter("caseid",caseid );
			Cases thisCase = query.getSingleResult();
			
			//----------------設置TAG名稱
			String case_tag = thisCase.getCase_tag();
			String[] caseTagSplit = util01.CaseTagSplit(case_tag); //得出切割好的數字(字串型態)
			String selectStr = "where ";
			
			String hql2 = "from Tag as t ";
			
			for(int i=0;i<caseTagSplit.length;i++) { //設置搜尋語句
				selectStr += "t.tag_id = " + caseTagSplit[i] + " " ;
				
				if( i != caseTagSplit.length-1 ) {
					selectStr += "or ";
				}
				
			}
			String finalhql2 = hql2 + selectStr; //最終搜尋語句
			
			Query<Tag> query2 = session.createQuery(finalhql2,Tag.class);
			List<Tag> tagList = query2.list();
			String tagname = ""; //要傳到前端去的標籤名稱
			
			int count = 0;
			for( Tag tag : tagList ) { //設置標籤名稱進字串物件
				
				tagname+= tag.getTag_content();
				
				if( count != tagList.size()-1 ) {
					tagname += "、";
				}
				
				count++;
				
			}
			
			//----------------以上設置TAG名稱
			
			String hql3 = "from CaseApply as ca where ca.applycasesbean.case_id = :caseid ";
			Query<CaseApply> query3 = session.createQuery(hql3,CaseApply.class).setParameter("caseid",caseid );
			List<CaseApply> caseApplyList = query3.getResultList();
			
			List<CaseBackStageBean> cbsbList = new ArrayList<CaseBackStageBean>();
			CaseBackStageBean cbsb = new CaseBackStageBean();
			cbsb.setCase_id( thisCase.getCase_id() );
			cbsb.setCase_title( thisCase.getCase_title() );
			cbsb.setUpload_date( thisCase.getUpload_date() );
			cbsb.setPrice_min(thisCase.getPrice_min());
			cbsb.setPrice_max(thisCase.getPrice_max());
			cbsb.setCase_tag(tagname); //轉中文
			cbsbList.add(cbsb); //一定會有第一筆資料，萬一沒人應徵，也可以得到此案件的資訊，顯示在上方，但後面要記得取資料時，要I+1
			
			for( CaseApply ca : caseApplyList ) {
				CaseBackStageBean cbsb2 = new CaseBackStageBean();
				cbsb2.setCase_id( thisCase.getCase_id() );
				cbsb2.setCase_title( thisCase.getCase_title() );
				cbsb2.setUpload_date( thisCase.getUpload_date() );
				cbsb2.setPrice_min(thisCase.getPrice_min());
				cbsb2.setPrice_max(thisCase.getPrice_max());
				cbsb2.setCase_tag(tagname); //轉中文
				cbsb2.setBmember_id( ca.getApplymemberbean().getMember_id() );
				cbsb2.setBmember_name( ca.getApplymemberbean().getMember_name() );
				cbsb2.setProfile_pic( ca.getApplymemberbean().getProfile_pic() );
				cbsb2.setPrice_expected(ca.getPrice_expected());
				cbsb2.setCase_time(ca.getCase_time());
				cbsb2.setApply_date(ca.getApply_date());
				cbsb2.setApply_status(ca.getApply_status());
				
				cbsbList.add(cbsb2);
				
			}
			
			return cbsbList;
			
		}
	
	
	
	public void hirePainter( int caseid , int bmemid , int expected ) {
		//錄用畫師
		
		Util01 util01 = new Util01();
		
		Session session = sessionfactory.getCurrentSession();
		
		//新增一張訂單進訂單表
		String sql = "insert into orders ( case_id , member_id ,order_date ,price ) "
				+ "values( ? , ? , ? , ? )";
 
		String orderdate = util01.getCurrentDate();//得到現在時間
    	NativeQuery addEntity = session.createSQLQuery(sql);
    	addEntity.setParameter(1, caseid);
    	addEntity.setParameter(2, bmemid);
    	addEntity.setParameter(3, orderdate);
    	addEntity.setParameter(4, expected);
    	addEntity.executeUpdate();
		
    	//改應徵表的選定狀態
		String hql = "update CaseApply as ca set ca.apply_status = '是' where ca.applycasesbean.case_id = :caseid and ca.applymemberbean.member_id = :bmemid";
		Query query = session.createQuery(hql).setParameter("caseid", caseid).setParameter("bmemid", bmemid);
		
		query.executeUpdate();
		
	
	}
	
	
	
	public void OffThisCase( Integer offcaseid ) {
//    	下架案件
		
		Session session = sessionfactory.getCurrentSession();
		
		String hql = "update Cases as c set c.case_status = '下架' where c.case_id = :caseid";

		Query query = session.createQuery(hql).setParameter("caseid", offcaseid);
		query.executeUpdate();
		
		
	}
	
	
	

	
	
	
	
}
