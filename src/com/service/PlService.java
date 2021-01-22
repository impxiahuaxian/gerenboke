package com.service;

import com.pojo.Pl;
import com.pojo.PlExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PlService {
    int countByExample(PlExample example);

    int deleteByExample(PlExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Pl record);

    int insertSelective(Pl record);

    List<Pl> selectByExample(PlExample example);

    Pl selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Pl record, @Param("example") PlExample example);

    int updateByExample(@Param("record") Pl record, @Param("example") PlExample example);

    int updateByPrimaryKeySelective(Pl record);

    int updateByPrimaryKey(Pl record);
}
