package com.dao;

import com.pojo.Pl;
import com.pojo.PlExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface PlMapper {
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