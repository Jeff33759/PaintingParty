package tw.paintingparty.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("personContentDao")
@Transactional
public class PersonContentDao {
	
//	private final String headShotImageDBPath="C:\\PaintingImg\\HeadShot\\";

	@Autowired
	private SessionFactory factory;
	
	
	public Member selectOne(int oneMemId) {
		Session session = factory.getCurrentSession();
		Member oneMem = session.get(Member.class, oneMemId);
		return oneMem;		
	}
	
	
	public String updateOneProfileContent(int oneMemId, String profile_content) {

		Session session = factory.getCurrentSession();
		
		String hql1="update Member as m set m.profile_content = :memprofile_content where m.member_id = :memid";
		Query query1 = session.createQuery(hql1).setParameter("memprofile_content", profile_content).setParameter("memid", oneMemId);
		query1.executeUpdate();
		
		return "Success";
	}
	
	public String updateOneProfilePic(int oneMemId, String profile_pic) {

		Session session = factory.getCurrentSession();
		
		String hql1="update Member as m set m.profile_pic = :memprofile_pic where m.member_id = :memid";
		Query query1 = session.createQuery(hql1).setParameter("memprofile_pic", profile_pic).setParameter("memid", oneMemId);
		query1.executeUpdate();
		
		return "Success";
	}
	
	public String updateOneProfilePicPath(int oneMemId, String headShotImageDBPath) {

		Session session = factory.getCurrentSession();
		
		String hql1="update Member as m set m.profile_pic_path = :memprofile_pic_path where m.member_id = :memid";
		Query query1 = session.createQuery(hql1).setParameter("memprofile_pic_path", headShotImageDBPath).setParameter("memid", oneMemId);
		query1.executeUpdate();
		
		return "Success";
	}
	
	public String updateOneMemberStatus(int oneMemId) {

		Session session = factory.getCurrentSession();
		
		String hql1="update Member as m set m.member_status = :memstatus where m.member_id = :memid";
		Query query1 = session.createQuery(hql1).setParameter("memstatus", "畫師").setParameter("memid", oneMemId);
		query1.executeUpdate();
		
		return "Success";
	}
	
	public Tag tagSelectOne(int tagId) {
		Session session = factory.getCurrentSession();
		Tag oneTag = session.get(Tag.class, tagId);
		return oneTag;		
	}
	
	public String updateTagPersonal(int oneMemId, String tagPersonal) {

		Session session = factory.getCurrentSession();
		
		String hql1="update Member as m set m.tag_personal = :tagPersonal where m.member_id = :memid";
		Query query1 = session.createQuery(hql1).setParameter("tagPersonal", tagPersonal).setParameter("memid", oneMemId);
		query1.executeUpdate();
		
		return "Success";
	}
	
	public String deletePainterTag(int oneMemId) {

		Session session = factory.getCurrentSession();
		
		String hql1="delete PainterTag where member_id = :memid";
		Query query1 = session.createQuery(hql1).setParameter("memid", oneMemId);
		query1.executeUpdate();
		
		return "Success";
	}
	
	public String insertPainterTag(int oneMemId, int tag) {
		
		Session session = factory.getCurrentSession();
		String sql = "insert into painter_tag (tag_id , member_id) values( ? , ?)";
		
		NativeQuery addEntity = session.createSQLQuery(sql);
		addEntity.setParameter(1, tag);
		addEntity.setParameter(2, oneMemId);		
		addEntity.executeUpdate();
				
		return "Success";
	}
	
}
