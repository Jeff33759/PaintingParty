package tw.paintingparty.memberpage.model;

import java.io.Serializable;

public class MemberProfileBean implements Serializable{

	private static final long serialVersionUID = 1L;

	
	private String member_name;
	
	private String profile_pic_path;
	
	private String schedule;
	
	private String profile_content;
	
	private String tag_content;

	
	
	public MemberProfileBean() {
		super();
	}

	public MemberProfileBean(String member_name, String profile_pic_path, String schedule, String profile_content,
			String tag_content) {
		super();
		this.member_name = member_name;
		this.profile_pic_path = profile_pic_path;
		this.schedule = schedule;
		this.profile_content =  profile_content;
		this.tag_content = tag_content;
	}
	
	
	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getProfile_pic_path() {
		return profile_pic_path;
	}

	public void setProfile_pic_path(String profile_pic_path) {
		this.profile_pic_path = profile_pic_path;
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

	public String getTag_content() {
		return tag_content;
	}

	public void setTag_content(String tag_content) {
		this.tag_content = tag_content;
	}
	
}