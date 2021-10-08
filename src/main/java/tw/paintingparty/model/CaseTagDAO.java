package tw.paintingparty.model;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class CaseTagDAO {
	
	@Autowired
	private SessionFactory factory;
	
	public CaseTag insertTagWithCaseId(CaseTag bean) {
		
		Session session = factory.getCurrentSession();
		
		String sql = "insert into case_tag(case_id , tag_id) values (? , ?)";
		
		NativeQuery addEntity = session.createSQLQuery(sql);
		
		addEntity.setParameter(1, bean.getCase_id());

		addEntity.setParameter(2, bean.getCase_tad_id());
		
		addEntity.executeUpdate();

		return bean;

	}

}
