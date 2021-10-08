package tw.paintingparty.model;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.persistence.criteria.CriteriaBuilder.Case;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.paintingparty.caselist.model.CaseSelectRequirementsBean;

@Repository("castListDao")
@Transactional
public class CaseListPageDAO {

	@Autowired
	private SessionFactory factory;

	public Long TotalPage() {

		Session session = factory.getCurrentSession();

		String hql = "select count(c.case_id) from Cases c";

		Query query = session.createQuery(hql);

		Long maxId = (Long) query.uniqueResult();

		return maxId;

	}

	public List<Cases> QueryByPage(int pageNo) {

		Session session = factory.getCurrentSession();

		int nowPage = (pageNo * 8) + 1;

		String hql = "from Cases c where c.case_id >= :nowPage";

		Query<Cases> query = session.createQuery(hql, Cases.class);

		query.setParameter("nowPage", nowPage);

		// 最大筆數setMaxResults(8)
		List<Cases> list = query.setMaxResults(8).getResultList();

		return list;
	}

	public List<Cases> QueryByTags(int tags) {

		Session session = factory.getCurrentSession();

		String sql = "select * from cases c where c.case_id in(select ct.case_id from case_tag ct where ct.tag_id = :tags)";

		Query<Cases> query = session.createSQLQuery(sql).addEntity(Cases.class);

		query.setParameter("tags", tags);

		List<Cases> list = query.setFirstResult(0).setMaxResults(8).getResultList();

		return list;
	}

	// 執行複合&多查詢
//	public List<Cases> QueryByTags(Map<String,Object>pram){
//		
//		Session session = factory.getCurrentSession();
//		
//		String sql = "select * from cases where 1=1 ";
//		
//		if(!pram.isEmpty()) {
//			Iterator<String> it = pram.keySet().iterator();
//			while(it.hasNext()) {
//				String key = it.next();
//				sql = sql + "and case_tag like '%" + key + "%'" ;
//			}
//		}
//		System.out.println(sql);
//		
//		NativeQuery query = session.createSQLQuery(sql).addEntity(Cases.class);
//		
//		List<Cases> list = query.setFirstResult(0).setMaxResults(8).getResultList();
//		
//		return list;
//	}

	public List<Cases> QueryByComplexReq(Cases cases) {

		Session session = factory.getCurrentSession();

		String tagAry = cases.getCase_tag();
		Integer minPrice = cases.getPrice_min();
		Integer maxPrice = cases.getPrice_max();

		String[] ary = tagAry.split(",");

		int size = ary.length;
		int[] arr = new int[size];
		for (int i = 0; i < size; i++) {
			arr[i] = Integer.parseInt(ary[i]);
		}
		int typeTag = arr[0];
		int styleTag = arr[1];
		String hql = "from Cases ";

		String jql = "from Cases c ";

		String hql1 = "from Cases c where c.case_tag like '" + typeTag + ",%'";

		String hql2 = "from Cases c where c.case_tag like '%," + styleTag + "'";

		String hql3 = "from Cases c where c.case_tag like '" + typeTag + ",%'" + " and c.case_tag like " + "'%,"
				+ styleTag + "'";

		if (typeTag == 0 && styleTag > 0) {
			System.out.println(styleTag);

			Query<Cases> query = session.createQuery(hql2, Cases.class);

			List<Cases> list = query.setMaxResults(8).getResultList();
			return list;
		} else if (typeTag > 0 && styleTag == 0) {
			System.out.println(typeTag);
			Query<Cases> query = session.createQuery(hql1, Cases.class);

			List<Cases> list = query.setMaxResults(8).getResultList();
			return list;

		} else if (typeTag != 0 && styleTag != 0) {
			System.out.println(typeTag + styleTag);
			Query<Cases> query = session.createQuery(hql3, Cases.class);

			List<Cases> list = query.setMaxResults(8).getResultList();
			return list;
		} else {
			Query<Cases> query = session.createQuery(hql, Cases.class);
			List<Cases> list = query.setMaxResults(8).getResultList();
			return list;
		}
//		Query<Cases> query = session.createQuery(hql1);
//
//		List<Cases> list = query.setMaxResults(8).getResultList();
//		return list;
//		if(minPrice>0 && maxPrice>0 ) {
//			if(typeTag==0 && styleTag>0) {
//				hql2 = hql2 + " and c.price_min >= " + minPrice + " and c.price_max <= " + maxPrice;
//				Query<Cases> query = session.createQuery(hql2,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//				return list;
//			}else if(typeTag>0 && styleTag==0) {
//				hql1 = hql1 + " and c.price_min >= " + minPrice + " and c.price_max <= " + maxPrice;
//				Query<Cases> query = session.createQuery(hql1,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//			}else if(typeTag!=0 && styleTag!=0) {
//				hql3 = hql3 + " and c.price_min >= " + minPrice + " and c.price_max <= " + maxPrice;
//				Query<Cases> query = session.createQuery(hql3,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//			}else 
//				jql = jql + " c.price_min >= " + minPrice + " and c.price_max <= " + maxPrice;
//				Query<Cases> query = session.createQuery(jql,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//				return list;
//			
//				
//			
//		}else if(minPrice>0 && maxPrice==0 ){
//			
//			if(typeTag==0 && styleTag>0) {
//				hql2 = hql2 + " and c.price_min >= " + minPrice ;
//				Query<Cases> query = session.createQuery(hql2,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//				return list;
//			}else if(typeTag>0 && styleTag==0) {
//				hql1 = hql1 + " and c.price_min >= " + minPrice ;
//				Query<Cases> query = session.createQuery(hql1,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//			}else if(typeTag>0 && styleTag>0) {
//				hql3 = hql3 + " and c.price_min >= " + minPrice ;
//				Query<Cases> query = session.createQuery(hql3,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//			}else 
//				jql = jql + " c.price_min >= " + minPrice;
//				Query<Cases> query = session.createQuery(jql,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//				return list;
//			
//		}else if(minPrice==0 && maxPrice>0 ){
//				
//			if(typeTag==0 && styleTag>0) {
//				hql2 = hql2 + " and c.price_max <= " + maxPrice;
//				Query<Cases> query = session.createQuery(hql2,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//				return list;
//			}else if(typeTag>0 && styleTag==0) {
//				hql1 = hql1 + " and c.price_max <= " + maxPrice;
//				Query<Cases> query = session.createQuery(hql1,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//			}else if(typeTag!=0 && styleTag!=0) {
//				hql3 = hql3 + " and c.price_max <= " + maxPrice;
//				Query<Cases> query = session.createQuery(hql3,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//			}else 
//				jql = jql +" c.price_max <= " + maxPrice;
//				Query<Cases> query = session.createQuery(jql,Cases.class);
//				List<Cases> list = query.setMaxResults(8).getResultList();
//				return list;
//				
//		}else {

//		}

	}


	public List<Cases> QueryByComplexReqDflex(CaseSelectRequirementsBean bean) {

		Session session = factory.getCurrentSession();

		String tagAry = bean.getCase_tag();
		Integer minPrice = bean.getPrice_min();
		Integer maxPrice = bean.getPrice_max();
		String sort = bean.getSort();
		
		String ifItnew = " order by c.upload_date desc,c.case_id desc";
		String ifItOld = " order by c.upload_date asc,c.case_id asc";
		
		String[] ary = tagAry.split(",");

		int size = ary.length;
		int[] arr = new int[size];
		for (int i = 0; i < size; i++) {
			arr[i] = Integer.parseInt(ary[i]);
		}
		int typeTag = arr[0];
		int styleTag = arr[1];
		
		String hql = "from Cases c where c.case_status like '上架'";

		String hql1 = "from Cases c where c.case_status like '上架' and c.case_tag like '" + typeTag + ",%'";

		String hql2 = "from Cases c where c.case_status like '上架' and c.case_tag like '%," + styleTag + "'";

		String hql3 = "from Cases c where c.case_status like '上架' and c.case_tag like '" + typeTag + ",%'" + " and c.case_tag like " + "'%,"
				+ styleTag + "'";

		
		if(minPrice>0 && maxPrice>0) {
			if (typeTag == 0 && styleTag > 0) {
				if(sort.equals("new")) {
					hql2 = hql2 + " and c.price_min >= "+ minPrice + " and c.price_max <= "+maxPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql2, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql2 = hql2 + " and c.price_min >= "+ minPrice + " and c.price_max <= "+maxPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql2, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}else if(typeTag > 0 && styleTag == 0) {
				if(sort.equals("new")) {
					hql1 = hql1 + " and c.price_min >= "+ minPrice + " and c.price_max <= "+maxPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql1, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql1 = hql1 + " and c.price_min >= "+ minPrice + " and c.price_max <= "+maxPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql1, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}else if(typeTag != 0 && styleTag != 0) {
				if(sort.equals("new")) {
					hql3 = hql3 + " and c.price_min >= "+ minPrice + " and c.price_max <= "+maxPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql3, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql3 = hql3 + " and c.price_min >= "+ minPrice + " and c.price_max <= "+maxPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql3, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}else {
				if(sort.equals("new")) {
					hql = hql + " and c.price_min >= "+ minPrice + " and c.price_max <= "+maxPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql = hql + " and c.price_min >= "+ minPrice + " and c.price_max <= "+maxPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}
			
			
			
		}else if(minPrice>0 && maxPrice==0){
			if (typeTag == 0 && styleTag > 0) {
				if(sort.equals("new")) {
					hql2 = hql2 + " and c.price_min >= "+ minPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql2, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql2 = hql2 + " and c.price_min >= "+ minPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql2, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
				
			}else if(typeTag > 0 && styleTag == 0) {
				if(sort.equals("new")) {
					hql1 = hql1 + " and c.price_min >= "+ minPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql1, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql1 = hql1 + " and c.price_min >= "+ minPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql1, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}else if(typeTag != 0 && styleTag != 0) {
				if(sort.equals("new")) {
					hql3 = hql3 + " and c.price_min >= "+ minPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql3, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql3 = hql3 + " and c.price_min >= "+ minPrice  + ifItOld;
					Query<Cases> query = session.createQuery(hql3, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}else {
				if(sort.equals("new")) {
					hql = hql + "and c.price_min >= "+ minPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql = hql + " and c.price_min >= "+ minPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}
			
			
			
		}else if(minPrice==0 && maxPrice>0) {
			
			if (typeTag == 0 && styleTag > 0) {
				if(sort.equals("new")) {
					hql2 = hql2 + " and c.price_max <= " + maxPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql2, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql2 = hql2 + " and c.price_max <= " + maxPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql2, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
				
			}else if(typeTag > 0 && styleTag == 0) {
				if(sort.equals("new")) {
					hql1 = hql1 + " and c.price_max <= " + maxPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql1, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql1 = hql1 + " and c.price_max <= " + maxPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql1, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}else if(typeTag != 0 && styleTag != 0) {
				if(sort.equals("new")) {
					hql3 = hql3 + " and c.price_max <= " + maxPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql3, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql3 = hql3 + " and c.price_max <= " + maxPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql3, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}else {
				if(sort.equals("new")) {
					hql = hql + "and c.price_max <= " + maxPrice + ifItnew;
					Query<Cases> query = session.createQuery(hql, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql = hql + "and c.price_max <= " + maxPrice + ifItOld;
					Query<Cases> query = session.createQuery(hql, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}
			
		
		}else {
			
			if (typeTag == 0 && styleTag > 0) {
				if(sort.equals("new")) {
					
					hql2 = hql2 + ifItnew;
					Query<Cases> query = session.createQuery(hql2, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql2 = hql2 + ifItOld;
					Query<Cases> query = session.createQuery(hql2, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
				
				
			} else if (typeTag > 0 && styleTag == 0) {
				if(sort.equals("new")) {
					
					hql1 = hql1 + ifItnew;
					Query<Cases> query = session.createQuery(hql1, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql1 = hql1 + ifItOld;
					Query<Cases> query = session.createQuery(hql1, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
				
			} else if (typeTag != 0 && styleTag != 0) {
				if(sort.equals("new")) {
					
					hql3 = hql3 +  ifItnew;
					Query<Cases> query = session.createQuery(hql3, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql3 = hql3 + ifItOld;
					Query<Cases> query = session.createQuery(hql3, Cases.class);
					
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			} else {
				if(sort.equals("new")) {
					
					hql = hql +  ifItnew;
					Query<Cases> query = session.createQuery(hql, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}else {
					hql = hql + ifItOld;
					Query<Cases> query = session.createQuery(hql, Cases.class);
//					List<Cases> list = query.setMaxResults(8).getResultList();
					List<Cases> list = query.getResultList();
					return list;
				}
			}
		}
	}
}