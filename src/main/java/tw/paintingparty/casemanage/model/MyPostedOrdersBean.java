package tw.paintingparty.casemanage.model;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MyPostedOrdersBean implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Integer order_id;
	
	private Integer case_id;
	
	private String case_title;

	private String bmember_name;

	private String order_status;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date order_date;

	private Integer price;
	
	private String evaluation_status_a2b;

	private Integer bmember_id;
	
	private Integer final_page;
	
	public MyPostedOrdersBean() {
		super();
	}

	
	public MyPostedOrdersBean(Integer order_id, Integer case_id, String case_title, String bmember_name,
			String order_status, Date order_date, Integer price, String evaluation_status_a2b, Integer bmember_id) {
		super();
		this.order_id = order_id;
		this.case_id = case_id;
		this.case_title = case_title;
		this.bmember_name = bmember_name;
		this.order_status = order_status;
		this.order_date = order_date;
		this.price = price;
		this.evaluation_status_a2b = evaluation_status_a2b;
		this.bmember_id = bmember_id;
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

	public String getBmember_name() {
		return bmember_name;
	}

	public void setBmember_name(String bmember_name) {
		this.bmember_name = bmember_name;
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

	public Integer getBmember_id() {
		return bmember_id;
	}

	public void setBmember_id(Integer bmember_id) {
		this.bmember_id = bmember_id;
	}

	

}
