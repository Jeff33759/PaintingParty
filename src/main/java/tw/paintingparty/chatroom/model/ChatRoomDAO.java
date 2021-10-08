package tw.paintingparty.chatroom.model;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import tw.paintingparty.casemanage.model.MyPostedAllCasesBean;
import tw.paintingparty.model.ChatConn;
import tw.paintingparty.model.ChatHistory;
import tw.paintingparty.model.Member;

@Repository("chatRoomDao")
@Transactional
public class ChatRoomDAO {
	
	@Autowired
    public SessionFactory sessionfactory;
	
	//---------------------------------------------
	
	
	public List<MyChatConnBean> selectAllMyConn( Integer myid ) { //我連接了誰
	
		Session session = sessionfactory.getCurrentSession();
		
//		String hql = "from ChatConn as cc where cc.amemberbean.member_id = :myid";
		
		String hql = "select new tw.paintingparty.chatroom.model.MyChatConnBean "
				+ "(cc.bmemberbean.member_id , cc.bmemberbean.member_name , cc.bmemberbean.profile_pic , cc.conn_date ) "
				+ "from ChatConn as cc"
				+ " where cc.amemberbean.member_id = :myid "
				+ " order by cc.conn_date desc ";
		
		
		Query<MyChatConnBean> query = session.createQuery(hql,MyChatConnBean.class).setParameter("myid", myid);
		List<MyChatConnBean> resultList = query.getResultList();
		
//		Query<ChatConn> query = session.createQuery(hql,ChatConn.class).setParameter("myid", myid);
//		List<ChatConn> resultList = query.getResultList();
		
		return resultList;
	
	}
	
	public String selectMyName( Integer myid ) { //我的名字，其實存在SESSION最省事，之後再改，不用再像這樣為了得到自己名字多寫一隻DAO
		
		Session session = sessionfactory.getCurrentSession();
		
		String hql = "from Member as m"
				+ " where m.member_id = :myid ";
		
		
		Query<Member> query = session.createQuery(hql,Member.class).setParameter("myid", myid);
		Member memberBean = query.getSingleResult();
		String my_name = memberBean.getMember_name();
		
//		Query<ChatConn> query = session.createQuery(hql,ChatConn.class).setParameter("myid", myid);
//		List<ChatConn> resultList = query.getResultList();
		
		return my_name;
		
	}
	
	public List<MeAndWhoChatHistoryBean> selectChatHistory( Integer myid , Integer toid ) { //查我與XX之間的歷史訊息
		
		Session session = sessionfactory.getCurrentSession();
		
		//得出我與對方的歷史訊息
		String hql2 = "from ChatHistory as ch"
				+ " where (ch.smemberbean.member_id = :myid and ch.rmemberbean.member_id = :toid) "
				+ "or (ch.smemberbean.member_id = :toid and ch.rmemberbean.member_id = :myid) order by ch.chat_history_id desc";
		//因為JSP那裏是PREPEND，所以這裡要desc
		
		Query<ChatHistory> query2 = session.createQuery(hql2,ChatHistory.class);
		query2.setParameter("myid", myid).setParameter("toid", toid);
		List<ChatHistory> resultList = query2.getResultList();

		//要傳給前台的BEANLIST(多一個發送人名稱)
		List<MeAndWhoChatHistoryBean> mawchbList = new ArrayList<MeAndWhoChatHistoryBean>();
		
		//封裝歷史訊息進BEAN
		for(ChatHistory ch : resultList) {
			MeAndWhoChatHistoryBean mawchb = new MeAndWhoChatHistoryBean();
			mawchb.setChat_history_id( ch.getChat_history_id() );;
			mawchb.setMember_id_s(ch.getSmemberbean().getMember_id());
			mawchb.setMember_id_r(ch.getRmemberbean().getMember_id());;
			mawchb.setMessage_content(ch.getMessage_content());
			mawchb.setMessage_time(ch.getMessage_time());
			mawchb.setSender_name(ch.getSmemberbean().getMember_name()); //取得發送者名稱
			
			mawchbList.add(mawchb);
		}
		
		
		
		
		return mawchbList;
		
	}
	
	
	
}
