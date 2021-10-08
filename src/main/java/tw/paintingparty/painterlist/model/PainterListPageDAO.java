package tw.paintingparty.painterlist.model;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.paintingparty.model.Member;

@Repository("painterListPageDao")
@Transactional
public class PainterListPageDAO {
	
	@Autowired
	private SessionFactory factory;
	
	public Long Pagetotal () {
		
		Session session = factory.getCurrentSession();
		
		String hql = "select count(m.member_id) from Member m";
		
		Query query = session.createQuery(hql);
		
		Long maxId = (Long) query.uniqueResult();
		
		return maxId;
		
	}
	
	public List<Member> QueryPage(int pageNo){
		
		Session session = factory.getCurrentSession();
		
		int nowPage = (pageNo*8)+1;
		
		String hql = "from Member m where m.member_id >= :nowPage";
		
		Query<Member> query = session.createQuery(hql,Member.class);
		
		query.setParameter("nowPage", nowPage);
		
		//最大筆數setMaxResults(8)
		List<Member> list = query.setMaxResults(8).getResultList();
		
		return list;
	}
}
