package tw.paintingparty.memberpage.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.paintingparty.memberpage.model.MemberPageDisplayDAO;
import tw.paintingparty.memberpage.model.MemberProfileBean;
import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Member;

@Service
@Transactional
public class MemberPageDisplayService {
	
	@Autowired
	private MemberPageDisplayDAO mpdDAO;
	
	public Cases getCases(int id) {
		return mpdDAO.getCases(id);
	}
	
	public List<Cases> findAll(){
		return mpdDAO.findAll();
	}
	
	public List<Member> selectAll(){
		return mpdDAO.selectAll();
	}
	
	
//	public List<MemberProfileBean> selectMemberProfile(){
//		return mpdDAO.selectMemberProfile();
//	}
}
