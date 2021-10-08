package tw.paintingparty.casemanage.model;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CaseBackStageBean implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer bmember_id;
	
	private String bmember_name;
	
	private String profile_pic;
	
	private Integer case_id;
	
	private String case_title;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date upload_date;
	
	private Integer price_min;
	
	private Integer price_max;
	
	private String case_tag;
	
	private Integer price_expected;
	
	private Integer case_time;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date apply_date;
	
	private String apply_status;
	
	

	public Integer getBmember_id() {
		return bmember_id;
	}

	public void setBmember_id(Integer bmember_id) {
		this.bmember_id = bmember_id;
	}

	public String getBmember_name() {
		return bmember_name;
	}

	public void setBmember_name(String bmember_name) {
		this.bmember_name = bmember_name;
	}

	public String getProfile_pic() {
		return profile_pic;
	}

	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
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

	public String getCase_tag() {
		return case_tag;
	}

	public void setCase_tag(String case_tag) {
		this.case_tag = case_tag;
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
	

	
	
}
