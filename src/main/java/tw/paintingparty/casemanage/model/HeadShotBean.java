package tw.paintingparty.casemanage.model;

import java.io.Serializable;

public class HeadShotBean implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String profile_pic;
	
	private String profile_pic_path;

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
	
	

}
