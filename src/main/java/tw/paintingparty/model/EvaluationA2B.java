package tw.paintingparty.model;

import java.io.Serializable;

import javax.persistence.*;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "evaluation_a2b")
@Component("evaluation_a2b") 
public class EvaluationA2B implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer evaluation_id;
	
	@Transient
	private Integer case_id;
	
	@Transient
	private Integer member_id_s; 
	
	@Transient
	private Integer member_id_r; 
	
	private String evaluation_star;
	
	private String evaluation_content;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="case_id") 
	private Cases casesbean;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="member_id_s")  //發案者資訊
	private Member memberbean_s;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="member_id_r") //接案者資訊
	private Member memberbean_r;

	
	
	
	
	public Integer getCase_id() {
		return case_id;
	}

	public void setCase_id(Integer case_id) {
		this.case_id = case_id;
	}

	public Integer getMember_id_s() {
		return member_id_s;
	}

	public void setMember_id_s(Integer member_id_s) {
		this.member_id_s = member_id_s;
	}

	public Integer getMember_id_r() {
		return member_id_r;
	}

	public void setMember_id_r(Integer member_id_r) {
		this.member_id_r = member_id_r;
	}

	public Integer getEvaluation_id() {
		return evaluation_id;
	}

	public void setEvaluation_id(Integer evaluation_id) {
		this.evaluation_id = evaluation_id;
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


	public Cases getCasesbean() {
		return casesbean;
	}

	public void setCasesbean(Cases casesbean) {
		this.casesbean = casesbean;
	}

	public Member getMemberbean_s() {
		return memberbean_s;
	}

	public void setMemberbean_s(Member memberbean_s) {
		this.memberbean_s = memberbean_s;
	}

	public Member getMemberbean_r() {
		return memberbean_r;
	}

	public void setMemberbean_r(Member memberbean_r) {
		this.memberbean_r = memberbean_r;
	}
	
	
	
}
