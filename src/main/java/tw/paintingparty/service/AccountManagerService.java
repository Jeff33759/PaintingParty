package tw.paintingparty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.paintingparty.model.AccountManagerDao;
import tw.paintingparty.model.Member;

@Service(value="accountManagerService")
@Transactional
public class AccountManagerService {

	@Autowired
	private AccountManagerDao accountManagerDao;
	
	public Member selectOne(int memId) {
		
		Member oneMem = accountManagerDao.selectOne(memId);
		return oneMem;
	}
	
	public String updateOne(int oneMemId, String oneMemEmail, String oneMenBank_account, String oneMemPixiv) {
		
		String Result = accountManagerDao.UpdateOne(oneMemId, oneMemEmail, oneMenBank_account, oneMemPixiv);

		return Result;
	}
	
}
