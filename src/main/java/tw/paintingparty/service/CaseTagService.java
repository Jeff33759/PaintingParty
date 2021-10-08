package tw.paintingparty.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.paintingparty.model.CaseTag;
import tw.paintingparty.model.CaseTagDAO;

@Service
@Transactional
public class CaseTagService {
	
	@Autowired
	private CaseTagDAO ctDAO;
	
	public CaseTag insertTagWithCaseId(CaseTag bean) {
		return ctDAO.insertTagWithCaseId(bean);
	}
	
}
