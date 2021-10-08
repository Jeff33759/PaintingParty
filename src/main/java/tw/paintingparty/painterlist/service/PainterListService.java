package tw.paintingparty.painterlist.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.paintingparty.model.Member;
import tw.paintingparty.painterlist.model.PainterListDAO;

@Service
@Transactional
public class PainterListService {
	
	@Autowired
	private PainterListDAO plDAO;
	
	@Autowired
	private PainterListDAO painterListDAO;
	
	public Member getMember(int id) {
		return plDAO.getMember(id);
	}
	
	public List<Member>SelectAllMember() {
		return plDAO.SelectAllMember();
	}
	
	public Member selectId(int memId) {
		
		Member oneMem = plDAO.selectId(memId);
		return oneMem;
	}

	public List<Member> search(String select1 , String select2){
		return painterListDAO.search(select1, select2);
	}


	

				
	
}
