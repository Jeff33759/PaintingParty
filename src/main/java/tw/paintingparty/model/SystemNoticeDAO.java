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

		String hql = "from SystemNotice s where s.system_notice_id >= 1 ";
		Query<SystemNotice> query1 = session.createQuery(hql, SystemNotice.class);
		List<SystemNotice> list1 = query1.getResultList();
		return list1;

//  String hql = "from SystemNotice where system_notice_id=:snid >= 1";
//  Query<SystemNotice> query = session.createQuery(hql, SystemNotice.class);
//  
//  
//  return query.list();
	}

	public List<OrderNotice> order() {

		Session session = sessionfactory.getCurrentSession();

		String hql = "from OrderNotice o where o.order_notice_id >= 1";
		String hql = "from OrderNotice o order by o.notice_date desc";
		Query<OrderNotice> query2 = session.createQuery(hql, OrderNotice.class);
		List<OrderNotice> list2 = query2.getResultList();
		return list2;

//  String hql = "from OrderNotice where order_notice_id >= 1";
//  Query<OrderNotice> query = session.createQuery(hql, OrderNotice.class);
//  
//  
//  return query.list();

	}

}
 

