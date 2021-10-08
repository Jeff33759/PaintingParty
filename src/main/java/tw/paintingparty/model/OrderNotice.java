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
@Table(name = "order_notice")
@Component("order_notice") 
public class OrderNotice implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer order_notice_id;
	
	@Transient 
	private Integer member_id;
	
	private String notice_title;
	
	private String notice_content;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date notice_date;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="member_id") 
	private Member notifiedmemberbean; //被通知人的資訊
	
	private String notice_sort;

	
	
	
	public Integer getMember_id() {
		return member_id;
	}

	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
	}

	public Integer getOrder_notice_id() {
		return order_notice_id;
	}

	public void setOrder_notice_id(Integer order_notice_id) {
		this.order_notice_id = order_notice_id;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public Date getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}

	public Member getNotifiedmemberbean() {
		return notifiedmemberbean;
	}

	public void setNotifiedmemberbean(Member notifiedmemberbean) {
		this.notifiedmemberbean = notifiedmemberbean;
	}

	public String getNotice_sort() {
		return notice_sort;
	}

	public void setNotice_sort(String notice_sort) {
		this.notice_sort = notice_sort;
	}
	

	
	


	
	
	
	
}
