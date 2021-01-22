package com.dao;

import com.pojo.Bk;
import com.pojo.BkExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface BkMapper {
    int countByExample(BkExample example);

    int deleteByExample(BkExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Bk record);

    int insertSelective(Bk record);

    List<Bk> selectByExampleWithBLOBs(BkExample example);

    List<Bk> selectByExample(BkExample example);

    Bk selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Bk record, @Param("example") BkExample example);

    int updateByExampleWithBLOBs(@Param("record") Bk record, @Param("example") BkExample example);

    int updateByExample(@Param("record") Bk record, @Param("example") BkExample example);

    int updateByPrimaryKeySelective(Bk record);

    int updateByPrimaryKeyWithBLOBs(Bk record);

    int updateByPrimaryKey(Bk record);
}