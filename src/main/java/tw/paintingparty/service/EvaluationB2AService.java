package tw.paintingparty.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.paintingparty.model.EvaluationB2A;
import tw.paintingparty.model.EvaluationB2ADao;

@Service
@Transactional
public class EvaluationB2AService {
	@Autowired
	private EvaluationB2ADao evaluationB2Adao;
	
	public List<EvaluationB2A> selectEvaluationB2ABymember_id_sService(int member_id_s) {
		return evaluationB2Adao.selectEvaluationB2ABymember_id_s(member_id_s);
	}
	public Integer countByMemIdSservice(int member_id_s) {
		return evaluationB2Adao.countByMemIdS(member_id_s);
	}
}
