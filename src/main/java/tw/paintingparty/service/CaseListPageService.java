package tw.paintingparty.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.paintingparty.model.CaseListPageDAO;
import tw.paintingparty.model.Cases;

@Service
@Transactional
public class CaseListPageService {
	
	@Autowired
	private CaseListPageDAO clpDAO;
	
	public Long TotalPage() {
		return clpDAO.TotalPage();
	}
	
	public List<Cases> QueryByPage(int pageNo){
		return clpDAO.QueryByPage(pageNo);
	}
	
	public List<Cases> QueryByTags(int tags){
		return clpDAO.QueryByTags(tags);
	}
	
//	public List<Cases> QueryByTags(Map<String,Object>pram){
//		return clpDAO.QueryByTags(pram);
//		
//	}
 
}
