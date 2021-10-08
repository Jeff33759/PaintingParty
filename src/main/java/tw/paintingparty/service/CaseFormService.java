package tw.paintingparty.service;



import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import tw.paintingparty.model.CaseFormDao;
import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Example;

@Service
@Transactional
public class CaseFormService {

	@Autowired
	private CaseFormDao cfDAO;
	
	public Cases addForm(Cases bean) {
		
		return cfDAO.addForm(bean);
	}
	
	public Cases getNewCasebyCasesId() {
		  return cfDAO.getNewCasebyCasesId();
		 }
		 
	public Example addExamplePic(Example e1) {
		  return cfDAO.addExamplePic(e1);
		 }

}
	//選擇兩種類型
//	public List<Cases> search(String select1 , String select2) {
//		
//		return cfDAO.search(select1, select2);
//	}
	

