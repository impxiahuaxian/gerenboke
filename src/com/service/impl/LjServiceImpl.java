package com.service.impl;

import com.dao.LjMapper;
import com.pojo.Lj;
import com.pojo.LjExample;
import com.service.LjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LjServiceImpl implements LjService {
    @Autowired
    private LjMapper ljMapper;
    @Override
    public int countByExample(LjExample example) {
        return 0;
    }

    @Override
    public int deleteByExample(LjExample example) {
        return 0;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return ljMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Lj record) {
        return 0;
    }

    @Override
    public int insertSelective(Lj record) {
        return ljMapper.insertSelective(record);
    }

    @Override
    public List<Lj> selectByExample(LjExample example) {
        return null;
    }

    @Override
    public Lj selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByExampleSelective(Lj record, LjExample example) {
        return 0;
    }

    @Override
    public int updateByExample(Lj record, LjExample example) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeySelective(Lj record) {
        return ljMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Lj record) {
        return 0;
    }
}
