package tw.paintingparty.casemanage.model;

import java.io.Serializable;

public class EvaluationA2BBean implements Serializable{
	

	private static final long serialVersionUID = 1L;

	private Integer case_id;

	private Integer order_id;
	
	private Integer member_id_s;
	
	private String evaluation_star;
	
	private String evaluation_content;

	private Integer member_id_r;

	public Integer getCase_id() {
		return case_id;
	}

	public void setCase_id(Integer case_id) {
		this.case_id = case_id;
	}

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	public Integer getMember_id_s() {
		return member_id_s;
	}

	public void setMember_id_s(Integer member_id_s) {
		this.member_id_s = member_id_s;
	}

	public String getEvaluation_star() {
		return evaluation_star;
	}

	public void setEvaluation_star(String evaluation_star) {
		this.evaluation_star = evaluation_star;
	}

	public String getEvaluation_content() {
		return evaluation_content;
	}

	public void setEvaluation_content(String evaluation_content) {
		this.evaluation_content = evaluation_content;
	}

	public Integer getMember_id_r() {
		return member_id_r;
	}

	public void setMember_id_r(Integer member_id_r) {
		this.member_id_r = member_id_r;
	}

	
	

}
