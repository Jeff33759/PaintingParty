package tw.paintingparty.painterlist.model;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.NoResultException;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Member;
import tw.paintingparty.model.PainterTag;
import tw.paintingparty.model.Tag;


@Repository("painterListDAO")
@Transactional
public class PainterListDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Member getMember(int memberId) {
		
		Session session = sessionFactory.getCurrentSession();
		
		
		Member m1 = session.get(Member.class,memberId);
		
		return m1;
	}

	//--------------------------------------------	
	
	public List<Member> SelectAllMember(){
		
		Session session = sessionFactory.getCurrentSession();
		
		String hql = "from Member";
				  // + "select * from member where member_status like '%畫師%'";
		
		Query<Member> query = session.createQuery(hql,Member.class);
		
		List<Member> list = query.list();
		
		return list;		
	}
	
	//---------------------------------------------		
	
	public List<Member> search(String select1 , String select2){

		
		Session session = sessionFactory.getCurrentSession(); 
		// step 01 : select distinct member_id from painter_tag where tag_id=1 or tag_id =2;

		List<PainterTag> lstPainterTag = null;
		
		
		boolean isBothSelect = false;
		
		// 第一種 查詢全部 > select * from  painter_tag;
		if("".equals(select1) && "".equals(select2)) {// 預設起始是全部的資料
			String hql1="from PainterTag";
			try {
				Query<PainterTag> query  = session.createQuery(hql1,PainterTag.class);
				lstPainterTag = query.getResultList();
			} catch(NoResultException e) {
				lstPainterTag = null;
			} 
		}else if("".equals(select1) && select2.length() > 0) {
			// 第二種 條件一為空，條件二不為空 > select * from  painter_tag where tag_id = 1 
			String hql1="from PainterTag where tag_id=:select2";
			try {
				Query<PainterTag> query  = session.createQuery(hql1,PainterTag.class)
								.setParameter("select2", select2 );
				lstPainterTag = query.getResultList();
			} catch(NoResultException e) {
				lstPainterTag = null;
			} 
		}else if( select1.length() > 0 && "".equals(select2)) {
			// 第三種 條件二為空，條件一不為空 > select * from  painter_tag where tag_id = 8 
			String hql1="from PainterTag where tag_id=:select1";
			try {
				Query<PainterTag> query  = session.createQuery(hql1,PainterTag.class)
								.setParameter("select1", select1 );
				lstPainterTag = query.getResultList();
			} catch(NoResultException e) {
				lstPainterTag = null;
			} 
		}else {// 第四種  兩個條件皆不為空 > select * from  painter_tag where tag_id = 1 or tag_id = 8;
			isBothSelect = true;
			
			String hql1="from PainterTag where tag_id=:select1 or tag_id = :select2";
			try {
				Query<PainterTag> query  = session.createQuery(hql1,PainterTag.class)
								.setParameter("select1", select1 )
								.setParameter("select2", select2 );
				lstPainterTag = query.getResultList();
			} catch(NoResultException e) {
				lstPainterTag = null;
			} 
		}
		
		List<Member> listMemberInfo = null ;
		
		// 過濾重複的物件
		if(isBothSelect) {
			Map<Integer, List<PainterTag>> map = new HashMap<Integer,List<PainterTag>>();
			
			for(int i = 0 ;i<lstPainterTag.size();i++) {
				Integer key = lstPainterTag.get(i).getMemberbean().getMember_id();
				if("畫師".equals(lstPainterTag.get(i).getMemberbean().getMember_status())) {
					
					if(map.get(key) == null) { // 判斷是否已經儲存
						// 未存在的話
						List<PainterTag> lstInfo = new LinkedList<PainterTag>();
						lstInfo.add(lstPainterTag.get(i));
						map.put(key , lstInfo);
					}else {
						map.get(key).add(lstPainterTag.get(i));
					}
					
				}
			}
			
			List<Integer> lstMemberId = new LinkedList<Integer>();
			listMemberInfo =  new LinkedList<Member>();
			for(int memberId : map.keySet()) {
				if(map.get(memberId).size() > 1) {
					boolean isSelect1 = false;
					boolean isSelect2 = false;
					for(PainterTag info : map.get(memberId)) {
						if (select1.equals(info.getTagbean().getTag_id() + "")) {
							isSelect1 = true;
						}
						if (select2.equals(info.getTagbean().getTag_id() + "")) {
							isSelect2 = true;
						}
						if(isSelect1 && isSelect2) {
							lstMemberId.add(memberId);
							listMemberInfo.add(info.getMemberbean());
						}
						
					}
				}
			}
			
			for(Member m : listMemberInfo) {
			}	
		}else {
			Map<Integer, Member> map = new HashMap<Integer,Member>();
			for(int i = 0 ;i<lstPainterTag.size();i++) {
				System.out.println("lstPainterTag.memberBean => " + lstPainterTag.get(i).getMemberbean().getMember_id());
				Integer key = lstPainterTag.get(i).getMemberbean().getMember_id();
				if(map.get(key) == null) { // 判斷是否已經儲存
					// 未存在的話
					if("畫師".equals(lstPainterTag.get(i).getMemberbean().getMember_status())) {
						map.put(key , lstPainterTag.get(i).getMemberbean());
					}
				}
			}
			listMemberInfo = new ArrayList<Member>(map.values());
		}
				
		return listMemberInfo;
	}
	
	
	//---------------------------------------------	
	
	public Member selectId(int memberid) {
		Session session = sessionFactory.getCurrentSession();
		Member oneMem = session.get(Member.class,memberid);
		return oneMem;		
	}
	
	//---------------------------------------------	
	
	
}