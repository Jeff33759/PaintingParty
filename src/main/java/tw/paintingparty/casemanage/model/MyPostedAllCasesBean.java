package tw.paintingparty.casemanage.model;

import java.io.Serializable;
import java.util.Date;


import com.fasterxml.jackson.annotation.JsonFormat;

public class MyPostedAllCasesBean implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Integer case_id;
	
	private String case_title;

	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date upload_date;

	private Integer price_min;
	
	private Integer price_max;

	private String case_status;
	
	private Integer final_page;
	
	
	public MyPostedAllCasesBean() {
		super();
	}
	

	
	
	public MyPostedAllCasesBean(Integer case_id, String case_title, Date upload_date, Integer price_min,
			Integer price_max, String case_status) {
		super();
		this.case_id = case_id;
		this.case_title = case_title;
		this.upload_date = upload_date;
		this.price_min = price_min;
		this.price_max = price_max;
		this.case_status = case_status;
	}





	




	public Integer getFinal_page() {
		return final_page;
	}




	public void setFinal_page(Integer final_page) {
		this.final_page = final_page;
	}




	public Date getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}
	public String getCase_status() {
		return case_status;
	}
	public void setCase_status(String case_status) {
		this.case_status = case_status;
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
	
	

	
	
	
}
