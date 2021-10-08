package tw.paintingparty.model;

import java.io.Serializable;

import javax.persistence.Column;
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
@Table(name = "painter_tag")
@Component("painter_tag") 
public class PainterTag implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer painter_tag_id;
	
	@Transient
//	@Column
	private Integer tag_id;
	
	@Transient
//	@Column
	private Integer member_id;
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="tag_id") 
	private Tag tagbean;
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name ="member_id") 
	private Member memberbean;

	
	
	
	
	public Integer getTag_id() {
		return tag_id;
	}

	public void setTag_id(Integer tag_id) {
		this.tag_id = tag_id;
	}

	public Integer getMember_id() {
		return member_id;
	}

	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
	}

	public Integer getPainter_tag_id() {
		return painter_tag_id;
	}

	public void setPainter_tag_id(Integer painter_tag_id) {
		this.painter_tag_id = painter_tag_id;
	}

	public Tag getTagbean() {
		return tagbean;
	}

	public void setTagbean(Tag tagbean) {
		this.tagbean = tagbean;
	}

	public Member getMemberbean() {
		return memberbean;
	}

	public void setMemberbean(Member memberbean) {
		this.memberbean = memberbean;
	}
	
	
	
}
