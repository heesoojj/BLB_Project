package com.mig.blb.option.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mig.blb.option.model.dao.OptionDao;
import com.mig.blb.option.model.vo.Option;

@Service
public class OptionServiceImple implements OptionService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private OptionDao optionDao;
	
	@Override
	public ArrayList<Option> selectCartOption(int prodNo) {
		return optionDao.selectCartOption(sqlSession, prodNo);
	}

}
