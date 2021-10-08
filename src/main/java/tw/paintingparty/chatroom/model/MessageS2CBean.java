package tw.paintingparty.chatroom.model;

import java.io.Serializable;

public class MessageS2CBean implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Integer from_user_id;

	private Integer from_user_name;

	private Integer to_user_id;
	
	private Integer to_user_name;

	private String send_message;

	private String current_time;

	private Integer message_status; //0=系統訊息、1=私人訊息
	


	
	
	
	public Integer getMessage_status() {
		return message_status;
	}

	public void setMessage_status(Integer message_status) {
		this.message_status = message_status;
	}

	public Integer getFrom_user_name() {
		return from_user_name;
	}

	public void setFrom_user_name(Integer from_user_name) {
		this.from_user_name = from_user_name;
	}

	public Integer getTo_user_name() {
		return to_user_name;
	}

	public void setTo_user_name(Integer to_user_name) {
		this.to_user_name = to_user_name;
	}

	public String getCurrent_time() {
		return current_time;
	}

	public void setCurrent_time(String current_time) {
		this.current_time = current_time;
	}

	public Integer getFrom_user_id() {
		return from_user_id;
	}

	public void setFrom_user_id(Integer from_user_id) {
		this.from_user_id = from_user_id;
	}



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
