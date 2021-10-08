package tw.paintingparty.model;

import java.io.Serializable;



import java.util.Date;

import javax.persistence.*;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "member")
@Component("member") 
public class Member implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer member_id;

	private String member_account;
	
	private String passwords;
	
	private String member_name;
	
	private String profile_pic;
	
	private String profile_pic_path;
	
	private String member_status;
	
	private String email;
	
	private String mobile;
	
	private String bank_account;
	
	private String schedule;
	
	private String profile_content;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date register_date;
	
	private String tag_personal;
	
	private String pixiv;
	
	private String validatacode;

	private Date outdate;

	
	
	public Integer getMember_id() {
		return member_id;
	}

	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
	}

	public String getMember_account() {
		return member_account;
	}

	public void setMember_account(String member_account) {
		this.member_account = member_account;
	}

	public String getPasswords() {
		return passwords;
	}

	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getProfile_pic() {
		return profile_pic;
	}

	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}

	public String getProfile_pic_path() {
		return profile_pic_path;
	}

	public void setProfile_pic_path(String profile_pic_path) {
		this.profile_pic_path = profile_pic_path;
	}

	public String getMember_status() {
		return member_status;
	}

	public void setMember_status(String member_status) {
		this.member_status = member_status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getBank_account() {
		return bank_account;
	}

	public void setBank_account(String bank_account) {
		this.bank_account = bank_account;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getProfile_content() {
		return profile_content;
	}

	public void setProfile_content(String profile_content) {
		this.profile_content = profile_content;
	}

	public Date getRegister_date() {
		return register_date;
	}

	public void setRegister_date(Date register_date) {
		this.register_date = register_date;
	}

	public String getTag_personal() {
		return tag_personal;
	}

	public void setTag_personal(String tag_personal) {
		this.tag_personal = tag_personal;
	}

	public String getPixiv() {
		return pixiv;
	}

	public void setPixiv(String pixiv) {
		this.pixiv = pixiv;
	}

	public String getValidatacode() {
		return validatacode;
	}

	public void setValidatacode(String validatacode) {
		this.validatacode = validatacode;
	}

	public Date getOutdate() {
		return outdate;
	}

	public void setOutdate(Date outdate) {
		this.outdate = outdate;
	}
	
	
	
	
	
	
	
}
