package com.adoptPet.userInterface.mapper;

import com.adoptPet.userInterface.entity.Applyinfo;
import com.adoptPet.userInterface.entity.ApplyinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ApplyinfoMapper {
    long countByExample(ApplyinfoExample example);

    int deleteByExample(ApplyinfoExample example);

    int deleteByPrimaryKey(String serialno);

    int insert(Applyinfo record);

    int insertSelective(Applyinfo record);

    List<Applyinfo> selectByExample(ApplyinfoExample example);

    Applyinfo selectByPrimaryKey(String serialno);

    int updateByExampleSelective(@Param("record") Applyinfo record, @Param("example") ApplyinfoExample example);

    int updateByExample(@Param("record") Applyinfo record, @Param("example") ApplyinfoExample example);

    int updateByPrimaryKeySelective(Applyinfo record);

    int updateByPrimaryKey(Applyinfo record);
}