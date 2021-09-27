package tw.paintingparty.model;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("EvaluationA2BDao")
@Transactional
public class EvaluationA2BDao {
	@Autowired
	public SessionFactory sessionfactory;
	

	
	public List<EvaluationA2B> selectEvaluationA2BBymember_id_r(int member_id_r) {
		Session session = sessionfactory.getCurrentSession();
		String hql = "from EvaluationA2B where member_id_r=:member_id_r";
		Query<EvaluationA2B> query = session.createQuery(hql,EvaluationA2B.class).setParameter("member_id_r", member_id_r);
		List<EvaluationA2B> resultList = query.getResultList();
		return resultList;
	}
	public Integer countByMemberIdR(int member_id_r) {
		Session session = sessionfactory.getCurrentSession();
		String hql = "select count(e.evaluation_id) from EvaluationA2B e where member_id_r=:member_id_r";
		Query createQuery = session.createQuery(hql).setParameter("member_id_r",member_id_r );
		Integer singleResult = Integer.parseInt(createQuery.getSingleResult().toString()) ;
		return singleResult;
	}
	
	public String evaluationA2BContent(int case_id) {
		Object singleResult=null;
		Session session = sessionfactory.getCurrentSession();
		String hql = "select evaluation_content from EvaluationA2B where case_id=:case_id";
		Query createQuery = session.createQuery(hql).setParameter("case_id", case_id);
		singleResult = createQuery.getSingleResult();
		String evaContent = singleResult.toString();
		return evaContent;
		
//這一段修改 getSingleResult() 找無資料
//		try {
//			Session session = sessionfactory.getCurrentSession();
//			String hql = "select evaluation_content from EvaluationA2B where case_id=:case_id";
//			Query createQuery = session.createQuery(hql).setParameter("case_id", case_id);
//			singleResult = createQuery.getSingleResult();
//			String evaContent = singleResult.toString();
//			return evaContent;
//			
//		}catch (Exception e) {
//			return "";
//		}

	}
}
