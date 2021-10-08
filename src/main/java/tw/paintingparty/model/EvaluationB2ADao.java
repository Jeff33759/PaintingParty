package tw.paintingparty.model;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("EvaluationB2ADao")
@Transactional
public class EvaluationB2ADao {
	@Autowired
	public SessionFactory sessionfactory;
	public EvaluationB2A returnEvaluationB2A(int member_id_s) {
		Session session = sessionfactory.getCurrentSession();
		EvaluationB2A evaluationB2A = session.get(EvaluationB2A.class,member_id_s);
		return evaluationB2A;
	}
	
	public List<EvaluationB2A> selectEvaluationB2ABymember_id_s(int member_id_s) {
		Session session = sessionfactory.getCurrentSession();
		String hql = "from EvaluationB2A where member_id_s=:member_id_s";
		Query<EvaluationB2A> query = session.createQuery(hql,EvaluationB2A.class).setParameter("member_id_s", member_id_s);
		List<EvaluationB2A> resultList = query.getResultList();
		return resultList;
	}
	public Integer countByMemIdS(int member_id_s) {
		Session session = sessionfactory.getCurrentSession();
		String hql = "select count(e.evaluation_id) from EvaluationB2A e where member_id_s=:member_id_s";
		Query createQuery = session.createQuery(hql).setParameter("member_id_s",member_id_s );
		Integer singleResult = Integer.parseInt(createQuery.getSingleResult().toString()) ;
		return singleResult;
		
	}

}
