package tw.paintingparty.casemanage.model;

import java.io.Serializable;

public class FileContentReceiveBeanB implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer order_id;
	
	private Integer bmember_id;

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	public Integer getBmember_id() {
		return bmember_id;
	}

	public void setBmember_id(Integer bmember_id) {
		this.bmember_id = bmember_id;
	}
	
	
	
	
}
