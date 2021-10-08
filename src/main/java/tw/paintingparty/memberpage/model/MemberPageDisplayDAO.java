package tw.paintingparty.memberpage.model;


import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Member;


@Repository("memberPageDisplayDAO")
@Transactional
public class MemberPageDisplayDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Cases getCases(int caseId) {
		
		Session session = sessionFactory.getCurrentSession();
		
		String hql = " from cases where case_id= :id";
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
		
		List<Cases> list = query.list();
		
		return list;
	}
	//---------------------------------------------
	
	
//	public List<MemberProfileBean> selectMemberProfile( int mpId){
//		
//		Session session = sessionFactory.getCurrentSession();
//		
//		String hql = "select new tw.paintingparty.memberpage.model.MemberProfileBean"
//				+ "(m.member_name , m.profile_pic_path , m.schedule , m.profile_content) from Member as m "
//				+ "from member where member_id= :id";
//		
//		Query query = session.createQuery(hql).setParameter("memid", mpId);
//		
//		List<MemberProfileBean> list = query.list();
//		
//		return list;
//	}
	
	//---------------------------------------------
	public List<Member> selectAll(){
		
		Session session = sessionFactory.getCurrentSession();
		
		String hql = "from Member ";
		
		Query<Member> query = session.createQuery(hql,Member.class);
		
		List<Member> list = query.list();
		
		return list;
	}
	
	
	
}