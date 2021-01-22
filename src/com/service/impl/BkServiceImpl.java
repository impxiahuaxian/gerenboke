package com.service.impl;

import com.dao.BkMapper;
import com.pojo.Bk;
import com.pojo.BkExample;
import com.service.BkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BkServiceImpl implements BkService {
    @Autowired
    private BkMapper bkMapper;
    @Override
    public int countByExample(BkExample example) {
        return 0;
    }

    @Override
    public int deleteByExample(BkExample example) {
        return 0;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return bkMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Bk record) {
        return 0;
    }

    @Override
    public int insertSelective(Bk record) {
        return bkMapper.insertSelective(record);
    }

    @Override
    public List<Bk> selectByExampleWithBLOBs(BkExample example) {
        return null;
    }

    @Override
    public List<Bk> selectByExample(BkExample example) {
        return null;
    }

    @Override
    public Bk selectByPrimaryKey(Integer id) {
        return bkMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByExampleSelective(Bk record, BkExample example) {
        return 0;
    }

    @Override
    public int updateByExampleWithBLOBs(Bk record, BkExample example) {
        return 0;
    }

    @Override
    public int updateByExample(Bk record, BkExample example) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeySelective(Bk record) {
        return bkMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKeyWithBLOBs(Bk record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Bk record) {
        return 0;
    }
}
