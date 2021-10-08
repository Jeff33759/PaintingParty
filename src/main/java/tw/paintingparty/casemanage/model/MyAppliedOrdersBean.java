package tw.paintingparty.casemanage.model;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MyAppliedOrdersBean implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer order_id;

	private Integer case_id;
	
	private String case_title;
	
	private String amember_name;
	
	private String order_status;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date order_date;

	private Integer price;

	private Integer amember_id;
	
	private String evaluation_status_b2a;
	
	private Integer final_page;
	
	
	public MyAppliedOrdersBean() {
		super();

	}


	public MyAppliedOrdersBean(Integer order_id, Integer case_id, String case_title, String amember_name,
			String order_status, Date order_date, Integer price, Integer amember_id, String evaluation_status_b2a) {
		super();
		this.order_id = order_id;
		this.case_id = case_id;
		this.case_title = case_title;
		this.amember_name = amember_name;
		this.order_status = order_status;
		this.order_date = order_date;
		this.price = price;
		this.amember_id = amember_id;
		this.evaluation_status_b2a = evaluation_status_b2a;
	}

	
	

	public Integer getFinal_page() {
		return final_page;
	}


	public void setFinal_page(Integer final_page) {
		this.final_page = final_page;
	}


	public Integer getOrder_id() {
		return order_id;
	}


	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
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


	public String getAmember_name() {
		return amember_name;
	}


	public void setAmember_name(String amember_name) {
		this.amember_name = amember_name;
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


	public Integer getAmember_id() {
		return amember_id;
	}


	public void setAmember_id(Integer amember_id) {
		this.amember_id = amember_id;
	}


	public String getEvaluation_status_b2a() {
		return evaluation_status_b2a;
	}


	public void setEvaluation_status_b2a(String evaluation_status_b2a) {
		this.evaluation_status_b2a = evaluation_status_b2a;
	}



	
	
	
	
	
	
}
