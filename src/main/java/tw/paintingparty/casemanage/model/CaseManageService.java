package tw.paintingparty.casemanage.model;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.paintingparty.model.CaseApply;
import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Member;
import tw.paintingparty.model.Orders;
import tw.paintingparty.model.Product;
import tw.paintingparty.model.Tag;
import tw.paintingparty.model.TestDAO;
import tw.teamUtil.Util01;

@Service
@Transactional
public class CaseManageService {

	@Autowired
    private CaseManageDAO cmDao;
	
	
	//---------------------------------------
	
	
	public List<MyPostedAllCasesBean> selectMyPostedCases2( Integer myId , Integer sort , Integer condition ,Integer nowpage ) throws ParseException { //加上條件查詢
		
		return cmDao.selectMyPostedCases2(myId, sort, condition, nowpage);
	}
	
	
	
	public List<MyPostedOrdersBean> selectMyPostedOrders2(  Integer myId , Integer sort , Integer condition ,Integer nowpage ) throws ParseException { 
		
		return cmDao.selectMyPostedOrders2(myId, sort, condition, nowpage);
		
	}
	
//---------------------------------------------
	
	
	public List<MyAppliedAllCasesBean> selectMyAppliedAllCases2( Integer myId , Integer sort ,Integer nowpage ) throws ParseException {
		
		return cmDao.selectMyAppliedAllCases2(myId, sort, nowpage);
		
	}
	

	
	public List<MyAppliedOrdersBean> selectMyAppliedOrders2( Integer myId , Integer sort , Integer condition ,Integer nowpage  ) throws ParseException { //代做

			return cmDao.selectMyAppliedOrders2(myId, sort, condition, nowpage);
	
	}
	
	
	
	public void PassTheStage( Integer orderId ) {
		cmDao.PassTheStage(orderId);		
	}
	
	
	public void CancelTheOrder( Integer orderId ) {
		
		cmDao.CancelTheOrder(orderId);
		
	}
	
	
//    	評價A2B
	public void EvaluationA2B( EvaluationA2BBean evaa2b ) {
		
		cmDao.EvaluationA2B(evaa2b);
		
		
	}
	
	
//    	評價B2A
	public void EvaluationB2A( EvaluationB2ABean evab2a ) {
		
		cmDao.EvaluationB2A(evab2a);

	}
	
	
	public PayInfoBean GetBmemberPayInfo( Integer bmemid ) {
		return cmDao.GetBmemberPayInfo(bmemid);
		
	}
	
	public HeadShotBean HeadShotDownloader( Integer memid ) {
		
		return cmDao.HeadShotDownloader(memid);
		
	}
	
	public void ProductUpload( Product productBean ) {

		cmDao.ProductUpload(productBean);
		
	}
	
	public List<FileContentSendBeanB> FileContentB( FileContentReceiveBeanB fcrbb ) {

		return cmDao.FileContentB(fcrbb);
		
	}
	
	
	
	
	public List<CaseBackStageBean> CaseBackStageManage( Integer caseid ) {
			
			return cmDao.CaseBackStageManage(caseid);
			
		}
	
	
	
	public void hirePainter( int caseid , int bmemid , int expected ) {
		
		cmDao.hirePainter(caseid, bmemid, expected);
		
	
	}
	
	
	
	public void OffThisCase( Integer offcaseid ) {

		cmDao.OffThisCase(offcaseid);
		
		
	}
	
	
	
}
