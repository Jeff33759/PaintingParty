package tw.paintingparty.chatroom.model;

import java.io.Serializable;

import javax.persistence.Transient;

public class MeAndWhoChatHistoryBean implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer chat_history_id;

	private Integer member_id_s;
	
	private Integer member_id_r;
	
	private String message_content;
	
	private String message_time; //因為要確切時間，所以用字串，沒用SQL的datetime
	
	private String sender_name; //這封訊息的發言人是叫啥名
	

	public Integer getChat_history_id() {
		return chat_history_id;
	}

	public void setChat_history_id(Integer chat_history_id) {
		this.chat_history_id = chat_history_id;
	}

	public Integer getMember_id_s() {
		return member_id_s;
	}

	public void setMember_id_s(Integer member_id_s) {
		this.member_id_s = member_id_s;
	}

	public Integer getMember_id_r() {
		return member_id_r;
	}

	public void setMember_id_r(Integer member_id_r) {
		this.member_id_r = member_id_r;
	}

	public String getMessage_content() {
		return message_content;
	}

	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}

	public String getMessage_time() {
		return message_time;
	}

	public void setMessage_time(String message_time) {
		this.message_time = message_time;
	}

	public String getSender_name() {
		return sender_name;
	}

	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}
	
	
	
	
	

}
