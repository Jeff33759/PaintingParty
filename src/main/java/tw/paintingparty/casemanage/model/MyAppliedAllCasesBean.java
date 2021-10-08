package tw.paintingparty.casemanage.model;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MyAppliedAllCasesBean implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Integer case_id;

	private String case_title;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date apply_date;
	
	private Integer price_expected;

	private Integer case_time;
	
	private String amember_name;//發案人名稱
	
	private Integer amember_id;//發案人名稱
	
	private Integer final_page;
	
	
	
	public MyAppliedAllCasesBean() {
		super();
		
	}




	public MyAppliedAllCasesBean(Integer case_id, String case_title, Date apply_date, Integer price_expected,
			Integer case_time, String amember_name, Integer amember_id) {
		super();
		this.case_id = case_id;
		this.case_title = case_title;
		this.apply_date = apply_date;
		this.price_expected = price_expected;
		this.case_time = case_time;
		this.amember_name = amember_name;
		this.amember_id = amember_id;
	}




	public Integer getFinal_page() {
		return final_page;
	}




	public void setFinal_page(Integer final_page) {
		this.final_page = final_page;
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




	public Date getApply_date() {
		return apply_date;
	}




	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
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




	public String getAmember_name() {
		return amember_name;
	}




	public void setAmember_name(String amember_name) {
		this.amember_name = amember_name;
	}




	public Integer getAmember_id() {
		return amember_id;
	}




	public void setAmember_id(Integer amember_id) {
		this.amember_id = amember_id;
	}
	
	
	

	




	
	

}
