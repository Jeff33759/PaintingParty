package tw.paintingparty.model;

import java.util.List;

import javax.persistence.NoResultException;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("caseFormDAO")
@Transactional
public class CaseFormDao {

	@Autowired
	private SessionFactory factory;
	
	public Cases addForm(Cases bean) {
		
		Session session = factory.getCurrentSession();
		
		String sql = "insert into cases (member_id , case_title , upload_date , price_min , price_max , case_tag , demand) values ( ? , ? , ? , ? , ? , ? , ? )";
		
		NativeQuery addEntity = session.createSQLQuery(sql);
		
		addEntity.setParameter(1, bean.getMember_id());

		addEntity.setParameter(2, bean.getCase_title());

		addEntity.setParameter(3, bean.getUpload_date());
		
		addEntity.setParameter(4, bean.getPrice_min());

		addEntity.setParameter(5, bean.getPrice_max());

		addEntity.setParameter(6, bean.getCase_tag());

		addEntity.setParameter(7, bean.getDemand());
	
		addEntity.executeUpdate();

		
		return bean;
	}

		//上傳圖片
		public Cases getNewCasebyCasesId() {
		  
		  Session session = factory.getCurrentSession();
		  
		  String hql = "from Cases c order by c.case_id desc";
		  
		  Query query = session.createQuery(hql);
		  
		  Cases result = (Cases) query.setMaxResults(1).getSingleResult();
		  
		  return result;
		  
		 }
		 
		 public Example addExamplePic(Example e1) {
		  
		  Session session = factory.getCurrentSession();
		  
		  String sql = "insert into example (case_id , example_name , example_path) values ( ? , ? , ?  )";
		  
		  NativeQuery addEntity = session.createSQLQuery(sql);
		  
		  addEntity.setParameter(1, e1.getCase_id());

		  addEntity.setParameter(2, e1.getExample_name());

		  addEntity.setParameter(3, e1.getExample_path());
		  
		  addEntity.executeUpdate();
		  
		  return e1;
		  
		 }
		 
			
}

//	public List<Cases> search(String select1 , String select2){
//
//		List<Cases> listCases = null;
//		Session session = factory.getCurrentSession();
//		String sql1 = "SELECT * from Cases where case_tag like '%1% ' or case_tag like '%2%'";
////		String hql = "FROM Member m WHERE m.tag_personal like :select1 and tag_personal like :select2";
//			try {
//				NativeQuery addEntity = session.createSQLQuery(sql1);
//				addEntity.setParameter("select1", "%"+ select1 + "%");
//				addEntity.setParameter("select2", "%"+ select2 + "%");
//				listCases = addEntity.list();
//			} catch(NoResultException e) {
//				listCases = null;
//			} 
//		return listCases;
//	}
	




//		String sql = "insert into cases (memeber_id , case_title , price_min , price_max , publics , case_tag , demand , case_status )  "
//				+ "values( ? , ? , ? , ? , ? , ? , ? ,? )";
//			
//		
//		NativeQuery addEntity = session.createSQLQuery(sql);
//		
//		addEntity.setParameter(1, bean.getMember_id());
//		
//		addEntity.setParameter(2, bean.getCase_title());
//
//		addEntity.setParameter(3, bean.getPrice_min());
//
//		addEntity.setParameter(4, bean.getPrice_max());
//
//		addEntity.setParameter(5, bean.getPublics());
//
//		addEntity.setParameter(6, bean.getCase_tag());
//
//		addEntity.setParameter(7, bean.getDemand());
//
//		addEntity.setParameter(8, bean.getCase_status());
//
//		addEntity.executeUpdate();
		

