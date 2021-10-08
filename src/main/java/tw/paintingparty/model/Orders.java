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
@Table(name = "orders")
@Component("orders") 
public class Orders implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer order_id;
	
	@Transient 
	private Integer case_id;
	
	@Transient 
	private Integer member_id; //接案者ID
	
	private String order_status;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date order_date;

	private Integer price;

	private String evaluation_status_a2b;
	
	private String evaluation_status_b2a;

	@ManyToOne(fetch = FetchType.EAGER) 
	@JoinColumn(name ="case_id") //本訂單的案件
	private Cases ocasesbean;
	
	
	@ManyToOne(fetch = FetchType.EAGER) 
	@JoinColumn(name ="member_id") //接案者資訊(乙方為b表示)
	private Member bmemberbean;

	
	

	
	public Integer getCase_id() {
		return case_id;
	}


	public void setCase_id(Integer case_id) {
		this.case_id = case_id;
	}


	public Integer getMember_id() {
		return member_id;
	}


	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
	}


	public Integer getOrder_id() {
		return order_id;
	}


	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}


	public String getOrder_status() {
		return order_status;
	}


	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}


	public Date getOrder_date() {
		return order_date;
	}


	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}


	public Integer getPrice() {
		return price;
	}


	public void setPrice(Integer price) {
		this.price = price;
	}


	public String getEvaluation_status_a2b() {
		return evaluation_status_a2b;
	}


	public void setEvaluation_status_a2b(String evaluation_status_a2b) {
		this.evaluation_status_a2b = evaluation_status_a2b;
	}


	public String getEvaluation_status_b2a() {
		return evaluation_status_b2a;
	}


	public void setEvaluation_status_b2a(String evaluation_status_b2a) {
		this.evaluation_status_b2a = evaluation_status_b2a;
	}


	public Cases getOcasesbean() {
		return ocasesbean;
	}


	public void setOcasesbean(Cases ocasesbean) {
		this.ocasesbean = ocasesbean;
	}


	public Member getBmemberbean() {
		return bmemberbean;
	}


	public void setBmemberbean(Member bmemberbean) {
		this.bmemberbean = bmemberbean;
	}



	


	
	
	
	
}
