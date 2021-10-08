package tw.paintingparty.model;

import java.util.Date;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("caseApplyDAO")
@Transactional
public class CaseApplyQuotationDAO {

	@Autowired
	private SessionFactory factory;

	public CaseApply addApply(CaseApply bean) {
		
		Session session = factory.getCurrentSession();
		
		String sql = "insert into case_apply (member_id , case_id , price_expected , case_time , apply_date )  "
				+ "values( ? , ? , ? , ? , ? )";
		
//		CaseApply caseApply = new CaseApply();
//		caseApply.setCase_time(5);
//		caseApply.setPrice_expected(500);
//		caseApply.setCase_id(1);
//		caseApply.setMember_id(2);
//		Date utilDate = new Date();
//		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
//		caseApply.setApply_date(sqlDate);
		
    	NativeQuery addEntity = session.createSQLQuery(sql);
    	addEntity.setParameter(1, bean.getMember_id());
    	addEntity.setParameter(2, bean.getCase_id());
    	addEntity.setParameter(3, bean.getPrice_expected());
    	addEntity.setParameter(4, bean.getCase_time());
    	addEntity.setParameter(5, bean.getApply_date());

    	addEntity.executeUpdate();
		
    	return bean;
	}

}
