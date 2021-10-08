package tw.paintingparty.chatroom.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MyChatConnBean implements Serializable{


	private static final long serialVersionUID = 1L;
	
	private Integer member_id_b;

	private String member_name_b;
	
	private String member_pic_b;

	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date conn_date;
	
	
	
	public MyChatConnBean() {
		super();

	}
	
	
	



	public MyChatConnBean(Integer member_id_b, String member_name_b, String member_pic_b, Date conn_date) {
		super();
		this.member_id_b = member_id_b;
		this.member_name_b = member_name_b;
		this.member_pic_b = member_pic_b;
		this.conn_date = conn_date;
	}






	public Integer getMember_id_b() {
		return member_id_b;
	}



	public void setMember_id_b(Integer member_id_b) {
		this.member_id_b = member_id_b;
	}



	public String getMember_name_b() {
		return member_name_b;
	}



	public void setMember_name_b(String member_name_b) {
		this.member_name_b = member_name_b;
	}



	public String getMember_pic_b() {
		return member_pic_b;
	}



	public void setMember_pic_b(String member_pic_b) {
		this.member_pic_b = member_pic_b;
	}



	public Date getConn_date() {
		return conn_date;
	}



	public void setConn_date(Date conn_date) {
		this.conn_date = conn_date;
	}
	


	
	
	
	
	

}
