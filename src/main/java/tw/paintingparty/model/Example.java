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
@Table(name = "example")
@Component("example") 
public class Example implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer example_id;
	
	@Transient
	private Integer case_id;
	

	private String example_name; 
	

	private String example_path; 
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="case_id") 
	private Cases casesbean;

	
	
	

	public Integer getCase_id() {
		return case_id;
	}


	public void setCase_id(Integer case_id) {
		this.case_id = case_id;
	}


	public Integer getExample_id() {
		return example_id;
	}


	public void setExample_id(Integer example_id) {
		this.example_id = example_id;
	}


	public String getExample_name() {
		return example_name;
	}


	public void setExample_name(String example_name) {
		this.example_name = example_name;
	}


	public String getExample_path() {
		return example_path;
	}


	public void setExample_path(String example_path) {
		this.example_path = example_path;
	}


	public Cases getCasesbean() {
		return casesbean;
	}


	public void setCasesbean(Cases casesbean) {
		this.casesbean = casesbean;
	}




	
	
}

