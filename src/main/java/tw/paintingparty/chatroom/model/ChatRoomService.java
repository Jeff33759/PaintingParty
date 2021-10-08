package tw.paintingparty.chatroom.model;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.paintingparty.casemanage.model.CaseManageDAO;
import tw.paintingparty.model.ChatHistory;
import tw.paintingparty.model.Member;

@Service
@Transactional
public class ChatRoomService {
	
	@Autowired
    private ChatRoomDAO crDao;
	
	
	public List<MyChatConnBean> selectAllMyConn( Integer myid ) { //我連接了誰
		
		return crDao.selectAllMyConn(myid);
	
	}
	
	public String selectMyName( Integer myid ) { //我的名字，其實存在SESSION最省事，之後再改，不用再像這樣為了得到自己名字多寫一隻DAO
		
		
		return crDao.selectMyName(myid);
		
	}
	
	public List<MeAndWhoChatHistoryBean> selectChatHistory( Integer myid , Integer toid ) { //查我與XX之間的歷史訊息
		
		
		return crDao.selectChatHistory(myid, toid);
		
	}
	

}
