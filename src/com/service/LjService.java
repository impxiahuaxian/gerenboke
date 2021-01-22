package com.service;

import com.pojo.Lj;
import com.pojo.LjExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface LjService {
    int countByExample(LjExample example);

    int deleteByExample(LjExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Lj record);

    int insertSelective(Lj record);

    List<Lj> selectByExample(LjExample example);

    Lj selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Lj record, @Param("example") LjExample example);

    int updateByExample(@Param("record") Lj record, @Param("example") LjExample example);

    int updateByPrimaryKeySelective(Lj record);

    int updateByPrimaryKey(Lj record);
}
