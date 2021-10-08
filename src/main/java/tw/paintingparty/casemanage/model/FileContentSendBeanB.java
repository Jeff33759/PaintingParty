package tw.paintingparty.casemanage.model;

import java.io.Serializable;

public class FileContentSendBeanB implements Serializable{

	private static final long serialVersionUID = 1L;

	private String bmember_name;
	
	private Integer price_stage1;
	
	private Integer price_stage2;
	
	private Integer price_stage3;
	
	private String product_name;
	
	private String product_path;
	
	private String painter_message;

	
	public String getBmember_name() {
		return bmember_name;
	}

	public void setBmember_name(String bmember_name) {
		this.bmember_name = bmember_name;
	}

	public Integer getPrice_stage1() {
		return price_stage1;
	}

	public void setPrice_stage1(Integer price_stage1) {
		this.price_stage1 = price_stage1;
	}

	public Integer getPrice_stage2() {
		return price_stage2;
	}

	public void setPrice_stage2(Integer price_stage2) {
		this.price_stage2 = price_stage2;
	}

	public Integer getPrice_stage3() {
		return price_stage3;
	}

	public void setPrice_stage3(Integer price_stage3) {
		this.price_stage3 = price_stage3;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_path() {
		return product_path;
	}

	public void setProduct_path(String product_path) {
		this.product_path = product_path;
	}

	public String getPainter_message() {
		return painter_message;
	}

	public void setPainter_message(String painter_message) {
		this.painter_message = painter_message;
	}

	
	
	
	
	
	
	
	
}
