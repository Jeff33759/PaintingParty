package tw.paintingparty.model;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
@Repository("memberDao")
@Transactional
public class MemberDao {
	@Autowired
	public SessionFactory sessionfactory;
	
	public Member showLoginUsername(HttpServletRequest request) {
		Session session = sessionfactory.openSession();
		//先從session獲得username
//		String username = (String) request.getSession().getAttribute("username");
//		System.out.println(username);
//		//再由username去抓資料庫的member_id
//		String hql_username="from Member where member_account=:member_account";
//		
//		
////		String hql_username="from Member where member_account= 'aa01'";
//		Query<Member> query = session.createQuery(hql_username,Member.class).setParameter("member_account", username);
////		Query<Member> query = session.createQuery(hql_username,Member.class);
//		Member result = query.uniqueResult();
////		System.out.println("aaaaaaa"+result.getMember_id());
//		System.out.println(result.getMember_id());
//		Integer member_id = result.getMember_id();
		
		//改良版,直接從session拿member_id, 因為41行 setParameter 只能讀取int所以要強轉
//		Integer member_id=null;
//		try {
//			if(request.getSession().getAttribute("member_id")!=null){
//				member_id=Integer.parseInt( (String) request.getSession().getAttribute("member_id"));
//				
//			}else { //如果session沒有member_id, 則從cookies讀member_id
//				Cookie[] cookies=request.getCookies();
//				if(cookies!=null) {
//					
//					for(int i=0;i<cookies.length;i++) {
//						if("member_id".equals(cookies[i].getName())) {
//							member_id=Integer.parseInt(cookies[i].getValue());
//						}
//						
//					}
//				}else {
//					member_id=null;
//					
//				}
//				
//			}
//			
//		}catch (Exception e) {
//			e.printStackTrace();
//			System.out.println("沒有session,所以要讀cookie");
//		}`

//		Integer member_id = Integer.parseInt((String) request.getSession().getAttribute("member_id"));
		Object member_id = request.getSession().getAttribute("session_member_id");
		if(member_id!=null) { 
			
			String hql="from Member where member_id=:member_id ";
			Query<Member> query_formember_id = session.createQuery(hql,Member.class).setParameter("member_id", member_id);
			Member result_formember_id = query_formember_id.uniqueResult();
			session.close();
			return result_formember_id;
			
		}else {
			session.close();
			return new Member();
			
		}
//		String member_name = result_formember_id.getMember_name();
		
//		model.addAttribute("member_name",member_name);

	}
	
	public Member selectMemberById(int memberId) {
		Session session = sessionfactory.getCurrentSession();
		Member member = session.get(Member.class, memberId);
		return member;
	}
	
	public Member selectMemberByEmail(String email) {
		Session session = sessionfactory.getCurrentSession();
		Member member = session.get(Member.class, email);
		return member;
	}
	
	public List<PainterTag> selectTagIdByMemberId(int memberId) {
		Session session = sessionfactory.getCurrentSession();
		String hql="from PainterTag where member_id=:member_id";
		Query<PainterTag> query = session.createQuery(hql,PainterTag.class).setParameter("member_id", memberId);
		List<PainterTag> resultList = query.getResultList();
		return resultList;
	}
	public Tag selectTagContentByTagId(int tagId) {
		Session session = sessionfactory.getCurrentSession();
		String hql="select tag_content from tag where tag_id=:tag_id";
		Query<Tag> query = session.createQuery(hql, Tag.class).setParameter("tag_id", tagId);
		Tag singleResult = query.getSingleResult();
//		Tag singleResult = query.uniqueResult()
		return singleResult;
	}
	public Member selectEmail(String email) {
		Session session = sessionfactory.getCurrentSession();
		String hql="from Member where email=:email";
		Query<Member> query = session.createQuery(hql,Member.class).setParameter("email", email);
		Member singleResult = query.getSingleResult();
		return singleResult;
		
	}
	public String updateValidatacodeAndOutdate(String validatacode,Timestamp outdate,String email) {
		Session session = sessionfactory.getCurrentSession();
		String hql="update Member set "+
				"validatacode=:validatacode, "+
				"outdate=:outdate "+
				"where email=:email";
		Query query = session.createQuery(hql).setParameter("validatacode", validatacode).setParameter("outdate", outdate).setParameter("email", email);
		query.executeUpdate();
		return "儲存validatacode成功";
	}
	
	public String updatepwdbyId(int member_id,String passwords) {
		Session session = sessionfactory.getCurrentSession();
		String hql="update Member set "+
				"passwords=:passwords "+
				"where member_id=:member_id";
		Query query = session.createQuery(hql).setParameter("passwords", passwords).setParameter("member_id", member_id);
		query.executeUpdate();
		return "成功";
	}
	
	
	
	

}
