package tw.paintingparty.model;


import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository("systemnoticeDAO")

@Transactional
public class SystemNoticeDAO {

	@Autowired
	public SessionFactory sessionfactory;

	public List<SystemNotice> systemAll() {

		Session session = sessionfactory.getCurrentSession();

		String hql = "from SystemNotice s order by s.notice_date desc";
		Query<SystemNotice> query1 = session.createQuery(hql, SystemNotice.class);
		List<SystemNotice> list1 = query1.getResultList();
		return list1;


	}

	public List<OrderNotice> orderAll() {

		Session session = sessionfactory.getCurrentSession();
		
		String hql = "from OrderNotice o order by o.notice_date desc";

		//String hql = "from OrderNotice o where o.notifiedmemberbean.member_id=:member_id order by o.notice_date desc";
		
		//Query<OrderNotice> query2 = session.createQuery(hql, OrderNotice.class).setParameter("member_id",4);
		
		Query<OrderNotice> query2 = session.createQuery(hql, OrderNotice.class);
		
		List<OrderNotice> list2 = query2.getResultList();
		return list2;


	}
	
	

}
 

