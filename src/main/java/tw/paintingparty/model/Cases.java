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
@Table(name = "cases")
@Component("cases") 
public class Cases implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer case_id;
	
	@Transient 
	private Integer member_id;
	
	private String case_title;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date upload_date;
	
	private Integer price_min;
	
	private Integer price_max;
	
	private String publics;
	
	private String case_tag;
	
	private String demand;
	
	private String case_status;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="member_id") //發布人ID
	private Member postedmemberbean;

	public Integer getMember_id() {
		return member_id;
	}
	
	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
	}

	public Member getPostedmemberbean() {
		return postedmemberbean;
	}


	public void setPostedmemberbean(Member postedmemberbean) {
		this.postedmemberbean = postedmemberbean;
	}


	public Integer getCase_id() {
		return case_id;
	}

	public void setCase_id(Integer case_id) {
		this.case_id = case_id;
	}


	public String getCase_title() {
		return case_title;
	}

	public void setCase_title(String case_title) {
		this.case_title = case_title;
	}

	public Date getUpload_date() {
		return upload_date;
	}

	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}

	public Integer getPrice_min() {
		return price_min;
	}

	public void setPrice_min(Integer price_min) {
		this.price_min = price_min;
	}

	public Integer getPrice_max() {
		return price_max;
	}

	public void setPrice_max(Integer price_max) {
		this.price_max = price_max;
	}

	public String getPublics() {
		return publics;
	}

	public void setPublics(String publics) {
		this.publics = publics;
	}

	public String getCase_tag() {
		return case_tag;
	}

	public void setCase_tag(String case_tag) {
		this.case_tag = case_tag;
	}

	public String getDemand() {
		return demand;
	}

	public void setDemand(String demand) {
		this.demand = demand;
	}

	public String getCase_status() {
		return case_status;
	}

	public void setCase_status(String case_status) {
		this.case_status = case_status;
	}
	
	
	
	
	
}
