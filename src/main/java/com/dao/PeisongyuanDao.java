package com.dao;

import com.entity.PeisongyuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.PeisongyuanVO;
import com.entity.view.PeisongyuanView;


/**
 * 配送员
 * 
 * @author 
 * @email 
 * @date 2022-03-05 21:46:10
 */
public interface PeisongyuanDao extends BaseMapper<PeisongyuanEntity> {
	
	List<PeisongyuanVO> selectListVO(@Param("ew") Wrapper<PeisongyuanEntity> wrapper);
	
	PeisongyuanVO selectVO(@Param("ew") Wrapper<PeisongyuanEntity> wrapper);
	
	List<PeisongyuanView> selectListView(@Param("ew") Wrapper<PeisongyuanEntity> wrapper);

	List<PeisongyuanView> selectListView(Pagination page,@Param("ew") Wrapper<PeisongyuanEntity> wrapper);
	
	PeisongyuanView selectView(@Param("ew") Wrapper<PeisongyuanEntity> wrapper);
	

}
