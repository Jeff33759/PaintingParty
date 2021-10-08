package tw.paintingparty.painterlist.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tw.paintingparty.model.Member;
import tw.paintingparty.painterlist.model.PainterListPageDAO;

@Service
@Transactional
public class PainterListPageService {
	
	@Autowired
	private PainterListPageDAO plpDAO;
	
	
	
	public Long Pagetotal() {
		return plpDAO.Pagetotal();
	}
	
	
	public List<Member> QueryPage(int pageNo){
		return plpDAO.QueryPage(pageNo);
	}


	
}