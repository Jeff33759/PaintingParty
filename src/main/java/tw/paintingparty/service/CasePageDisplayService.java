package tw.paintingparty.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.paintingparty.model.CaseApply;
import tw.paintingparty.model.CasePageDisplayDAO;
import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Example;
import tw.paintingparty.model.Member;

@Service
@Transactional
public class CasePageDisplayService {
	
	@Autowired
	private CasePageDisplayDAO cpdDAO;
	
	public Cases getCases(int id) {
		return cpdDAO.getCases(id);
	}
	
	public List<Cases> findAll(){
		return cpdDAO.findAll();
	}
	
	public Cases getCasesById(int id) {
		return cpdDAO.getCasesById(id);
	}
	
	public Member getMemberByCaseId(int caseId) {
		return cpdDAO.getMemberByCaseId(caseId);
	}
	
	public Example getExampleByCaseId(int caseId){
		return cpdDAO.getExampleByCaseId(caseId);
	}
	
	public CaseApply getCaseApplyByCaseId(int caseId,int memId) {
		return cpdDAO.getCaseApplyByCaseId(caseId,memId);
	}
	
}
