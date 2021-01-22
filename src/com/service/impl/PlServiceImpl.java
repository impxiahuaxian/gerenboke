package com.service.impl;

import com.dao.PlMapper;
import com.pojo.Pl;
import com.pojo.PlExample;
import com.service.PlService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.ApplicationScope;

import java.lang.management.PlatformLoggingMXBean;
import java.util.List;

@Service
public class PlServiceImpl implements PlService {
    @Autowired
    private PlMapper plMapper;
    @Override
    public int countByExample(PlExample example) {
        return 0;
    }

    @Override
    public int deleteByExample(PlExample example) {
        return 0;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return plMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Pl record) {
        return 0;
    }

    @Override
    public int insertSelective(Pl record) {
        return plMapper.insertSelective(record);
    }

    @Override
    public List<Pl> selectByExample(PlExample example) {
        return null;
    }

    @Override
    public Pl selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByExampleSelective(Pl record, PlExample example) {
        return 0;
    }

    @Override
    public int updateByExample(Pl record, PlExample example) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeySelective(Pl record) {
        return plMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Pl record) {
        return 0;
    }
}
