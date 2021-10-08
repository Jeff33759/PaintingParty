package tw.paintingparty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.paintingparty.model.Member;
import tw.paintingparty.model.PersonContentDao;
import tw.paintingparty.model.Tag;

@Service(value="personContentService")
@Transactional
public class PersonContentService {

	@Autowired
	private PersonContentDao personContentDao;
	
	public Member selectOne(int memId) {
		
		Member oneMem = personContentDao.selectOne(memId);
		return oneMem;
	}
	
	public String updateOneProfileContent(int oneMemId, String profile_content) {
		
		String Result = personContentDao.updateOneProfileContent(oneMemId, profile_content);
		return Result;
	}
	
	public String updateOneProfilePic(int oneMemId, String profile_pic) {
		
		String Result = personContentDao.updateOneProfilePic(oneMemId, profile_pic);
		return Result;
	}
	
	public String updateOneProfilePicPath(int oneMemId, String headShotImageDBPath) {
		
		String Result = personContentDao.updateOneProfilePicPath(oneMemId, headShotImageDBPath);
		return Result;
	}
	
	public String updateOneMemberStatus(int oneMemId) {
		
		String Result = personContentDao.updateOneMemberStatus(oneMemId);
		return Result;
	}
	
	public Tag tagSelectOne(int tagId) {
		
		Tag oneTag = personContentDao.tagSelectOne(tagId);
		return oneTag;
	}
	
	public String updateTagPersonal(int oneMemId, String tagPersonal) {
		
		String Result = personContentDao.updateTagPersonal(oneMemId, tagPersonal);
		return Result;
	}
	
	public String deletePainterTag(int oneMemId) {
		
		String Result = personContentDao.deletePainterTag(oneMemId);
		return Result;
	}
	
	public String insertPainterTag(int oneMemId, int tag) {
		
		String Result = personContentDao.insertPainterTag(oneMemId, tag);
		return Result;
	}

}
