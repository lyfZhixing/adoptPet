package com.adoptPet.userInterface.mapper;

import com.adoptPet.userInterface.entity.Adoptinfo;
import com.adoptPet.userInterface.entity.AdoptinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdoptinfoMapper {
    long countByExample(AdoptinfoExample example);

    int deleteByExample(AdoptinfoExample example);

    int deleteByPrimaryKey(String serialno);

    int insert(Adoptinfo record);

    int insertSelective(Adoptinfo record);

    List<Adoptinfo> selectByExampleWithBLOBs(AdoptinfoExample example);

    List<Adoptinfo> selectByExample(AdoptinfoExample example);

    Adoptinfo selectByPrimaryKey(String serialno);

    int updateByExampleSelective(@Param("record") Adoptinfo record, @Param("example") AdoptinfoExample example);

    int updateByExampleWithBLOBs(@Param("record") Adoptinfo record, @Param("example") AdoptinfoExample example);

    int updateByExample(@Param("record") Adoptinfo record, @Param("example") AdoptinfoExample example);

    int updateByPrimaryKeySelective(Adoptinfo record);

    int updateByPrimaryKeyWithBLOBs(Adoptinfo record);

    int updateByPrimaryKey(Adoptinfo record);
}