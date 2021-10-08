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
@Table(name = "case_apply")
@Component("case_apply") 
public class CaseApply implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer apply_id;
	
	@Transient 
	private Integer member_id;
	
	@Transient 
	private Integer case_id;
	
	private Integer price_expected;

	private Integer case_time;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date apply_date;
	
	private String apply_status;
	
	


	@ManyToOne(fetch = FetchType.EAGER) 
	@JoinColumn(name ="member_id") //應徵人ID
	private Member applymemberbean; 
	
	
	@ManyToOne(fetch = FetchType.EAGER) 
	@JoinColumn(name ="case_id") //應徵的案件
	private Cases applycasesbean;

	
	
	public Integer getMember_id() {
		return member_id;
	}
	
	
	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
	}
	
	
	public Integer getCase_id() {
		return case_id;
	}
	
	
	public void setCase_id(Integer case_id) {
		this.case_id = case_id;
	}

	
	public Integer getApply_id() {
		return apply_id;
	}


	public void setApply_id(Integer apply_id) {
		this.apply_id = apply_id;
	}


	public Integer getPrice_expected() {
		return price_expected;
	}


	public void setPrice_expected(Integer price_expected) {
		this.price_expected = price_expected;
	}


	public Integer getCase_time() {
		return case_time;
	}


	public void setCase_time(Integer case_time) {
		this.case_time = case_time;
	}


	public Date getApply_date() {
		return apply_date;
	}


	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}


	public String getApply_status() {
		return apply_status;
	}


	public void setApply_status(String apply_status) {
		this.apply_status = apply_status;
	}


	public Member getApplymemberbean() {
		return applymemberbean;
	}


	public void setApplymemberbean(Member applymemberbean) {
		this.applymemberbean = applymemberbean;
	}


	public Cases getApplycasesbean() {
		return applycasesbean;
	}


	public void setApplycasesbean(Cases applycasesbean) {
		this.applycasesbean = applycasesbean;
	}


	
	
	
	
	
	
	
	
	
}
