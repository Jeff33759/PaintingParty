package tw.paintingparty.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.paintingparty.model.Tag;
import tw.paintingparty.model.TagDao;

@Service
@Transactional
public class TagService {
	@Autowired
	private TagDao tagDao;
	public Tag returnTagService(int tagId) {
		return tagDao.returnTag(tagId);
	}
}
