package tw.paintingparty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.paintingparty.model.EvaluationA2B;
import tw.paintingparty.model.EvaluationA2BDao;

@Service
public class EvaluationA2BService {
	@Autowired
	private EvaluationA2BDao evaluationA2BDao;
	
	public List<EvaluationA2B> selectEvaluationA2BBymember_id_rService(int member_id_r) {
		return evaluationA2BDao.selectEvaluationA2BBymember_id_r(member_id_r);
	}
	public Integer countByMemberIdR(int member_id_r) {
		return evaluationA2BDao.countByMemberIdR(member_id_r);
	}
	public String evaluationA2BContentService(int case_id) {
		return evaluationA2BDao.evaluationA2BContent(case_id);
	}
}
