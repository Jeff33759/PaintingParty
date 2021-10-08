package tw.paintingparty.casemanage.model;

import java.io.Serializable;

public class PayInfoBean implements Serializable{

	
	private static final long serialVersionUID = 1L;

	private Integer member_id;
	
	private String member_name;
	
	private String profile_pic;
	
	private String profile_pic_path;
	
	private String bank_account;
	
	
	public PayInfoBean() {
		super();
	}

	public PayInfoBean(Integer member_id, String member_name, String profile_pic, String profile_pic_path,
			String bank_account) {
		super();
		this.member_id = member_id;
		this.member_name = member_name;
		this.profile_pic = profile_pic;
		this.profile_pic_path = profile_pic_path;
		this.bank_account = bank_account;
	}

	public Integer getMember_id() {
		return member_id;
	}

	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
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

	public String getBank_account() {
		return bank_account;
	}

	public void setBank_account(String bank_account) {
		this.bank_account = bank_account;
	}
	
	
	
}
