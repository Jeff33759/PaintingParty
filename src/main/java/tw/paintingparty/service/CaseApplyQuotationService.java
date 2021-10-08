package tw.paintingparty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.paintingparty.model.CaseApply;
import tw.paintingparty.model.CaseApplyQuotationDAO;

@Service
@Transactional
public class CaseApplyQuotationService {
	
	@Autowired
	private CaseApplyQuotationDAO caqDAO;
	
	public CaseApply addApply(CaseApply bean) {
		return caqDAO.addApply(bean);
		
	}
	
}
