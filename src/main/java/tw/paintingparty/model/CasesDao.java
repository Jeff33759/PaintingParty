package tw.paintingparty.model;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("CasesDao")
@Transactional
public class CasesDao {
	@Autowired
	public SessionFactory sessionfactory;
	
	public Cases returnCase(int caseId) {  
		Session session = sessionfactory.getCurrentSession();
		Cases cases = session.get(Cases.class, caseId); //類似建構式
		return cases;
	}
	public List<Cases> selectCaseIdByMemberId(int memberId) {
		Session session = sessionfactory.getCurrentSession();
		String hql="from Cases where member_id=:member_id";
		Query<Cases> queryResult = session.createQuery(hql, Cases.class).setParameter("member_id", memberId);
		List<Cases> resultList = queryResult.getResultList();
		return resultList;
	}
	public Integer countByMemberId(int memberId) {
		Session session = sessionfactory.getCurrentSession();
		String hql = "select count(c.case_id) from Cases c where member_id=:member_id";
		Query createQuery = session.createQuery(hql).setParameter("member_id",memberId );
		Integer singleResult = Integer.parseInt(createQuery.getSingleResult().toString()) ;
		return singleResult;
	}
}
