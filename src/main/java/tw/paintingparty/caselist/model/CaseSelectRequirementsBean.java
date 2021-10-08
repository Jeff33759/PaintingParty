package tw.paintingparty.caselist.model;

public class CaseSelectRequirementsBean {
	
	private String case_tag ;
	
	private Integer price_min;
	
	private Integer price_max;
	
	private String sort;
	
	private Integer pages;

	public Integer getPages() {
		return pages;
	}

	public void setPages(Integer pages) {
		this.pages = pages;
	}

	public String getCase_tag() {
		return case_tag;
	}

	public void setCase_tag(String case_tag) {
		this.case_tag = case_tag;
	}

	public Integer getPrice_min() {
		return price_min;
	}

	public void setPrice_min(Integer price_min) {
		this.price_min = price_min;
	}

	public Integer getPrice_max() {
		return price_max;
	}

	public void setPrice_max(Integer price_max) {
		this.price_max = price_max;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}
	
	
	
}
