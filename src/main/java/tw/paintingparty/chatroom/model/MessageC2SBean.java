package tw.paintingparty.chatroom.model;

import java.io.Serializable;

public class MessageC2SBean implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer to_user_id;
	
	private String send_message;
	


	public Integer getTo_user_id() {
		return to_user_id;
	}

	public void setTo_user_id(Integer to_user_id) {
		this.to_user_id = to_user_id;
	}



	public String getSend_message() {
		return send_message;
	}

	public void setSend_message(String send_message) {
		this.send_message = send_message;
	}

	
	
	
	
}
