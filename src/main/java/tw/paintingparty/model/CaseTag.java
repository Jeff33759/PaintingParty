package tw.paintingparty.model;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "case_tag")
@Component("case_tag") 
public class CaseTag implements Serializable{


	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer case_tad_id;
	
	@Transient
	private Integer tag_id;
	
	@Transient
	private Integer case_id;
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="tag_id") 
	private Tag tabbean;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="case_id") 
	private Cases casesbean; 
	
	

	public Integer getTag_id() {
		return tag_id;
	}

	public void setTag_id(Integer tag_id) {
		this.tag_id = tag_id;
	}

	public Integer getCase_id() {
		return case_id;
	}

	public void setCase_id(Integer case_id) {
		this.case_id = case_id;
	}

	public Integer getCase_tad_id() {
		return case_tad_id;
	}

	public void setCase_tad_id(Integer case_tad_id) {
		this.case_tad_id = case_tad_id;
	}

	public Tag getTabbean() {
		return tabbean;
	}

	public void setTabbean(Tag tabbean) {
		this.tabbean = tabbean;
	}

	public Cases getCasesbean() {
		return casesbean;
	}

	public void setCasesbean(Cases casesbean) {
		this.casesbean = casesbean;
	}



	
	
	
	
	
	
}
