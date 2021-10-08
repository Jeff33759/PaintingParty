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
@Table(name = "invite")
@Component("invite") 
public class Invite implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer invite_id;
	
	@Transient
	private Integer case_id;
	
	@Transient
	private Integer member_id;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="case_id") 
	private Cases casesbean;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="member_id") 
	private Member invitedmemberbean; //被邀請的會員資訊

	
	
	
	
	
	public Integer getCase_id() {
		return case_id;
	}

	public void setCase_id(Integer case_id) {
		this.case_id = case_id;
	}

	public Integer getMember_id() {
		return member_id;
	}

	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
	}

	public Integer getInvite_id() {
		return invite_id;
	}

	public void setInvite_id(Integer invite_id) {
		this.invite_id = invite_id;
	}



	public Cases getCasesbean() {
		return casesbean;
	}

	public void setCasesbean(Cases casesbean) {
		this.casesbean = casesbean;
	}

	public Member getInvitedmemberbean() {
		return invitedmemberbean;
	}

	public void setInvitedmemberbean(Member invitedmemberbean) {
		this.invitedmemberbean = invitedmemberbean;
	}
	
	
	
	
}