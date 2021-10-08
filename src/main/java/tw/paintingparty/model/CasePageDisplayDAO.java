package tw.paintingparty.model;


import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.criteria.CriteriaBuilder.Case;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("casePageDisplayDAO")
@Transactional
public class CasePageDisplayDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Cases getCases(int caseId) {
		
		Session session = sessionFactory.openSession();
		
//		String hql = " from cases where case_id= :id";
//		
//		Query<Cases> query = session.createQuery(hql,Cases.class);
//		
//		query.setParameter("id", id);
//		
//		Cases result = query.uniqueResult();
		
		Cases c1 = session.get(Cases.class,caseId);
		
		return c1;
	}
	
	public List<Cases> findAll(){
		
		Session session = sessionFactory.getCurrentSession();
		
		String hql = "from Cases ";
		
		Query<Cases> query = session.createQuery(hql,Cases.class);
		
		return query.list();
	}
	
	
	public Cases getCasesById(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		String hql = " from Cases c where c.case_id= :id";
		
		Query<Cases> query = session.createQuery(hql,Cases.class);
		
		query.setParameter("id", id);
		
		Cases result = query.uniqueResult();
		
		return result;
		
	}
	
	public Member getMemberByCaseId(int caseId) {
		
		Session session = sessionFactory.getCurrentSession();
		
		String sql = "select * from member as b where b.member_id in (select c.member_id from cases as c where c.case_id = :caseid)";
		
		NativeQuery<Member> addEntity = session.createSQLQuery(sql).addEntity(Member.class);
		
		addEntity.setParameter("caseid", caseId);
		
		//單筆資料可以把List<Member>去掉且使用getSingleResult  如果是多筆資料在使用 List<Member>且用getResultList 並且在controller的地方使用陣列的方式取出
		Member result = addEntity.getSingleResult(); //getResultList
		
		return result;
		
	}
	
	public Example getExampleByCaseId(int caseId){
		
		Session session = sessionFactory.getCurrentSession();
		
		String hql = "from Example e where e.casesbean.case_id = :caseid";
		
		
		Query<Example> query = session.createQuery(hql,Example.class);
		
		query.setParameter("caseid", caseId);
		
		Example result = query.uniqueResult();
		
		return result;
		
	}
	
	public CaseApply getCaseApplyByCaseId(int caseId,int memId) {
		
		Session session = sessionFactory.getCurrentSession();
		
		String hql = "from CaseApply ca where ca.applycasesbean.case_id = :caseid and ca.applymemberbean.member_id = :memid";
		
		try {
			Query<CaseApply> query = session.createQuery(hql,CaseApply.class);
		
			query.setParameter("caseid", caseId);
			query.setParameter("memid", memId);
			
			CaseApply result = query.getSingleResult();
			
			return result;
		}catch (NoResultException  e) {
			return null;
		}
		
		
	}

	
}
