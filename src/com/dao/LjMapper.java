package com.dao;

import com.pojo.Lj;
import com.pojo.LjExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface LjMapper {
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