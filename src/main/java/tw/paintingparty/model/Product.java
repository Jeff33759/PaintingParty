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
@Table(name = "product")
@Component("product") 
public class Product implements Serializable{

	private static final long serialVersionUID = 1L;

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer product_id;
	
	@Transient 
	private Integer order_id;
	
	private String product_name;
	
	private String product_path;
	
	private String painter_message;
	
	
	@ManyToOne(fetch = FetchType.EAGER) 
	@JoinColumn(name ="order_id") //本訂單的案件
	private Orders ordersbean;

	
	
	
	
	
	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	public Orders getOrdersbean() {
		return ordersbean;
	}

	public void setOrdersbean(Orders ordersbean) {
		this.ordersbean = ordersbean;
	}

	public Integer getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
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
