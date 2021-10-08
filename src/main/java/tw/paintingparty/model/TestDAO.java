package tw.paintingparty.model;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("testDao")
@Transactional
public class TestDAO {
//用Member來測試連資料庫有沒有問題
	
	@Autowired
    public SessionFactory sessionfactory;
	
	public Member test() {
		Session session = sessionfactory.getCurrentSession();
		
		String hql = "from Member where member_id=1 ";
		Query<Member> query = session.createQuery(hql, Member.class);
		
		Member result = query.uniqueResult();

		return result;
	}
	
}
