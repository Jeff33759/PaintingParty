package tw.paintingparty.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "chat_history")
@Component("chat_history") 
public class ChatHistory implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer chat_history_id;

	@Transient
	private Integer member_id_s;
	
	@Transient
	private Integer member_id_r;
	
	private String message_content;
	
	private String message_time; //因為要確切時間，所以用字串，沒用SQL的datetime
	
	
	@ManyToOne(fetch = FetchType.EAGER) //傳訊人ID
	@JoinColumn(name ="member_id_s") 
	private Member smemberbean;
	
	@ManyToOne(fetch = FetchType.EAGER) //收訊人ID
	@JoinColumn(name ="member_id_r") 
	private Member rmemberbean;

	
	
	
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

	public Member getSmemberbean() {
		return smemberbean;
	}

	public void setSmemberbean(Member smemberbean) {
		this.smemberbean = smemberbean;
	}

	public Member getRmemberbean() {
		return rmemberbean;
	}

	public void setRmemberbean(Member rmemberbean) {
		this.rmemberbean = rmemberbean;
	}
	
	
	
	
	
	

	
}
