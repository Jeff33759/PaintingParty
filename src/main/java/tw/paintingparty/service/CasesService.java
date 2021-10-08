package tw.paintingparty.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.paintingparty.model.Cases;
import tw.paintingparty.model.CasesDao;

@Service
@Transactional
public class CasesService {
	@Autowired
	private CasesDao casesDao;
	public Cases returnCaseService(int caseId) {
		return casesDao.returnCase(caseId);
		
	}
	public List<Cases> selectCaseIdByMemberId(int memberId){
		return casesDao.selectCaseIdByMemberId(memberId);
	}
	public Integer countBymemberIdService(int memberId) {
		return casesDao.countByMemberId(memberId);
	}
}
