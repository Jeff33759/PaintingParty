package tw.paintingparty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.paintingparty.model.OrderNotice;
import tw.paintingparty.model.SystemNotice;
import tw.paintingparty.model.SystemNoticeDAO;


@Service
@Transactional
public class SystemNoticeService {

	@Autowired
    private SystemNoticeDAO snDAO;
	
	public List<SystemNotice> systemAll() {
		return snDAO.systemAll();
	}
	
	
	public List<OrderNotice> orderAll() {
		return snDAO.orderAll();
	}

	
}
