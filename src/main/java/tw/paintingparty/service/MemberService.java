package tw.paintingparty.service;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.paintingparty.model.Member;
import tw.paintingparty.model.MemberDao;
import tw.paintingparty.model.PainterTag;
import tw.paintingparty.model.Tag;

@Service
@Transactional
public class MemberService {
	@Autowired
    private MemberDao memberDao;
	@Autowired
	public HttpServletRequest request;
	public Member showLoginUsername() {
		return memberDao.showLoginUsername(request);
	}
	public Member SelectMemberById(int memberId) {
		return memberDao.selectMemberById(memberId);
	}
	
	public Member SelectMemberByEmail(String email) {
		return memberDao.selectMemberByEmail(email);
	}
	
	public List<PainterTag> selectTagIdByMemberId(int memberId) {
		return memberDao.selectTagIdByMemberId(memberId);
	}
	public Tag selectTagContentByTagId(int tagid) {
		return memberDao.selectTagContentByTagId(tagid);
	}
	public Member selectEmail(String email) {
		return memberDao.selectEmail(email);
	}
	public String updateValidatacodeAndOutdate(String validatacode,Timestamp outdate,String email) {
		return memberDao.updateValidatacodeAndOutdate(validatacode, outdate, email);
	}
	public String updatepwdbyId(int member_id,String passwords) {
		return memberDao.updatepwdbyId(member_id, passwords);
	}
	
}
