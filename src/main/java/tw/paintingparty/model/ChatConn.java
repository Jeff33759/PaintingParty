package tw.paintingparty.model;

import java.io.Serializable;
import java.util.Date;

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

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "chat_conn")
@Component("chat_conn") 
public class ChatConn implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer chat_conn_id;
	
	@Transient
	private Integer member_id_a;

	@Transient
	private Integer member_id_b;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date conn_date;
	
	
	@ManyToOne(fetch = FetchType.EAGER) //連接人A_ID(自己)
	@JoinColumn(name ="member_id_a") 
	private Member amemberbean;
	
	@ManyToOne(fetch = FetchType.EAGER) //連接人B_ID
	@JoinColumn(name ="member_id_b") 
	private Member bmemberbean;

	
	
	public Integer getChat_conn_id() {
		return chat_conn_id;
	}

	public void setChat_conn_id(Integer chat_conn_id) {
		this.chat_conn_id = chat_conn_id;
	}

	public Integer getMember_id_a() {
		return member_id_a;
	}

	public void setMember_id_a(Integer member_id_a) {
		this.member_id_a = member_id_a;
	}

	public Integer getMember_id_b() {
		return member_id_b;
	}

	public void setMember_id_b(Integer member_id_b) {
		this.member_id_b = member_id_b;
	}

	public Date getConn_date() {
		return conn_date;
	}

	public void setConn_date(Date conn_date) {
		this.conn_date = conn_date;
	}

	public Member getAmemberbean() {
		return amemberbean;
	}

	public void setAmemberbean(Member amemberbean) {
		this.amemberbean = amemberbean;
	}

	public Member getBmemberbean() {
		return bmemberbean;
	}

	public void setBmemberbean(Member bmemberbean) {
		this.bmemberbean = bmemberbean;
	}
	
	
	

}
