package tw.paintingparty.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "system_notice")
@Component("system_notice") 
public class SystemNotice implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer system_notice_id;
	
	private String notice_title;
	
	private String notice_content;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date notice_date;

	private String notice_sort;

	
	public Integer getSystem_notice_id() {
		return system_notice_id;
	}

	public void setSystem_notice_id(Integer system_notice_id) {
		this.system_notice_id = system_notice_id;
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

	public String getNotice_sort() {
		return notice_sort;
	}

	public void setNotice_sort(String notice_sort) {
		this.notice_sort = notice_sort;
	}
	
	
	
	
	
	
}


