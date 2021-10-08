package tw.paintingparty.model;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("TagDao")
@Transactional
public class TagDao {
	@Autowired
	public SessionFactory sessionfactory;
	
	public Tag returnTag(int tagId) {
		Session session = sessionfactory.getCurrentSession();
		Tag tag = session.get(Tag.class, tagId); //類似建構式
		return tag;
	}
}
